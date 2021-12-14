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
.balign 16

.globl _LN_ROE@0
_LN_ROE@0:
push ebp
mov ebp, esp
sub esp, 160
push ebx
push esi
.Lt_00DA:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-132], eax
push offset _Lt_0122
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-136], eax
mov word ptr [_MOUSE_WIDTH], 320
mov word ptr [_MOUSE_HEIGHT], 240
mov word ptr [_SCREEN_WIDTH], 320
mov word ptr [_SCREEN_HEIGHT], 240
mov word ptr [_DISPLAY_WIDTH], 640
mov word ptr [_DISPLAY_HEIGHT], 480
.Lt_00DC:
push 0
push 0
push 16
push 32
push 17
call _fb_GfxScreen@20
test eax, eax
je .Lt_00DD
lea eax, [.Lt_00DD]
push eax
lea eax, [.Lt_00DC]
push eax
push offset _Lt_00C1
push 336
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00DD:
.Lt_00DE:
push 30
push 40
call _fb_Width@8
test eax, eax
je .Lt_00DF
lea eax, [.Lt_00DF]
push eax
lea eax, [.Lt_00DE]
push eax
push offset _Lt_00C1
push 337
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00DF:
push 0
push 1
call _fb_GfxPageSet
add esp, 8
push -1
push 0
movsx eax, word ptr [_MOUSE_HEIGHT]
sar eax, 1
push eax
movsx eax, word ptr [_MOUSE_WIDTH]
sar eax, 1
push eax
call _fb_SetMouse@16
push 0
push 3
push offset _Lt_00E0
push -1
push offset _THISPATH_STR
call _fb_StrAssign@20
push 0
push 7
push offset _Lt_00E1
push -1
push offset _FONTPATH_STR
call _fb_StrAssign@20
push 0
push 7
push offset _Lt_00E2
push -1
push offset _LOGOPATH_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_00E3
push -1
push offset _SPRITEPATH_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00E4
push -1
push offset _PALPATH_STR
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_00E5
push -1
push offset _MAPPATH_STR
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_00E6
push -1
push offset _HELPPATH_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_00E7
push -1
push offset _HELPFILENAME_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_00E8
push -1
push offset _MAP_STR
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_00E9
push -1
push offset _LVUPPATH_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_00EA
push -1
push offset _LVUP_STR
call _fb_StrAssign@20
push offset _DB_INPUT
call _WIPE_TABLE@4
push offset _DB_QUEUE
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 17
push offset _Lt_00EB
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _LOAD_NAMES_FROM_FILE@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push offset _Lt_00C4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 13
push offset _Lt_00ED
push -1
push -1
push offset _PALPATH_STR
push -1
push offset _THISPATH_STR
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _PAL_LOAD@8
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push offset _CLV_GLYPH
call _CLV_GLYPH_INI@4
push offset _CLV_GLYPH
call _CLV_GLYPH_INI@4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 26
push offset _Lt_00F1
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
push 1
push 0
push offset _CLV_FONT
call _CLV_FONT_LOAD@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 23
push offset _Lt_00F3
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
push 1
push 1
push offset _CLV_FONT
call _CLV_FONT_LOAD@16
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [_SCREEN_HEIGHT]
push eax
movsx eax, word ptr [_SCREEN_WIDTH]
push eax
push offset _CLV_BUFFER
call _CLV_BUFFER_INI@12
push dword ptr [_CLV_BUFFER_SPLASH]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 15
push offset _Lt_00F5
push -1
push -1
push offset _LOGOPATH_STR
push -1
push offset _THISPATH_STR
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign@20
lea eax, [ebp-108]
push eax
call _trk_png_load@4
mov dword ptr [_GTMP], eax
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
push -2147483648
push 0
push 0
mov eax, dword ptr [_GTMP]
mov dword ptr [ebp-116], eax
push offset _Lt_00C1
push 377
push dword ptr [ebp-116]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0124
jmp eax
.Lt_0124:
mov eax, dword ptr [ebp-116]
push dword ptr [eax+12]
mov eax, dword ptr [_GTMP]
mov dword ptr [ebp-112], eax
push offset _Lt_00C1
push 377
push dword ptr [ebp-112]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0125
jmp eax
.Lt_0125:
mov eax, dword ptr [ebp-112]
push dword ptr [eax+8]
call _fb_GfxImageCreate@20
mov dword ptr [_GTMPT], eax
push dword ptr [_GTMPT]
push dword ptr [_GTMP]
push 76
push 0
push dword ptr [_CLV_BUFFER_SPLASH]
push offset _CLV_BUFFER
call _CLV_DRAW_IMAGE@24
push dword ptr [_GTMP]
call _trk_png_destroy@4
push dword ptr [_GTMPT]
call _fb_GfxImageDestroy@4
push dword ptr [_CLV_BUFFER_BAR]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 26
push offset _Lt_00FB
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
lea eax, [ebp-128]
push eax
push 192
push 0
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_BAR]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-128]
push eax
call _fb_StrDelete@4
.Lt_00FD:
mov dword ptr [_RESTART_ROE], 0
mov eax, dword ptr [_CLV_BUFFER_SPLASH]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_0100:
push -1
call _fb_Inkey@0
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_0101
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_0100
.Lt_0101:
call _LN_STARTUP@0
.Lt_0102:
push -1
call _fb_Inkey@0
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_0103
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_0102
.Lt_0103:
push 0
push -1
push 0
push 1
push offset _Lt_0104
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_StrLcase2@8
push eax
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0105:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_0109
jmp .Lt_0106
.Lt_0109:
push 2
push offset _Lt_0104
push -1
push 0
push offset _C_STR
call _fb_StrLcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_YM_SI]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
movsx esi, word ptr [_STATX_SI]
add esi, 5
cmp ecx, esi
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .Lt_010B
mov ebx, dword ptr [_CLV_BUFFER_TITLE]
mov dword ptr [_CLV_BUFFER_FOCUS], ebx
call _LN_STARTTITLE@0
.Lt_010B:
.Lt_010A:
mov dword ptr [_EXITCOMMAND], 0
.Lt_010C:
call _LN_COMMAND@0
mov dword ptr [_EXITCOMMAND3], 0
.Lt_010F:
call _LN_COMMAND3@0
push 2
push offset _Lt_0104
push -1
push 0
push offset _C_STR
call _fb_StrLcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_YM_SI]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
movsx esi, word ptr [_STATX_SI]
add esi, 5
cmp ecx, esi
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .Lt_0113
mov dword ptr [_EXITCOMMAND3], -1
mov dword ptr [_EXITCOMMAND], -1
.Lt_0113:
.Lt_0112:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_0115
jmp .Lt_0110
.Lt_0115:
.Lt_0111:
push 1
push -1
push offset _C_STR
push 2
push offset _Lt_0117
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea ebx, [ebp-160]
push ebx
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 4
push offset _Lt_0116
call _fb_StrAllocTempDescZEx@8
push eax
push 1
call _fb_StrInstr@12
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_EXITCOMMAND3]
not ebx
and eax, ebx
jne .Lt_010F
.Lt_0110:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_011A
jmp .Lt_010D
.Lt_011A:
.Lt_010E:
push 1
push -1
push offset _C_STR
push 2
push offset _Lt_0117
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea ebx, [ebp-148]
push ebx
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 3
push offset _Lt_011B
call _fb_StrAllocTempDescZEx@8
push eax
push 1
call _fb_StrInstr@12
test eax, eax
jg .Lt_010C
.Lt_010D:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_011E
jmp .Lt_0106
.Lt_011E:
call _LN_MAIN@0
cmp dword ptr [_RESTART_ROE], 0
je .Lt_0120
jmp .Lt_0106
.Lt_0120:
.Lt_0107:
jmp .Lt_0105
.Lt_0106:
.Lt_00FF:
jmp .Lt_00FD
.Lt_00FE:
.Lt_00DB:
push dword ptr [ebp-136]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-132]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STARTUP@0
_LN_STARTUP@0:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.Lt_012F:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-64], eax
push offset _Lt_01BB
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-68], eax
push offset _DB_NAMES
call _WIPE_TABLE@4
push offset _NAMES_BUFFER
call _WIPE_TABLE@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 17
push offset _Lt_0131
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _LOAD_NAMES_FROM_FILE@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0135:
push 0
push 1
push 0
push 0
push 2
push -1
push offset _MAP_STR
push -1
push -1
push offset _MAPPATH_STR
push -1
push offset _THISPATH_STR
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_0136
lea eax, [.Lt_0136]
push eax
lea eax, [.Lt_0135]
push eax
push offset _Lt_00C1
push 436
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0136:
push 1
call _fb_FileInput@4
push 0
push -1
push offset _MAPNAME_STR
call _fb_InputString@12
push 1
call _fb_FileInput@4
push offset _AA_SI
call _fb_InputShort@4
push 1
call _fb_FileInput@4
push offset _DD_SI
call _fb_InputShort@4
mov word ptr [_D_SIA+2], 0
mov word ptr [_D_SIA+4], 0
mov word ptr [_D_SIA+8], 0
mov word ptr [_D_SIA+10], -1
mov word ptr [_D_SIA+14], 1
mov word ptr [_D_SIA+16], 0
mov word ptr [_D_SIA+20], 0
mov word ptr [_D_SIA+22], 1
mov word ptr [_D_SIA+26], -1
mov word ptr [_D_SIA+28], 0
movsx eax, word ptr [_AA_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_01BD]
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
fistp word ptr [_EX_SI]
movsx eax, word ptr [_DD_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_01BD]
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
fistp word ptr [_DY_SI]
mov word ptr [_MDX_SI], 20
mov word ptr [_MDY_SI], 15
mov word ptr [_TEXTCOLOR_SI], 0
push dword ptr [_Lt_01BE]
pop dword ptr [_TEXTDELAY_SF]
mov word ptr [_WIN_SI], 4
push 0
call _fb_Timer@0
sub esp,8
fstp qword ptr [esp]
call _fb_Randomize@12
push offset _.Lt_00C7
call _fb_DataRestore@4
mov word ptr [_TTT_SI], 0
mov ax, word ptr [_WIN_SI]
mov word ptr [ebp-72], ax
jmp .Lt_0138
.Lt_013B:
movsx eax, word ptr [_TTT_SI]
sal eax, 1
dec eax
mov dword ptr [ebp-76], eax
push offset _Lt_00C1
push 474
mov eax, offset _WIN_SIA + 32
push dword ptr [eax]
mov eax, offset _WIN_SIA + 28
push dword ptr [eax]
push dword ptr [ebp-76]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_01BF
jmp eax
.Lt_01BF:
mov eax, dword ptr [ebp-76]
sal eax, 1
add eax, dword ptr [_WIN_SIA]
lea ebx, [eax]
push ebx
call _fb_DataReadShort@4
movsx ebx, word ptr [_TTT_SI]
sal ebx, 1
mov dword ptr [ebp-80], ebx
push offset _Lt_00C1
push 475
mov ebx, offset _WIN_SIA + 32
push dword ptr [ebx]
mov ebx, offset _WIN_SIA + 28
push dword ptr [ebx]
push dword ptr [ebp-80]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_01C0
jmp eax
.Lt_01C0:
mov eax, dword ptr [ebp-80]
sal eax, 1
add eax, dword ptr [_WIN_SIA]
lea ebx, [eax]
push ebx
call _fb_DataReadShort@4
.Lt_0139:
movsx ebx, word ptr [_TTT_SI]
inc ebx
mov word ptr [_TTT_SI], bx
.Lt_0138:
movsx ebx, word ptr [_TTT_SI]
movsx eax, word ptr [ebp-72]
cmp ebx, eax
jle .Lt_013B
.Lt_013A:
.Lt_0140:
push 0
push 2
push 0
push 0
push 2
push -1
push offset _LVUP_STR
push -1
push -1
push offset _LVUPPATH_STR
push -1
push offset _THISPATH_STR
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_0141
lea eax, [.Lt_0141]
push eax
lea eax, [.Lt_0140]
push eax
push offset _Lt_00C1
push 490
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0141:
mov word ptr [_T_SI], 0
.Lt_0145:
push 2
call _fb_FileInput@4
movsx eax, word ptr [_T_SI]
mov dword ptr [ebp-72], eax
push offset _Lt_00C1
push 492
push 64
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C1
jmp eax
.Lt_01C1:
mov eax, dword ptr [ebp-72]
lea ebx, [_L_SIA+eax*2]
push ebx
call _fb_InputShort@4
.Lt_0143:
movsx ebx, word ptr [_T_SI]
inc ebx
mov word ptr [_T_SI], bx
.Lt_0142:
movsx ebx, word ptr [_T_SI]
cmp ebx, 64
jle .Lt_0145
.Lt_0144:
.Lt_0147:
push 2
call _fb_FileClose@4
test eax, eax
je .Lt_0148
lea eax, [.Lt_0148]
push eax
lea eax, [.Lt_0147]
push eax
push offset _Lt_00C1
push 494
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0148:
push 0
push 9
push offset _Lt_0149
push -1
push offset _CTRL_STR
call _fb_StrAssign@20
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
fmul qword ptr [_Lt_01BD]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_01C3]
fcomp qword ptr [_Lt_01BD]
fnstsw ax
test ah, 0b01000000
jz .Lt_014B
push 0
push 5
push offset _Lt_014C
push -1
push offset _CTRL_STR
call _fb_StrConcatAssign@20
.Lt_014B:
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-72], ax
jmp .Lt_014E
.Lt_0151:
push 1
call _fb_FileInput@4
push 0
push -1
push offset _R_STR
call _fb_InputString@12
push 0
push -1
push offset _BG_STR
push 1
call _fb_FileLineInput@16
push 0
push -1
push offset _FG_STR
push 1
call _fb_FileLineInput@16
push 0
push -1
push offset _RG_STR
push 1
call _fb_FileLineInput@16
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-76], ax
jmp .Lt_0153
.Lt_0156:
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
imul eax, 5
add eax, -4
push eax
push offset _BG_STR
call _fb_StrMid@12
push eax
push -1
push offset _RBG_STR
call _fb_StrAssign@20
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
imul eax, 5
add eax, -4
push eax
push offset _FG_STR
call _fb_StrMid@12
push eax
push -1
push offset _RFG_STR
call _fb_StrAssign@20
push 4
movsx eax, word ptr [_TX_SI]
imul eax, 5
add eax, -4
push eax
push offset _RG_STR
call _fb_StrMid@12
push eax
call _fb_VAL@4
fstp dword ptr [_RID_SF]
push 0
push 5
push offset _Lt_0158
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-80], eax
push offset _Lt_00C1
push 507
push 65536
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C4
jmp eax
.Lt_01C4:
mov eax, dword ptr [ebp-80]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _RBG_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-80], ebx
push offset _Lt_00C1
push 507
push 65536
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C5
jmp eax
.Lt_01C5:
mov eax, dword ptr [ebp-80]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrConcatAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-84], eax
push offset _Lt_00C1
push 508
push 65536
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C6
jmp eax
.Lt_01C6:
mov eax, dword ptr [ebp-84]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0158
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-84], ebx
push offset _Lt_00C1
push 508
push 65536
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C7
jmp eax
.Lt_01C7:
mov eax, dword ptr [ebp-84]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrConcatAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-84], eax
push offset _Lt_00C1
push 508
push 65536
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C8
jmp eax
.Lt_01C8:
mov eax, dword ptr [ebp-84]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrConcatAssign@20
push 0
push 9
push offset _Lt_015B
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-88], ebx
push offset _Lt_00C1
push 509
push 65536
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C9
jmp eax
.Lt_01C9:
mov eax, dword ptr [ebp-88]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssign@20
push 5
push offset _Lt_0158
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_015D
.Lt_015E:
call _LN_PRFLBLNK@0
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_015D:
push 5
push offset _Lt_0160
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_015F
.Lt_0161:
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_0162
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0163
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0160
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLESSSPD_SF]
push 5
push offset _Lt_0166
push -1
push offset _MAPNAME_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0165
.Lt_0167:
fld dword ptr [_PRFLIDTY_SF]
fcomp dword ptr [_Lt_01C2]
fnstsw ax
test ah, 0b01000000
jz .Lt_0169
push 0
push 5
push offset _Lt_016A
push -1
push offset _PRFLACTN_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
.Lt_0169:
.Lt_0168:
.Lt_0165:
.Lt_0164:
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_015F:
push 5
push offset _Lt_016C
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_016B
.Lt_016D:
call _LN_PRFLBLNK@0
push 0
push 5
push offset _Lt_016C
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_016C
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLIDTY_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_016B:
push 5
push offset _Lt_016F
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_016E
.Lt_0170:
call _LN_PRFLBLNK@0
push 0
push 4
push offset _Lt_0171
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0160
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_016F
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D1]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D1]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_016E:
push 5
push offset _Lt_0173
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0172
.Lt_0174:
call _LN_PRFLBLNK@0
push 0
push 8
push offset _Lt_0175
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0176
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
fcomp qword ptr [_Lt_01D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0178
push 0
push 5
push offset _Lt_0179
push -1
push offset _PRFLACTN_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
.Lt_0178:
.Lt_0177:
push 0
push 5
push offset _Lt_0173
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D3]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D3]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLSTRMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_0172:
push 5
push offset _Lt_017B
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_017A
.Lt_017C:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_017D
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_017E
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_017B
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLEXP_SF]
push dword ptr [_Lt_01D7]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01D8]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_01D9]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_017A:
push 5
push offset _Lt_0180
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_017F
.Lt_0181:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_0182
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 21
push offset _Lt_0183
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0180
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D7]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01DA]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D7]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01DB]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_017F:
push 5
push offset _Lt_0185
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0184
.Lt_0186:
call _LN_PRFLBLNK@0
push 0
push 13
push offset _Lt_0187
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0188
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0185
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01DC]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01DD]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01DE]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01DF]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01DC]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01DD]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01E0]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01E1]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_0184:
push 5
push offset _Lt_018A
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0189
.Lt_018B:
call _LN_PRFLBLNK@0
push 0
push 14
push offset _Lt_018C
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0188
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
fstp dword ptr [_RR_SF]
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_01E2]
fnstsw ax
test ah, 0b01000001
setz al
shr eax, 1
sbb eax, eax
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_01E3]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_018E
push 0
push 5
push offset _Lt_0179
push -1
push offset _PRFLACTN_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
.Lt_018E:
.Lt_018D:
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_01E3]
fnstsw ax
test ah, 0b01000001
setz al
shr eax, 1
sbb eax, eax
fld dword ptr [_RR_SF]
fcomp dword ptr [_Lt_01C2]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0190
push 0
push 5
push offset _Lt_0191
push -1
push offset _PRFLACTN_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
.Lt_0190:
.Lt_018F:
push 0
push 5
push offset _Lt_018A
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01E4]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01DF]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01E4]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01E5]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_0189:
push 5
push offset _Lt_0193
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0192
.Lt_0194:
call _LN_PRFLBLNK@0
push 0
push 5
push offset _Lt_0195
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0193
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_01C2]
fnstsw ax
test ah, 0b01000000
jz .Lt_0197
.Lt_0198:
push 0
push 5
push offset _Lt_0199
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
jmp .Lt_0196
.Lt_0197:
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_01CF]
fnstsw ax
test ah, 0b01000000
jz .Lt_019A
.Lt_019B:
push 0
push 5
push offset _Lt_019C
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
jmp .Lt_0196
.Lt_019A:
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_01CE]
fnstsw ax
test ah, 0b01000000
jz .Lt_019D
.Lt_019E:
push 0
push 5
push offset _Lt_019F
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
.Lt_019D:
.Lt_0196:
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01E4]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01E4]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01E4]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01E4]
pop dword ptr [_PRFLSTRMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_0192:
push 5
push offset _Lt_01A1
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_01A0
.Lt_01A2:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_01A3
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_01A4
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
fmul qword ptr [_Lt_01BD]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_01C3]
fcomp qword ptr [_Lt_01BD]
fnstsw ax
test ah, 0b01000000
jz .Lt_01A6
push 0
push 9
push offset _Lt_01A7
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_01A8
push -1
push offset _PRFLACTN_STR
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 1
call _fb_MKL@4
push eax
push -1
push -1
push 1
call _fb_MKL@4
push eax
push -1
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
.Lt_01A6:
.Lt_01A5:
push 0
push 5
push offset _Lt_01A1
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01E6]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_01E7]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_01A0:
push 5
push offset _Lt_01AD
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_01AC
.Lt_01AE:
call _LN_PRFLBLNK@0
push 0
push 15
push offset _Lt_01AF
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
fmul qword ptr [_Lt_01BD]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fcomp qword ptr [_Lt_01C3]
fnstsw ax
test ah, 0b01000000
jz .Lt_01B1
push 0
push 5
push offset _Lt_01B2
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
jmp .Lt_01B0
.Lt_01B1:
push 0
push 5
push offset _Lt_01B3
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
.Lt_01B0:
push 0
push 5
push offset _Lt_01AD
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01E8]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01E8]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_015C
.Lt_01AC:
push 5
push offset _Lt_01B5
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_01B4
.Lt_01B6:
call _LN_PRFLBLNK@0
push 0
push 12
push offset _Lt_01B7
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_01B5
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01E9]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01E9]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLSET@0
.Lt_01B4:
.Lt_015C:
.Lt_0154:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_0153:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-76]
cmp eax, ebx
jle .Lt_0156
.Lt_0155:
.Lt_014F:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_014E:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-72]
cmp ebx, eax
jle .Lt_0151
.Lt_0150:
.Lt_01B8:
push 1
call _fb_FileClose@4
test eax, eax
je .Lt_01B9
lea eax, [.Lt_01B9]
push eax
lea eax, [.Lt_01B8]
push eax
push offset _Lt_00C1
push 749
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_01B9:
.Lt_0130:
push dword ptr [ebp-68]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-64]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STARTTITLE@0
_LN_STARTTITLE@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01EE:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_020E
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_01F0:
mov eax, dword ptr [_CLV_BUFFER_TITLE]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
mov word ptr [_COLR_SI], 15
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_TITLE@8
mov word ptr [_COLR_SI], 11
push 0
push -1
push 1
call _fb_SPACE@4
push eax
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push 0
push 29
push offset _Lt_01F3
push -1
push offset _TEXTS_STR
call _fb_StrConcatAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 0
push -1
push 1
call _fb_SPACE@4
push eax
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push 0
push 35
push offset _Lt_01F4
push -1
push offset _TEXTS_STR
call _fb_StrConcatAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 1
push 0
call _fb_PrintVoid@8
push 0
push -1
push 1
call _fb_SPACE@4
push eax
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push 0
push 38
push offset _Lt_01F5
push -1
push offset _TEXTS_STR
call _fb_StrConcatAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 0
push -1
push 1
call _fb_SPACE@4
push eax
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push 0
push 38
push offset _Lt_01F6
push -1
push offset _TEXTS_STR
call _fb_StrConcatAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 0
push -1
push 1
call _fb_SPACE@4
push eax
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push 0
push 37
push offset _Lt_01F7
push -1
push offset _TEXTS_STR
call _fb_StrConcatAssign@20
push 1
push 0
call _fb_PrintVoid@8
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 0
push -1
push 1
call _fb_SPACE@4
push eax
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push 0
push 37
push offset _Lt_01F8
push -1
push offset _TEXTS_STR
call _fb_StrConcatAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 0
push -1
push 1
call _fb_SPACE@4
push eax
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push 0
push 32
push offset _Lt_01F9
push -1
push offset _TEXTS_STR
call _fb_StrConcatAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 0
push -1
push 1
call _fb_SPACE@4
push eax
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push 0
push 23
push offset _Lt_01FA
push -1
push offset _TEXTS_STR
call _fb_StrConcatAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 0
push 0
push -1
push 1
push 17
call _fb_Locate@20
mov word ptr [_COLR_SI], 9
push 0
push 8
push offset _Lt_01FB
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 1
push 0
call _fb_PrintVoid@8
push 0
push 12
push offset _Lt_01FC
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 1
push 0
call _fb_PrintVoid@8
push 0
push 11
push offset _Lt_01FD
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 1
push 0
call _fb_PrintVoid@8
push 0
push 8
push offset _Lt_01FE
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _LN_COMMANDWAIT@0
push 2
push offset _Lt_01FF
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0200
push -1
push offset _C_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
movsx eax, word ptr [_YM_SI]
cmp eax, 21
sete al
shr eax, 1
sbb eax, eax
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
or ebx, eax
je .Lt_0202
call _LN_SCREENSET@0
mov dword ptr [_RESTART_ROE], 1
jmp .Lt_01F1
.Lt_0202:
.Lt_0201:
push 2
push offset _Lt_0203
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0204
push -1
push offset _C_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
movsx eax, word ptr [_YM_SI]
cmp eax, 23
sete al
shr eax, 1
sbb eax, eax
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
or ebx, eax
je .Lt_0206
call _LN_SCREENSET@0
push 0
call _fb_End@4
.Lt_0206:
.Lt_0205:
push 2
push offset _Lt_0207
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0208
push -1
push offset _C_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
movsx eax, word ptr [_YM_SI]
cmp eax, 17
sete al
shr eax, 1
sbb eax, eax
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
or ebx, eax
je .Lt_020A
call _LN_STARTHELP@0
.Lt_020A:
.Lt_0209:
.Lt_01F2:
push 2
push offset _Lt_020B
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_020C
push -1
push offset _C_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
movsx eax, word ptr [_YM_SI]
cmp eax, 19
sete al
shr eax, 1
sbb eax, eax
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
not eax
and ebx, eax
jne .Lt_01F0
.Lt_01F1:
.Lt_01EF:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STARTHELP@0
_LN_STARTHELP@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_0224:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_024A
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
mov eax, dword ptr [_CLV_BUFFER_HELP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_0228:
push 0
push 63
push 0
push 0
push 2
push -1
push offset _HELPFILENAME_STR
push -1
push -1
push offset _HELPPATH_STR
push -1
push offset _THISPATH_STR
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_0229
lea eax, [.Lt_0229]
push eax
lea eax, [.Lt_0228]
push eax
push offset _Lt_00C1
push 815
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0229:
.Lt_022A:
push 63
call _fb_FileEof@4
not eax
test eax, eax
je .Lt_022B
push 0
push -1
push offset _R_STR
push 63
call _fb_FileLineInput@16
push 13
push offset _Lt_022C
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_022E
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _LN_TITLE@8
push 0
push -1
push 0
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push offset _R_STR
call _fb_StrAssign@20
.Lt_022E:
.Lt_022D:
push 11
push offset _Lt_022F
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0231
push 0
push 0
push -1
push 1
push 22
call _fb_Locate@20
mov word ptr [_COLR_SI], 9
push 0
push 12
push offset _Lt_01FC
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push 1
push 0
call _fb_PrintVoid@8
push 0
push 9
push offset _Lt_0232
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
.Lt_0233:
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _LN_COMMANDWAIT@0
push 2
push offset _Lt_0104
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0236
push -1
push offset _C_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
movsx eax, word ptr [_YM_SI]
cmp eax, 24
sete al
shr eax, 1
sbb eax, eax
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
or ebx, eax
je .Lt_0238
.Lt_0239:
push 63
call _fb_FileClose@4
test eax, eax
je .Lt_023A
lea eax, [.Lt_023A]
push eax
lea eax, [.Lt_0239]
push eax
push offset _Lt_00C1
push 835
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_023A:
jmp .Lt_0225
.Lt_0238:
.Lt_0237:
.Lt_0235:
push 2
push offset _Lt_020B
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_020C
push -1
push offset _C_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
movsx eax, word ptr [_YM_SI]
cmp eax, 22
sete al
shr eax, 1
sbb eax, eax
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
or ebx, eax
not ebx
test ebx, ebx
jne .Lt_0233
.Lt_0234:
push 0
push -1
push 0
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push offset _R_STR
call _fb_StrAssign@20
.Lt_0231:
.Lt_0230:
push 6
push offset _Lt_023B
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_023D
.Lt_023E:
push 63
call _fb_FileClose@4
test eax, eax
je .Lt_023F
lea eax, [.Lt_023F]
push eax
lea eax, [.Lt_023E]
push eax
push offset _Lt_00C1
push 842
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_023F:
push 0
push -1
push 0
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push offset _R_STR
call _fb_StrAssign@20
jmp .Lt_0225
.Lt_023D:
.Lt_023C:
push 8
push offset _Lt_0240
push -1
push 7
push offset _R_STR
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0242
push -1
push offset _R_STR
call _fb_StrLen@8
add eax, -7
push eax
push offset _R_STR
call _fb_RIGHT@8
push eax
call _fb_VAL@4
fistp word ptr [_COLR_SI]
push 0
push -1
push 0
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push offset _R_STR
call _fb_StrAssign@20
.Lt_0242:
.Lt_0241:
push 0
push -1
push offset _R_STR
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push -1
push 0
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0244
push -1
push 0
call _fb_SPACE@4
push eax
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0246
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
jmp .Lt_0245
.Lt_0246:
push 1
push 0
call _fb_PrintVoid@8
.Lt_0245:
.Lt_0244:
.Lt_0243:
jmp .Lt_022A
.Lt_022B:
.Lt_0247:
push 63
call _fb_FileClose@4
test eax, eax
je .Lt_0248
lea eax, [.Lt_0248]
push eax
lea eax, [.Lt_0247]
push eax
push offset _Lt_00C1
push 860
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0248:
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _CINPUT@0
.Lt_0225:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-28]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_MAIN@0
_LN_MAIN@0:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0256:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0295
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-12], ax
jmp .Lt_0259
.Lt_025C:
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-16], ax
jmp .Lt_025E
.Lt_0261:
mov word ptr [_A_SI], 0
mov word ptr [_D_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 872
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0297
jmp eax
.Lt_0297:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_G_DFA+eax+72]
fcomp qword ptr [_Lt_0298]
fnstsw ax
test ah, 0b01000000
jz .Lt_0264
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 873
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0299
jmp eax
.Lt_0299:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [_Lt_01C3]
push dword ptr [_Lt_01C3+4]
pop dword ptr [_G_DFA+eax+76]
pop dword ptr [_G_DFA+eax+72]
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 874
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_029A
jmp eax
.Lt_029A:
mov eax, dword ptr [ebp-28]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_GETACTION@0
push 5
push offset _Lt_0267
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_DIS_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0269
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_0269:
.Lt_0268:
push 4
push 1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-32], ebx
push offset _Lt_00C1
push 880
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_029B
jmp eax
.Lt_029B:
mov eax, dword ptr [ebp-32]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 1819042167
jne .Lt_026D
.Lt_026E:
jmp .Lt_026B
.Lt_026D:
cmp dword ptr [ebp-36], 1919185011
jne .Lt_026F
.Lt_0270:
call _LN_CRTNSPDR@0
jmp .Lt_026B
.Lt_026F:
cmp dword ptr [ebp-36], 1600284023
jne .Lt_0271
.Lt_0272:
call _LN_CRTNWEB@0
jmp .Lt_026B
.Lt_0271:
cmp dword ptr [ebp-36], 2036495460
jne .Lt_0273
.Lt_0274:
call _LN_CRTNDTBY@0
jmp .Lt_026B
.Lt_0273:
cmp dword ptr [ebp-36], 1819112039
jne .Lt_0275
.Lt_0276:
call _LN_CRTNGRML@0
jmp .Lt_026B
.Lt_0275:
cmp dword ptr [ebp-36], 1953196147
jne .Lt_0277
.Lt_0278:
call _LN_CRTNSHKT@0
jmp .Lt_026B
.Lt_0277:
cmp dword ptr [ebp-36], 1684499813
jne .Lt_0279
.Lt_027A:
call _LN_CRTNEMGD@0
jmp .Lt_026B
.Lt_0279:
cmp dword ptr [ebp-36], 1601203561
jne .Lt_027B
.Lt_027C:
call _LN_CRTNIMP@0
jmp .Lt_026B
.Lt_027B:
cmp dword ptr [ebp-36], 1701996902
jne .Lt_027D
.Lt_027F:
call _LN_CRTNFIRE@0
jmp .Lt_026B
.Lt_027D:
cmp dword ptr [ebp-36], 2019847792
jne .Lt_0280
.Lt_0281:
call _LN_CRTNPNDX@0
jmp .Lt_026B
.Lt_0280:
cmp dword ptr [ebp-36], 1937007459
jne .Lt_0282
.Lt_0284:
call _LN_CRTNCCTS@0
jmp .Lt_026B
.Lt_0282:
cmp dword ptr [ebp-36], 1919183970
jne .Lt_0285
.Lt_0286:
call _LN_CRTNBLDR@0
jmp .Lt_026B
.Lt_0285:
cmp dword ptr [ebp-36], 1953723748
jne .Lt_0287
.Lt_0288:
call _LN_CRTNDUST@0
.Lt_0287:
.Lt_026B:
.Lt_0264:
.Lt_0263:
.Lt_025F:
movsx eax, word ptr [_TY_SI]
inc eax
mov word ptr [_TY_SI], ax
.Lt_025E:
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [ebp-16]
cmp eax, ebx
jle .Lt_0261
.Lt_0260:
.Lt_025A:
movsx ebx, word ptr [_TX_SI]
inc ebx
mov word ptr [_TX_SI], bx
.Lt_0259:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [ebp-12]
cmp ebx, eax
jle .Lt_025C
.Lt_025B:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-12], ax
jmp .Lt_028A
.Lt_028D:
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-16], ax
jmp .Lt_028F
.Lt_0292:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 912
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_029C
jmp eax
.Lt_029C:
mov eax, dword ptr [ebp-20]
imul eax, 136
push dword ptr [_Lt_0298]
push dword ptr [_Lt_0298+4]
pop dword ptr [_G_DFA+eax+76]
pop dword ptr [_G_DFA+eax+72]
.Lt_0290:
movsx eax, word ptr [_TY_SI]
inc eax
mov word ptr [_TY_SI], ax
.Lt_028F:
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [ebp-16]
cmp eax, ebx
jle .Lt_0292
.Lt_0291:
.Lt_028B:
movsx ebx, word ptr [_TX_SI]
inc ebx
mov word ptr [_TX_SI], bx
.Lt_028A:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [ebp-12]
cmp ebx, eax
jle .Lt_028D
.Lt_028C:
.Lt_0257:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_COMMAND@0
_LN_COMMAND@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_029F:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_02A2
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_CLV_BUFFER_PORTAL]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
mov ax, word ptr [_EX_SI]
mov word ptr [_TX_SI], ax
mov ax, word ptr [_DY_SI]
mov word ptr [_TY_SI], ax
push 1
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _LN_COMMAND2@0
.Lt_02A0:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_COMMAND2@0
_LN_COMMAND2@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_02A4:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_02A9
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push dword ptr [_CLV_BUFFER_MENU]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 24
push 2
call _FRAME_TITLE@8
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_02A7
mov eax, dword ptr [_CLV_BUFFER_STATUS]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
mov word ptr [_STATX_SI], 24
call _LN_STATUS@0
.Lt_02A7:
.Lt_02A6:
.Lt_02A5:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_COMMAND3@0
_LN_COMMAND3@0:
push ebp
mov ebp, esp
sub esp, 200
push ebx
push esi
.Lt_02AB:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-180], eax
push offset _Lt_031C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-184], eax
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push 5
push offset _Lt_02AD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_02AF:
push 0
push 0
push 1
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push 24
push offset _NAMES_BUFFER
call _fb_ArrayRedimObj
add esp, 28
test eax, eax
je .Lt_02B0
lea eax, [.Lt_02B0]
push eax
lea eax, [.Lt_02AF]
push eax
push offset _Lt_00C1
push 947
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_02B0:
push 0
push 1
push offset _Lt_0000
push -1
mov dword ptr [ebp-16], 0
push offset _Lt_00C1
push 947
mov eax, offset _NAMES_BUFFER + 32
push dword ptr [eax]
mov eax, offset _NAMES_BUFFER + 28
push dword ptr [eax]
push dword ptr [ebp-16]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_031E
jmp eax
.Lt_031E:
mov eax, dword ptr [ebp-16]
imul eax, 24
add eax, dword ptr [_NAMES_BUFFER]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
mov dword ptr [ebp-20], 0
push offset _Lt_00C1
push 947
mov ebx, offset _NAMES_BUFFER + 32
push dword ptr [ebx]
mov ebx, offset _NAMES_BUFFER + 28
push dword ptr [ebx]
push dword ptr [ebp-20]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_031F
jmp eax
.Lt_031F:
mov eax, dword ptr [ebp-20]
imul eax, 24
add eax, dword ptr [_NAMES_BUFFER]
lea ebx, [eax+12]
push ebx
call _fb_StrAssign@20
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 12
mov dword ptr [ebp-52], 2
mov dword ptr [ebp-48], 18
lea ebx, [ebp-44]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 6
rep stosd
pop edi
.Lt_02B3:
push 0
push 0
push 0
push 0
push 2
push -1
push -1
push 12
lea ebx, [ebp-68]
push ebx
call _fb_ArrayRedimEx
add esp, 36
test eax, eax
je .Lt_02B4
lea eax, [.Lt_02B4]
push eax
lea eax, [.Lt_02B3]
push eax
push offset _Lt_00C1
push 948
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_02B4:
mov word ptr [ebp-72], 0
mov word ptr [ebp-76], 0
mov word ptr [ebp-80], 0
lea eax, [ebp-140]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 15
rep stosd
pop edi
pop eax
lea eax, [ebp-140]
mov dword ptr [ebp-176], eax
lea eax, [ebp-140]
mov dword ptr [ebp-172], eax
mov dword ptr [ebp-168], 60
mov dword ptr [ebp-164], 12
mov dword ptr [ebp-160], 1
mov dword ptr [ebp-156], 49
mov dword ptr [ebp-152], 5
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 4
call _CINPUT@0
movsx eax, word ptr [_YM_SI]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_XM_SI]
cmp ebx, 24
setge bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
movsx ebx, word ptr [_XM_SI]
cmp ebx, 30
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_02B7
mov word ptr [_TITLED_SI], 1
call _LN_COMMAND2@0
jmp .Lt_02B6
.Lt_02B7:
mov word ptr [_TITLED_SI], 0
call _LN_COMMAND2@0
.Lt_02B6:
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
push 7
push offset _Lt_02BA
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02B9
.Lt_02BB:
push offset _MAP_BUFFER
lea eax, [ebp-12]
push eax
call _SAVEGAME_SAVE@8
push 0
push 2
push offset _Lt_0104
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_STARTTITLE@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-176]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-68]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_02AC
jmp .Lt_02B8
.Lt_02B9:
push 7
push offset _Lt_02BD
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02BC
.Lt_02BE:
push offset _MAP_BUFFER
lea eax, [ebp-12]
push eax
call _SAVEGAME_LOAD@8
push 0
push 2
push offset _Lt_0104
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_STARTTITLE@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-176]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-68]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_02AC
.Lt_02BC:
.Lt_02B8:
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_02C0
mov word ptr [_STATX_SI], 24
call _LN_GETACTION@0
push 7
push offset _Lt_02C1
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_YM_SI]
cmp ebx, 5
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
cmp ecx, 26
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .Lt_02C3
push 0
push 2
push offset _Lt_02C4
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_PAYLEVELUP@0
mov dword ptr [_EXITCOMMAND3], -1
lea ebx, [ebp-176]
push ebx
call _fb_ArrayDestructStr@4
lea ebx, [ebp-68]
push ebx
call _fb_ArrayStrErase@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .Lt_02AC
.Lt_02C3:
.Lt_02C2:
push 5
push offset _Lt_02C7
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02C6
.Lt_02C8:
mov word ptr [_D_SI], 0
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-176]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-68]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_02AC
jmp .Lt_02C5
.Lt_02C6:
push 7
push offset _Lt_02CA
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02C9
.Lt_02CB:
mov word ptr [_D_SI], 1
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-176]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-68]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_02AC
jmp .Lt_02C5
.Lt_02C9:
push 7
push offset _Lt_02CD
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02CC
.Lt_02CE:
mov word ptr [_D_SI], 2
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-176]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-68]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_02AC
jmp .Lt_02C5
.Lt_02CC:
push 7
push offset _Lt_02D0
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02CF
.Lt_02D1:
mov word ptr [_D_SI], 3
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-176]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-68]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_02AC
jmp .Lt_02C5
.Lt_02CF:
push 7
push offset _Lt_02D3
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02D2
.Lt_02D4:
mov word ptr [_D_SI], 4
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-176]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-68]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_02AC
.Lt_02D2:
.Lt_02C5:
movsx eax, word ptr [_YM_SI]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_XM_SI]
movsx ecx, word ptr [_STATX_SI]
inc ecx
cmp ebx, ecx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
movsx ebx, word ptr [_D_SI]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_02D6
mov word ptr [_D_SI], 0
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_02D6:
.Lt_02D5:
movsx ebx, word ptr [_YM_SI]
cmp ebx, 9
sete bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_XM_SI]
movsx ecx, word ptr [_STATX_SI]
inc ecx
cmp eax, ecx
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
movsx eax, word ptr [_LB_SI]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
movsx eax, word ptr [_D_SI]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_02D8
mov word ptr [_D_SI], 1
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_02D8:
.Lt_02D7:
movsx eax, word ptr [_YM_SI]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_XM_SI]
movsx ecx, word ptr [_STATX_SI]
add ecx, 2
cmp ebx, ecx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
movsx ebx, word ptr [_D_SI]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_02DA
mov word ptr [_D_SI], 2
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_02DA:
.Lt_02D9:
movsx ebx, word ptr [_YM_SI]
cmp ebx, 11
sete bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_XM_SI]
movsx ecx, word ptr [_STATX_SI]
inc ecx
cmp eax, ecx
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
movsx eax, word ptr [_LB_SI]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
movsx eax, word ptr [_D_SI]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_02DC
mov word ptr [_D_SI], 3
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_02DC:
.Lt_02DB:
movsx eax, word ptr [_YM_SI]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_XM_SI]
movsx ecx, word ptr [_STATX_SI]
cmp ebx, ecx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
movsx ebx, word ptr [_D_SI]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_02DE
mov word ptr [_D_SI], 4
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_02DE:
.Lt_02DD:
push 5
push offset _Lt_0267
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_DIS_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
not eax
test eax, eax
je .Lt_02E0
movsx eax, word ptr [_LB_SI]
cmp eax, -1
jne .Lt_02E2
movsx eax, word ptr [_XM_SI]
movsx ebx, word ptr [_STATX_SI]
cmp eax, ebx
setge al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_XM_SI]
movsx ecx, word ptr [_STATX_SI]
add ecx, 14
cmp ebx, ecx
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
movsx ebx, word ptr [_YM_SI]
cmp ebx, 14
setge bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
movsx ebx, word ptr [_YM_SI]
cmp ebx, 23
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_02E4
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_STATX_SI]
sub ebx, eax
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0320]
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
fistp word ptr [ebp-72]
movsx ebx, word ptr [_YM_SI]
add ebx, -14
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0320]
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
fistp word ptr [ebp-76]
movsx ebx, word ptr [ebp-72]
movsx eax, word ptr [ebp-76]
imul eax, 5
add ebx, eax
inc ebx
mov word ptr [ebp-80], bx
movsx ebx, word ptr [ebp-80]
cmp ebx, 1
setge bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [ebp-80]
push eax
fild dword ptr [esp]
add esp, 4
push -1
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
mov dword ptr [ebp-188], eax
push offset _Lt_00C1
push 1054
push 65536
push dword ptr [ebp-188]
fstp qword ptr [ebp-196]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0321
jmp eax
.Lt_0321:
mov eax, dword ptr [ebp-188]
imul eax, 108
lea ecx, [_E_STRA+eax+12]
push ecx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fld qword ptr [ebp-196]
fcompp
fnstsw ax
test ah, 0b01000001
setnz al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_02E7
push 0
push -1
push 4
movsx eax, word ptr [ebp-80]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-200], eax
push offset _Lt_00C1
push 1055
push 65536
push dword ptr [ebp-200]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0324
jmp eax
.Lt_0324:
mov eax, dword ptr [ebp-200]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _AA_STR
call _fb_StrAssign@20
push -1
push offset _AA_STR
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_02EA
push 0
push -1
push offset _AA_STR
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
jmp .Lt_02E9
.Lt_02EA:
push 0
push 5
push offset _Lt_0158
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
.Lt_02E9:
push 0
push 3
push offset _Lt_02EB
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_02E7:
.Lt_02E6:
.Lt_02E4:
.Lt_02E3:
jmp .Lt_02E1
.Lt_02E2:
push 0
push -1
push offset _ACTION_STR
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-188], eax
push offset _Lt_00C1
push 1068
push 65536
push dword ptr [ebp-188]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0325
jmp eax
.Lt_0325:
mov eax, dword ptr [ebp-188]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
push -1
lea ebx, [ebp-116]
push ebx
call _fb_StrAssign@20
push 0
push -1
push -1
lea ebx, [ebp-116]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign@20
lea eax, [ebp-104]
push eax
call _fb_CVL@4
test eax, eax
jle .Lt_02EE
mov word ptr [ebp-80], 1
lea eax, [ebp-104]
push eax
call _fb_CVL@4
mov word ptr [ebp-192], ax
jmp .Lt_02F0
.Lt_02F3:
push 0
push -1
push 4
movsx eax, word ptr [ebp-80]
sal eax, 2
add eax, -3
push eax
lea eax, [ebp-116]
push eax
call _fb_StrMid@12
push eax
push -1
push offset _AA_STR
call _fb_StrAssign@20
push -1
lea eax, [ebp-140]
push eax
push -1
push offset _AA_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02F5
push 0
push -1
movsx eax, word ptr [ebp-80]
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
lea eax, [ebp-104]
push eax
call _fb_CVL@4
inc eax
mov word ptr [ebp-80], ax
.Lt_02F5:
.Lt_02F4:
.Lt_02F1:
movsx eax, word ptr [ebp-80]
inc eax
mov word ptr [ebp-80], ax
.Lt_02F0:
movsx eax, word ptr [ebp-80]
movsx ebx, word ptr [ebp-192]
cmp eax, ebx
jle .Lt_02F3
.Lt_02F2:
lea ebx, [ebp-128]
push ebx
call _fb_CVL@4
test eax, eax
jle .Lt_02F7
push 7
push offset _Lt_02FA
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02F9
.Lt_02FB:
push 0
push -1
lea eax, [ebp-128]
push eax
call _fb_CVL@4
dec eax
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0326]
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
fmul qword ptr [_Lt_0326]
lea eax, [ebp-128]
push eax
fstp qword ptr [ebp-196]
call _fb_CVL@4
add eax, 8
mov ecx, 5
cdq
idiv ecx
mov eax, edx
push eax
fild dword ptr [esp]
add esp, 4
fadd qword ptr [ebp-196]
fadd qword ptr [_Lt_01C3]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
jmp .Lt_02F8
.Lt_02F9:
push 7
push offset _Lt_02FD
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02FC
.Lt_02FE:
push 0
push -1
lea eax, [ebp-128]
push eax
call _fb_CVL@4
dec eax
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0326]
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
fmul qword ptr [_Lt_0326]
lea eax, [ebp-128]
push eax
fstp qword ptr [ebp-196]
call _fb_CVL@4
add eax, 10
mov ecx, 5
cdq
idiv ecx
mov eax, edx
push eax
fild dword ptr [esp]
add esp, 4
fadd qword ptr [ebp-196]
fadd qword ptr [_Lt_01C3]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
jmp .Lt_02F8
.Lt_02FC:
push 7
push offset _Lt_0300
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02FF
.Lt_0301:
push 0
push -1
lea eax, [ebp-128]
push eax
call _fb_CVL@4
add eax, -5
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
lea eax, [ebp-128]
push eax
call _fb_CVL@4
cmp eax, 1
jge .Lt_0303
push 0
push -1
lea eax, [ebp-128]
push eax
call _fb_CVL@4
lea ebx, [ebp-104]
push ebx
mov ebx, eax
call _fb_CVL@4
add ebx, eax
push ebx
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
.Lt_0303:
.Lt_0302:
jmp .Lt_02F8
.Lt_02FF:
push 7
push offset _Lt_0305
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0304
.Lt_0306:
push 0
push -1
lea eax, [ebp-128]
push eax
call _fb_CVL@4
add eax, 5
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
lea eax, [ebp-128]
push eax
call _fb_CVL@4
lea ebx, [ebp-104]
push ebx
mov ebx, eax
call _fb_CVL@4
cmp ebx, eax
jle .Lt_0308
push 0
push -1
lea eax, [ebp-128]
push eax
call _fb_CVL@4
lea ebx, [ebp-104]
push ebx
mov ebx, eax
call _fb_CVL@4
sub ebx, eax
push ebx
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
.Lt_0308:
.Lt_0307:
.Lt_0304:
.Lt_02F8:
push 0
push -1
push 4
lea eax, [ebp-128]
push eax
call _fb_CVL@4
sal eax, 2
add eax, -3
push eax
lea eax, [ebp-116]
push eax
call _fb_StrMid@12
push eax
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
.Lt_02F7:
.Lt_02F6:
.Lt_02EE:
.Lt_02ED:
.Lt_02E1:
.Lt_02E0:
.Lt_02DF:
call _LN_PUTACTION@0
call _fb_Timer@0
fstp dword ptr [_ST_SF]
.Lt_02C0:
.Lt_02BF:
mov word ptr [_STATX_SI], 24
push 2
push offset _Lt_0104
push -1
push 0
push offset _C_STR
call _fb_StrLcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_YM_SI]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
movsx esi, word ptr [_STATX_SI]
cmp ecx, esi
setge cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
movsx ecx, word ptr [_XM_SI]
movsx esi, word ptr [_STATX_SI]
add esi, 6
cmp ecx, esi
setle cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .Lt_030A
call _LN_STARTTITLE@0
lea ebx, [ebp-176]
push ebx
call _fb_ArrayDestructStr@4
lea ebx, [ebp-68]
push ebx
call _fb_ArrayStrErase@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .Lt_02AC
.Lt_030A:
.Lt_0309:
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_YM_SI]
cmp eax, 2
setge al
shr eax, 1
sbb eax, eax
and ebx, eax
movsx eax, word ptr [_YM_SI]
cmp eax, 22
setle al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_030C
movsx eax, word ptr [_XM_SI]
cmp eax, 2
setge al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_XM_SI]
cmp ebx, 22
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_030E
movsx ebx, word ptr [_YM_SI]
add ebx, -2
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0320]
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
movsx ebx, word ptr [_DY_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fxch st(1)
faddp
fadd qword ptr [_Lt_0329]
fistp word ptr [_TEMPY_SI]
movsx ebx, word ptr [_XM_SI]
add ebx, -2
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0320]
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
movsx ebx, word ptr [_EX_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fxch st(1)
faddp
fadd qword ptr [_Lt_0329]
fistp word ptr [_TEMPX_SI]
mov bx, word ptr [_TEMPY_SI]
mov word ptr [_DY_SI], bx
mov bx, word ptr [_TEMPX_SI]
mov word ptr [_EX_SI], bx
push 0
push 3
push offset _Lt_02EB
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_030E:
.Lt_030D:
.Lt_030C:
.Lt_030B:
movsx ebx, word ptr [_EX_SI]
cmp ebx, 1
jge .Lt_0310
.Lt_0311:
mov word ptr [_EX_SI], 1
jmp .Lt_030F
.Lt_0310:
movsx ebx, word ptr [_EX_SI]
movsx eax, word ptr [_AA_SI]
cmp ebx, eax
jle .Lt_0312
.Lt_0313:
mov ax, word ptr [_AA_SI]
mov word ptr [_EX_SI], ax
.Lt_0312:
.Lt_030F:
movsx eax, word ptr [_DY_SI]
cmp eax, 1
jge .Lt_0315
.Lt_0316:
mov word ptr [_DY_SI], 1
jmp .Lt_0314
.Lt_0315:
movsx eax, word ptr [_DY_SI]
movsx ebx, word ptr [_DD_SI]
cmp eax, ebx
jle .Lt_0317
.Lt_0318:
mov bx, word ptr [_DD_SI]
mov word ptr [_DY_SI], bx
.Lt_0317:
.Lt_0314:
movsx ebx, word ptr [_RB_SI]
cmp ebx, -1
jne .Lt_031A
push 0
push 2
push offset _Lt_0117
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_031A:
.Lt_0319:
lea ebx, [ebp-176]
push ebx
call _fb_ArrayDestructStr@4
lea ebx, [ebp-68]
push ebx
call _fb_ArrayStrErase@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_02AC:
push dword ptr [ebp-184]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-180]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_NAMES@0
_LN_NAMES@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0357:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_035A
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_0358:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_SWAPDATA@0
_LN_SWAPDATA@0:
push ebp
mov ebp, esp
sub esp, 64
push ebx
push esi
.Lt_035C:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_0385
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-40], eax
mov word ptr [_T_SI], 0
.Lt_0361:
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-52], ebx
push offset _Lt_00C1
push 1142
push 4
push dword ptr [ebp-52]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0387
jmp eax
.Lt_0387:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C1
push 1142
push 4
push dword ptr [ebp-56]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0388
jmp eax
.Lt_0388:
mov eax, dword ptr [ebp-56]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-60], ebx
push offset _Lt_00C1
push 1142
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0389
jmp eax
.Lt_0389:
mov eax, dword ptr [ebp-60]
imul eax, 9
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-64], ebx
push offset _Lt_00C1
push 1142
push 8
push dword ptr [ebp-64]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038A
jmp eax
.Lt_038A:
add ebx, dword ptr [ebp-64]
imul ebx, 12
lea eax, [_E_STRA+ebx]
push eax
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 1142
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038B
jmp eax
.Lt_038B:
mov eax, dword ptr [ebp-44]
imul eax, 9
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-48], ebx
push offset _Lt_00C1
push 1142
push 8
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038C
jmp eax
.Lt_038C:
add ebx, dword ptr [ebp-48]
imul ebx, 12
lea eax, [_E_STRA+ebx]
push eax
call _fb_StrSwap@24
.Lt_035F:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_035E:
movsx eax, word ptr [_T_SI]
cmp eax, 1
jle .Lt_0361
.Lt_0360:
push 0
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1144
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038D
jmp eax
.Lt_038D:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _TEMP1_STR
call _fb_StrAssign@20
push 0
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-8], ebx
push offset _Lt_00C1
push 1145
push 4
push dword ptr [ebp-8]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038E
jmp eax
.Lt_038E:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 1145
push 4
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038F
jmp eax
.Lt_038F:
mov eax, dword ptr [ebp-12]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-16], ebx
push offset _Lt_00C1
push 1145
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0390
jmp eax
.Lt_0390:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _TEMP2_STR
call _fb_StrAssign@20
push 0
push -1
push offset _TEMP2_STR
push 0
push -1
push offset _TEMP1_STR
call _fb_StrSwap@24
push offset _TEMP1_STR
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 1147
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0391
jmp eax
.Lt_0391:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
push offset _TEMP2_STR
push 4
push 1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 1148
push 4
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0392
jmp eax
.Lt_0392:
mov eax, dword ptr [ebp-24]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 1148
push 4
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0393
jmp eax
.Lt_0393:
mov eax, dword ptr [ebp-28]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-32], ebx
push offset _Lt_00C1
push 1148
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0394
jmp eax
.Lt_0394:
mov eax, dword ptr [ebp-32]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
mov word ptr [_T_SI], 3
.Lt_0373:
push 0
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-52], eax
push offset _Lt_00C1
push 1150
push 4
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0395
jmp eax
.Lt_0395:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C1
push 1150
push 4
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0396
jmp eax
.Lt_0396:
mov eax, dword ptr [ebp-56]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-60], ebx
push offset _Lt_00C1
push 1150
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0397
jmp eax
.Lt_0397:
mov eax, dword ptr [ebp-60]
imul eax, 9
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-64], ebx
push offset _Lt_00C1
push 1150
push 8
push dword ptr [ebp-64]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0398
jmp eax
.Lt_0398:
add ebx, dword ptr [ebp-64]
imul ebx, 12
lea eax, [_E_STRA+ebx]
push eax
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 1150
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0399
jmp eax
.Lt_0399:
mov eax, dword ptr [ebp-44]
imul eax, 9
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-48], ebx
push offset _Lt_00C1
push 1150
push 8
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039A
jmp eax
.Lt_039A:
add ebx, dword ptr [ebp-48]
imul ebx, 12
lea eax, [_E_STRA+ebx]
push eax
call _fb_StrSwap@24
.Lt_0371:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0370:
movsx eax, word ptr [_T_SI]
cmp eax, 4
jle .Lt_0373
.Lt_0372:
mov word ptr [_T_SI], 0
.Lt_037D:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 1153
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039B
jmp eax
.Lt_039B:
mov eax, dword ptr [ebp-44]
imul eax, 17
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-48], ebx
push offset _Lt_00C1
push 1153
push 16
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039C
jmp eax
.Lt_039C:
add ebx, dword ptr [ebp-48]
push dword ptr [_G_DFA+ebx*8+4]
push dword ptr [_G_DFA+ebx*8]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-52], eax
push offset _Lt_00C1
push 1153
push 4
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039D
jmp eax
.Lt_039D:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C1
push 1153
push 4
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039E
jmp eax
.Lt_039E:
mov eax, dword ptr [ebp-56]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-60], ebx
push offset _Lt_00C1
push 1153
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039F
jmp eax
.Lt_039F:
mov eax, dword ptr [ebp-60]
imul eax, 17
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-64], ebx
push offset _Lt_00C1
push 1153
push 16
push dword ptr [ebp-64]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A0
jmp eax
.Lt_03A0:
add ebx, dword ptr [ebp-64]
movsx eax, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add eax, esi
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 1153
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A1
jmp eax
.Lt_03A1:
mov eax, dword ptr [ebp-44]
imul eax, 17
movsx esi, word ptr [_T_SI]
mov dword ptr [ebp-48], esi
push offset _Lt_00C1
push 1153
push 16
push dword ptr [ebp-48]
mov esi, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A2
jmp eax
.Lt_03A2:
add esi, dword ptr [ebp-48]
push dword ptr [_G_DFA+ebx*8]
push dword ptr [_G_DFA+ebx*8+4]
pop dword ptr [_G_DFA+esi*8+4]
pop dword ptr [_G_DFA+esi*8]
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
mov dword ptr [ebp-52], esi
push offset _Lt_00C1
push 1153
push 4
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A3
jmp eax
.Lt_03A3:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C1
push 1153
push 4
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A4
jmp eax
.Lt_03A4:
mov eax, dword ptr [ebp-56]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-60], ebx
push offset _Lt_00C1
push 1153
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A5
jmp eax
.Lt_03A5:
mov eax, dword ptr [ebp-60]
imul eax, 17
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-64], ebx
push offset _Lt_00C1
push 1153
push 16
push dword ptr [ebp-64]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A6
jmp eax
.Lt_03A6:
add ebx, dword ptr [ebp-64]
pop dword ptr [_G_DFA+ebx*8]
pop dword ptr [_G_DFA+ebx*8+4]
.Lt_037B:
movsx ebx, word ptr [_T_SI]
inc ebx
mov word ptr [_T_SI], bx
.Lt_037A:
movsx ebx, word ptr [_T_SI]
cmp ebx, 16
jle .Lt_037D
.Lt_037C:
.Lt_035D:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-36]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTACK@0
_LN_ATTACK@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_03A7:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_03C4
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 1159
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03C6
jmp eax
.Lt_03C6:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 1702127970
jne .Lt_03AC
.Lt_03AE:
call _LN_ATTKBITE@0
jmp .Lt_03AA
.Lt_03AC:
cmp dword ptr [ebp-16], 1751346800
jne .Lt_03AF
.Lt_03B1:
call _LN_ATTKPNCH@0
jmp .Lt_03AA
.Lt_03AF:
cmp dword ptr [ebp-16], 1801677163
jne .Lt_03B2
.Lt_03B4:
call _LN_ATTKKICK@0
jmp .Lt_03AA
.Lt_03B2:
cmp dword ptr [ebp-16], 1836019318
jne .Lt_03B5
.Lt_03B6:
call _LN_ATTKVNOM@0
jmp .Lt_03AA
.Lt_03B5:
cmp dword ptr [ebp-16], 1919379300
jne .Lt_03B7
.Lt_03B8:
call _LN_ATTKDGGR@0
jmp .Lt_03AA
.Lt_03B7:
cmp dword ptr [ebp-16], 1701538160
jne .Lt_03B9
.Lt_03BA:
call _LN_ATTKPIKE@0
jmp .Lt_03AA
.Lt_03B9:
cmp dword ptr [ebp-16], 1701999971
jne .Lt_03BB
.Lt_03BD:
call _LN_USECURE@0
jmp .Lt_03AA
.Lt_03BB:
cmp dword ptr [ebp-16], 1701996902
jne .Lt_03BE
.Lt_03BF:
call _LN_ATTKFIRE@0
jmp .Lt_03AA
.Lt_03BE:
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 1177
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03C7
jmp eax
.Lt_03C7:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 1178
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03C8
jmp eax
.Lt_03C8:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_03C0:
.Lt_03AA:
.Lt_03A8:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_BATTLE@0
_LN_BATTLE@0:
push ebp
mov ebp, esp
sub esp, 132
push ebx
push esi
.Lt_03C9:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_03ED
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1184
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03EF
jmp eax
.Lt_03EF:
mov eax, dword ptr [ebp-4]
imul eax, 136
movsx ebx, word ptr [_STRUSE_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+16]
fcompp
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-8], ebx
push offset _Lt_00C1
push 1184
push 65536
push dword ptr [ebp-8]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F0
jmp eax
.Lt_03F0:
mov eax, dword ptr [ebp-8]
imul eax, 136
movsx ecx, word ptr [_ESSSE_SI]
push ecx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+24]
fcompp
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_03CE
push offset _ATTACKPIC_STR
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 1186
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F1
jmp eax
.Lt_03F1:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push offset _ATTACKNAME_STR
push 4
push 5
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 1187
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F2
jmp eax
.Lt_03F2:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-32], ebx
push offset _Lt_00C1
push 1188
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F3
jmp eax
.Lt_03F3:
mov eax, dword ptr [ebp-32]
imul eax, 136
movsx ebx, word ptr [_STRUSE_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+16]
fsubrp
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 1188
push 65536
push dword ptr [ebp-28]
fstp qword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F4
jmp eax
.Lt_03F4:
mov eax, dword ptr [ebp-28]
imul eax, 136
push dword ptr [ebp-108]
push dword ptr [ebp-104]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-40], eax
push offset _Lt_00C1
push 1189
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F5
jmp eax
.Lt_03F5:
mov eax, dword ptr [ebp-40]
imul eax, 136
movsx ebx, word ptr [_ESSSE_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+24]
fsubrp
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-36], eax
push offset _Lt_00C1
push 1189
push 65536
push dword ptr [ebp-36]
fstp qword ptr [ebp-116]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F6
jmp eax
.Lt_03F6:
mov eax, dword ptr [ebp-36]
imul eax, 136
push dword ptr [ebp-116]
push dword ptr [ebp-112]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-44], ebx
push offset _Lt_00C1
push 1190
push 4
push dword ptr [ebp-44]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F7
jmp eax
.Lt_03F7:
mov eax, dword ptr [ebp-44]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-48], eax
push offset _Lt_00C1
push 1190
push 4
push dword ptr [ebp-48]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F8
jmp eax
.Lt_03F8:
mov eax, dword ptr [ebp-48]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-52], ebx
push offset _Lt_00C1
push 1190
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F9
jmp eax
.Lt_03F9:
mov eax, dword ptr [ebp-52]
imul eax, 136
fld qword ptr [_G_DFA+eax+120]
fistp word ptr [_EVADEATTACK]
movsx eax, word ptr [_EVADEATTACK]
push eax
fild dword ptr [esp]
add esp, 4
push dword ptr [_Lt_01C2]
fstp qword ptr [ebp-124]
call _fb_Rnd@4
movsx eax, word ptr [_EVADEATTACK]
neg eax
inc eax
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
fmulp
fadd qword ptr [ebp-124]
fistp word ptr [_EVADEATTACK]
movsx eax, word ptr [_ATTACKDAMAGE]
movsx ebx, word ptr [_EVADEATTACK]
imul eax, ebx
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-56], ebx
push offset _Lt_00C1
push 1192
push 4
push dword ptr [ebp-56]
mov ebx, eax
fstp qword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03FA
jmp eax
.Lt_03FA:
mov eax, dword ptr [ebp-56]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-60], eax
push offset _Lt_00C1
push 1192
push 4
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03FB
jmp eax
.Lt_03FB:
mov eax, dword ptr [ebp-60]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-64], ebx
push offset _Lt_00C1
push 1192
push 65536
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03FC
jmp eax
.Lt_03FC:
mov eax, dword ptr [ebp-64]
imul eax, 136
fld qword ptr [ebp-132]
fsub qword ptr [_G_DFA+eax+40]
fistp word ptr [_ATTACKBLOCKED]
movsx eax, word ptr [_ATTACKBLOCKED]
test eax, eax
jge .Lt_03DE
mov word ptr [_ATTACKBLOCKED], 0
.Lt_03DE:
movsx eax, word ptr [_ATTACKDAMAGE]
movsx ebx, word ptr [_EVADEATTACK]
neg ebx
inc ebx
imul eax, ebx
movsx ebx, word ptr [_ATTACKBLOCKED]
add eax, ebx
mov word ptr [_ATTACKDAMAGE], ax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-80], ebx
push offset _Lt_00C1
push 1195
push 4
push dword ptr [ebp-80]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0401
jmp eax
.Lt_0401:
mov eax, dword ptr [ebp-80]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-84], eax
push offset _Lt_00C1
push 1195
push 4
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0402
jmp eax
.Lt_0402:
mov eax, dword ptr [ebp-84]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-88], ebx
push offset _Lt_00C1
push 1195
push 65536
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0403
jmp eax
.Lt_0403:
mov eax, dword ptr [ebp-88]
imul eax, 136
movsx ebx, word ptr [_ATTACKDAMAGE]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+8]
fsubrp
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-68], ebx
push offset _Lt_00C1
push 1195
push 4
push dword ptr [ebp-68]
mov ebx, eax
fstp qword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0404
jmp eax
.Lt_0404:
mov eax, dword ptr [ebp-68]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-72], eax
push offset _Lt_00C1
push 1195
push 4
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0405
jmp eax
.Lt_0405:
mov eax, dword ptr [ebp-72]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-76], ebx
push offset _Lt_00C1
push 1195
push 65536
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0406
jmp eax
.Lt_0406:
mov eax, dword ptr [ebp-76]
imul eax, 136
push dword ptr [ebp-108]
push dword ptr [ebp-104]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
call _LN_BATTLEATTACK@0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-92], ebx
push offset _Lt_00C1
push 1197
push 4
push dword ptr [ebp-92]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0407
jmp eax
.Lt_0407:
mov eax, dword ptr [ebp-92]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-96], eax
push offset _Lt_00C1
push 1197
push 4
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0408
jmp eax
.Lt_0408:
mov eax, dword ptr [ebp-96]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-100], ebx
push offset _Lt_00C1
push 1197
push 65536
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0409
jmp eax
.Lt_0409:
mov eax, dword ptr [ebp-100]
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
fcomp qword ptr [_Lt_0298]
fnstsw ax
test ah, 0b01000001
jz .Lt_03E9
call _LN_VICTORY@0
.Lt_03E9:
.Lt_03E8:
.Lt_03D0:
.Lt_03CF:
jmp .Lt_03CD
.Lt_03CE:
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 1202
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_040B
jmp eax
.Lt_040B:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 1203
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_040C
jmp eax
.Lt_040C:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_03CD:
.Lt_03CA:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKBITE@0
_LN_ATTKBITE@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_040F:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0413
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
push 0
push 5
push offset _Lt_03AD
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_03AD
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 10
mov word ptr [_ESSSE_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1213
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0415
jmp eax
.Lt_0415:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0322]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0326]
fistp word ptr [_ATTACKDAMAGE]
mov word ptr [_STRDAMAGE_SI], 2
call _LN_BATTLE@0
.Lt_0410:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKPNCH@0
_LN_ATTKPNCH@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0416:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_041B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_03B0
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_03B0
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 12
mov word ptr [_ESSSE_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1224
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_041D
jmp eax
.Lt_041D:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_041E]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0320]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1225
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_041F
jmp eax
.Lt_041F:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0420]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_01BD]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0417:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKWSTF@0
_LN_ATTKWSTF@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0421:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0426
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_017E
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_017E
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 20
mov word ptr [_ESSSE_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1235
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0428
jmp eax
.Lt_0428:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0322]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0326]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1236
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0429
jmp eax
.Lt_0429:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_041E]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0322]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0422:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKKICK@0
_LN_ATTKKICK@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_042A:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_042F
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_03B3
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_03B3
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 14
mov word ptr [_ESSSE_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1246
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0431
jmp eax
.Lt_0431:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0326]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0322]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1247
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0432
jmp eax
.Lt_0432:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0433]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0320]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_042B:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKVNOM@0
_LN_ATTKVNOM@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0434:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0439
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_016A
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_016A
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 0
mov word ptr [_ESSSE_SI], 15
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1257
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_043B
jmp eax
.Lt_043B:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0322]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0433]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1258
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_043C
jmp eax
.Lt_043C:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0322]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_043D]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0435:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKDGGR@0
_LN_ATTKDGGR@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_043E:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0443
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_0179
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0179
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 18
mov word ptr [_ESSSE_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1268
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0445
jmp eax
.Lt_0445:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0322]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0420]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1269
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0446
jmp eax
.Lt_0446:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_043D]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_01C3]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_043F:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKPIKE@0
_LN_ATTKPIKE@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0447:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_044C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_0191
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0191
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 24
mov word ptr [_ESSSE_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1279
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_044E
jmp eax
.Lt_044E:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0320]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_044F]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1280
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0450
jmp eax
.Lt_0450:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0326]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0420]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0448:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKBURN@0
_LN_ATTKBURN@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0451:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_045A
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
push 0
push 5
push offset _Lt_0158
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0453
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 5
mov word ptr [_ESSSE_SI], 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1290
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_045C
jmp eax
.Lt_045C:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_01BD]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_044F]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1291
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_045D
jmp eax
.Lt_045D:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0322]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_045E]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
push 5
push offset _Lt_027E
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 1293
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_045F
jmp eax
.Lt_045F:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0458
call _LN_GONE@0
.Lt_0458:
.Lt_0457:
.Lt_0452:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKFIRE@0
_LN_ATTKFIRE@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0460:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0465
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_0158
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_027E
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 5
mov word ptr [_ESSSE_SI], 20
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1304
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0467
jmp eax
.Lt_0467:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_01BD]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_045E]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1305
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0468
jmp eax
.Lt_0468:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0322]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0469]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0461:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKWEB@0
_LN_ATTKWEB@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_046A:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_046E
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
push 0
push 5
push offset _Lt_0158
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_016F
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 22
mov word ptr [_ESSSE_SI], 0
mov word ptr [_ATTACKDAMAGE], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1316
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0470
jmp eax
.Lt_0470:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0326]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_045E]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_046B:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKTNGL@0
_LN_ATTKTNGL@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0471:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0476
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
push 0
push 5
push offset _Lt_0158
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0473
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 0
mov word ptr [_ESSSE_SI], 0
mov word ptr [_ATTACKDAMAGE], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1327
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0478
jmp eax
.Lt_0478:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_041E]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_043D]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0472:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKLASH@0
_LN_ATTKLASH@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0479:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_047F
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_0158
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_047B
push -1
push offset _ATTACKNAME_STR
call _fb_StrAssign@20
mov word ptr [_STRUSE_SI], 0
mov word ptr [_ESSSE_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1337
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0481
jmp eax
.Lt_0481:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0326]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0326]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1338
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0482
jmp eax
.Lt_0482:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0433]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0420]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_047A:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_USECURE@0
_LN_USECURE@0:
push ebp
mov ebp, esp
sub esp, 144
push ebx
push esi
.Lt_0483:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_04AE
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1344
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B0
jmp eax
.Lt_04B0:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0420]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0487
push 4
push offset _Lt_03BC
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 1346
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B1
jmp eax
.Lt_04B1:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_03BC
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 1347
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B2
jmp eax
.Lt_04B2:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 5
push offset _Lt_03BC
push -1
push offset _AA_STR
call _fb_StrAssign@20
call _LN_ATTACKUSING@0
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 1350
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B3
jmp eax
.Lt_04B3:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_04B4]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 1350
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-116]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B5
jmp eax
.Lt_04B5:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-116]
push dword ptr [ebp-112]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-44], ebx
push offset _Lt_00C1
push 1351
push 4
push dword ptr [ebp-44]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B6
jmp eax
.Lt_04B6:
mov eax, dword ptr [ebp-44]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-48], eax
push offset _Lt_00C1
push 1351
push 4
push dword ptr [ebp-48]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B7
jmp eax
.Lt_04B7:
mov eax, dword ptr [ebp-48]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-52], ebx
push offset _Lt_00C1
push 1351
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B8
jmp eax
.Lt_04B8:
mov eax, dword ptr [ebp-52]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-56], ebx
push offset _Lt_00C1
push 1351
push 65536
push dword ptr [ebp-56]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B9
jmp eax
.Lt_04B9:
mov eax, dword ptr [ebp-56]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fadd qword ptr [_G_DFA+ebx+8]
fadd qword ptr [_Lt_044F]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C1
push 1351
push 4
push dword ptr [ebp-32]
fstp qword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BA
jmp eax
.Lt_04BA:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-36], eax
push offset _Lt_00C1
push 1351
push 4
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BB
jmp eax
.Lt_04BB:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-40], ebx
push offset _Lt_00C1
push 1351
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BC
jmp eax
.Lt_04BC:
mov eax, dword ptr [ebp-40]
imul eax, 136
push dword ptr [ebp-124]
push dword ptr [ebp-120]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-72], ebx
push offset _Lt_00C1
push 1352
push 4
push dword ptr [ebp-72]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BD
jmp eax
.Lt_04BD:
mov eax, dword ptr [ebp-72]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-76], eax
push offset _Lt_00C1
push 1352
push 4
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BE
jmp eax
.Lt_04BE:
mov eax, dword ptr [ebp-76]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-80], ebx
push offset _Lt_00C1
push 1352
push 65536
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BF
jmp eax
.Lt_04BF:
mov eax, dword ptr [ebp-80]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-84], ebx
push offset _Lt_00C1
push 1352
push 65536
push dword ptr [ebp-84]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C0
jmp eax
.Lt_04C0:
mov eax, dword ptr [ebp-84]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fadd qword ptr [_G_DFA+ebx+16]
fadd qword ptr [_Lt_045E]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-60], eax
push offset _Lt_00C1
push 1352
push 4
push dword ptr [ebp-60]
fstp qword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C1
jmp eax
.Lt_04C1:
mov eax, dword ptr [ebp-60]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-64], eax
push offset _Lt_00C1
push 1352
push 4
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C2
jmp eax
.Lt_04C2:
mov eax, dword ptr [ebp-64]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-68], ebx
push offset _Lt_00C1
push 1352
push 65536
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C3
jmp eax
.Lt_04C3:
mov eax, dword ptr [ebp-68]
imul eax, 136
push dword ptr [ebp-132]
push dword ptr [ebp-128]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-88], ebx
push offset _Lt_00C1
push 1353
push 4
push dword ptr [ebp-88]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C4
jmp eax
.Lt_04C4:
mov eax, dword ptr [ebp-88]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-92], eax
push offset _Lt_00C1
push 1353
push 4
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C5
jmp eax
.Lt_04C5:
mov eax, dword ptr [ebp-92]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-96], ebx
push offset _Lt_00C1
push 1353
push 65536
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C6
jmp eax
.Lt_04C6:
mov eax, dword ptr [ebp-96]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_0298]
fnstsw ax
test ah, 0b01000001
jz .Lt_04A0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-136], ebx
push offset _Lt_00C1
push 1354
push 4
push dword ptr [ebp-136]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CA
jmp eax
.Lt_04CA:
mov eax, dword ptr [ebp-136]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-140], eax
push offset _Lt_00C1
push 1354
push 4
push dword ptr [ebp-140]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CB
jmp eax
.Lt_04CB:
mov eax, dword ptr [ebp-140]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-144], ebx
push offset _Lt_00C1
push 1354
push 65536
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CC
jmp eax
.Lt_04CC:
mov eax, dword ptr [ebp-144]
imul eax, 136
push dword ptr [_Lt_0298]
push dword ptr [_Lt_0298+4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_04A0:
.Lt_049F:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-100], ebx
push offset _Lt_00C1
push 1356
push 4
push dword ptr [ebp-100]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CD
jmp eax
.Lt_04CD:
mov eax, dword ptr [ebp-100]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-104], eax
push offset _Lt_00C1
push 1356
push 4
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CE
jmp eax
.Lt_04CE:
mov eax, dword ptr [ebp-104]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-108], ebx
push offset _Lt_00C1
push 1356
push 65536
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CF
jmp eax
.Lt_04CF:
mov eax, dword ptr [ebp-108]
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
fcomp qword ptr [_Lt_0298]
fnstsw ax
test ah, 0b01000001
jz .Lt_04A8
call _LN_VICTORY@0
.Lt_04A8:
.Lt_04A7:
.Lt_0489:
.Lt_0488:
jmp .Lt_0486
.Lt_0487:
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 1362
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04D0
jmp eax
.Lt_04D0:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 1363
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04D1
jmp eax
.Lt_04D1:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_04AA:
.Lt_04A9:
.Lt_0486:
.Lt_0484:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_USESLEP@0
_LN_USESLEP@0:
push ebp
mov ebp, esp
sub esp, 132
push ebx
push esi
.Lt_04D2:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0501
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1370
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0503
jmp eax
.Lt_0503:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0420]
fnstsw ax
test ah, 0b00000001
jnz .Lt_04D6
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 1372
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0504
jmp eax
.Lt_0504:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_04DB
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 1373
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0505
jmp eax
.Lt_0505:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 5
push offset _Lt_04DB
push -1
push offset _AA_STR
call _fb_StrAssign@20
call _LN_ATTACKUSING@0
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 1376
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0506
jmp eax
.Lt_0506:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_04B4]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 1376
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0507
jmp eax
.Lt_0507:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-120]
push dword ptr [ebp-116]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-32], ebx
push offset _Lt_00C1
push 1377
push 4
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0508
jmp eax
.Lt_0508:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-36], eax
push offset _Lt_00C1
push 1377
push 4
push dword ptr [ebp-36]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0509
jmp eax
.Lt_0509:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-40], ebx
push offset _Lt_00C1
push 1377
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050A
jmp eax
.Lt_050A:
mov eax, dword ptr [ebp-40]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0267
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-44], ebx
push offset _Lt_00C1
push 1378
push 4
push dword ptr [ebp-44]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050B
jmp eax
.Lt_050B:
mov eax, dword ptr [ebp-44]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-48], eax
push offset _Lt_00C1
push 1378
push 4
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050C
jmp eax
.Lt_050C:
mov eax, dword ptr [ebp-48]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-52], ebx
push offset _Lt_00C1
push 1378
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050D
jmp eax
.Lt_050D:
mov eax, dword ptr [ebp-52]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx esi, word ptr [_AA_SI]
imul eax, esi
add ebx, eax
mov dword ptr [ebp-56], ebx
push offset _Lt_00C1
push 1379
push 65536
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050E
jmp eax
.Lt_050E:
mov eax, dword ptr [ebp-56]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_043D]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fistp word ptr [_SLEPADD_SI]
mov ax, word ptr [_TX_SI]
mov word ptr [_TEMPTX_SI], ax
mov ax, word ptr [_TY_SI]
mov word ptr [_TEMPTY_SI], ax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-60], ebx
push offset _Lt_00C1
push 1382
push 4
push dword ptr [ebp-60]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050F
jmp eax
.Lt_050F:
mov eax, dword ptr [ebp-60]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
mov word ptr [_TX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
mov dword ptr [ebp-64], esi
push offset _Lt_00C1
push 1383
push 4
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0510
jmp eax
.Lt_0510:
mov eax, dword ptr [ebp-64]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
mov word ptr [_TY_SI], bx
call _LN_TEMPGET@0
push 5
push offset _Lt_0267
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_04E8
push 0
push 5
push offset _Lt_0267
push -1
push offset _TEMPACTION_STR
call _fb_StrAssign@20
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
fmul qword ptr [_Lt_041E]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
movsx eax, word ptr [_SLEPADD_SI]
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
faddp
fadd qword ptr [_Lt_0326]
fistp word ptr [_TEMPDIS_SI]
call _LN_TEMPPUT@0
.Lt_04E8:
.Lt_04E7:
mov ax, word ptr [_TEMPTX_SI]
mov word ptr [_TX_SI], ax
mov ax, word ptr [_TEMPTY_SI]
mov word ptr [_TY_SI], ax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-80], ebx
push offset _Lt_00C1
push 1392
push 4
push dword ptr [ebp-80]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0512
jmp eax
.Lt_0512:
mov eax, dword ptr [ebp-80]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-84], eax
push offset _Lt_00C1
push 1392
push 4
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0513
jmp eax
.Lt_0513:
mov eax, dword ptr [ebp-84]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-88], ebx
push offset _Lt_00C1
push 1392
push 65536
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0514
jmp eax
.Lt_0514:
mov eax, dword ptr [ebp-88]
imul eax, 136
fld qword ptr [_Lt_0515]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-68], ebx
push offset _Lt_00C1
push 1392
push 4
push dword ptr [ebp-68]
mov ebx, eax
fstp qword ptr [ebp-120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0516
jmp eax
.Lt_0516:
mov eax, dword ptr [ebp-68]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-72], eax
push offset _Lt_00C1
push 1392
push 4
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0517
jmp eax
.Lt_0517:
mov eax, dword ptr [ebp-72]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-76], ebx
push offset _Lt_00C1
push 1392
push 65536
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0518
jmp eax
.Lt_0518:
mov eax, dword ptr [ebp-76]
imul eax, 136
push dword ptr [ebp-120]
push dword ptr [ebp-116]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-92], ebx
push offset _Lt_00C1
push 1393
push 4
push dword ptr [ebp-92]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0519
jmp eax
.Lt_0519:
mov eax, dword ptr [ebp-92]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-96], eax
push offset _Lt_00C1
push 1393
push 4
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_051A
jmp eax
.Lt_051A:
mov eax, dword ptr [ebp-96]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-100], ebx
push offset _Lt_00C1
push 1393
push 65536
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_051B
jmp eax
.Lt_051B:
mov eax, dword ptr [ebp-100]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_0298]
fnstsw ax
test ah, 0b01000001
jz .Lt_04F3
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-124], ebx
push offset _Lt_00C1
push 1394
push 4
push dword ptr [ebp-124]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_051D
jmp eax
.Lt_051D:
mov eax, dword ptr [ebp-124]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-128], eax
push offset _Lt_00C1
push 1394
push 4
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_051E
jmp eax
.Lt_051E:
mov eax, dword ptr [ebp-128]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-132], ebx
push offset _Lt_00C1
push 1394
push 65536
push dword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_051F
jmp eax
.Lt_051F:
mov eax, dword ptr [ebp-132]
imul eax, 136
push dword ptr [_Lt_0298]
push dword ptr [_Lt_0298+4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_04F3:
.Lt_04F2:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-104], ebx
push offset _Lt_00C1
push 1396
push 4
push dword ptr [ebp-104]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0520
jmp eax
.Lt_0520:
mov eax, dword ptr [ebp-104]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-108], eax
push offset _Lt_00C1
push 1396
push 4
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0521
jmp eax
.Lt_0521:
mov eax, dword ptr [ebp-108]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-112], ebx
push offset _Lt_00C1
push 1396
push 65536
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0522
jmp eax
.Lt_0522:
mov eax, dword ptr [ebp-112]
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
fcomp qword ptr [_Lt_0298]
fnstsw ax
test ah, 0b01000001
jz .Lt_04FB
call _LN_VICTORY@0
.Lt_04FB:
.Lt_04FA:
.Lt_04D8:
.Lt_04D7:
jmp .Lt_04D5
.Lt_04D6:
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 1402
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0523
jmp eax
.Lt_0523:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 1403
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0524
jmp eax
.Lt_0524:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_04FD:
.Lt_04FC:
.Lt_04D5:
.Lt_04D3:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_VICTORY@0
_LN_VICTORY@0:
push ebp
mov ebp, esp
sub esp, 80
push ebx
push esi
.Lt_0525:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-76], eax
push offset _Lt_053C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-80], eax
call _LN_PRFLBLNK@0
push 0
push 6
push offset _Lt_0527
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C1
push 1412
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_053E
jmp eax
.Lt_053E:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1412
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_053F
jmp eax
.Lt_053F:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 1412
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0540
jmp eax
.Lt_0540:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_052B
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 1414
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0541
jmp eax
.Lt_0541:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 1414
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0542
jmp eax
.Lt_0542:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 1414
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0543
jmp eax
.Lt_0543:
mov eax, dword ptr [ebp-24]
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
fstp dword ptr [_PRFLHP_SF]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 1415
push 4
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0544
jmp eax
.Lt_0544:
mov eax, dword ptr [ebp-28]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C1
push 1415
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0545
jmp eax
.Lt_0545:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-36], ebx
push offset _Lt_00C1
push 1415
push 65536
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0546
jmp eax
.Lt_0546:
mov eax, dword ptr [ebp-36]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fstp dword ptr [_PRFLSTR_SF]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-40], ebx
push offset _Lt_00C1
push 1416
push 4
push dword ptr [ebp-40]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0547
jmp eax
.Lt_0547:
mov eax, dword ptr [ebp-40]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 1416
push 4
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0548
jmp eax
.Lt_0548:
mov eax, dword ptr [ebp-44]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-48], ebx
push offset _Lt_00C1
push 1416
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0549
jmp eax
.Lt_0549:
mov eax, dword ptr [ebp-48]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fstp dword ptr [_PRFLESS_SF]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-52], ebx
push offset _Lt_00C1
push 1417
push 4
push dword ptr [ebp-52]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054A
jmp eax
.Lt_054A:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C1
push 1417
push 4
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054B
jmp eax
.Lt_054B:
mov eax, dword ptr [ebp-56]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-60], ebx
push offset _Lt_00C1
push 1417
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054C
jmp eax
.Lt_054C:
mov eax, dword ptr [ebp-60]
imul eax, 136
fld qword ptr [_G_DFA+eax+48]
fstp dword ptr [_PRFLEXP_SF]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-64], ebx
push offset _Lt_00C1
push 1418
push 4
push dword ptr [ebp-64]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054D
jmp eax
.Lt_054D:
mov eax, dword ptr [ebp-64]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-68], eax
push offset _Lt_00C1
push 1418
push 4
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054E
jmp eax
.Lt_054E:
mov eax, dword ptr [ebp-68]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-72], ebx
push offset _Lt_00C1
push 1418
push 65536
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054F
jmp eax
.Lt_054F:
mov eax, dword ptr [ebp-72]
imul eax, 136
fld qword ptr [_G_DFA+eax+56]
fstp dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0550]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLMAKE@0
.Lt_0526:
push dword ptr [ebp-80]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-76]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_PILLAGE@0
_LN_PILLAGE@0:
push ebp
mov ebp, esp
sub esp, 84
push ebx
push esi
.Lt_0551:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-56], eax
push offset _Lt_0561
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-60], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C1
push 1426
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0563
jmp eax
.Lt_0563:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1426
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0564
jmp eax
.Lt_0564:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 1426
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0565
jmp eax
.Lt_0565:
mov eax, dword ptr [ebp-12]
imul eax, 136
fld qword ptr [_G_DFA+eax+48]
fistp word ptr [_EXPGAIN_SI]
movsx eax, word ptr [_EXPGAIN_SI]
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-16], ebx
push offset _Lt_00C1
push 1427
push 4
push dword ptr [ebp-16]
mov ebx, eax
fstp qword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0566
jmp eax
.Lt_0566:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 1427
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0567
jmp eax
.Lt_0567:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 1427
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0568
jmp eax
.Lt_0568:
mov eax, dword ptr [ebp-24]
imul eax, 136
fld qword ptr [_G_DFA+eax+56]
fadd qword ptr [ebp-68]
fistp word ptr [_EXPGAIN_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-32], eax
push offset _Lt_00C1
push 1428
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0569
jmp eax
.Lt_0569:
mov eax, dword ptr [ebp-32]
imul eax, 136
movsx ebx, word ptr [_EXPGAIN_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 1428
push 65536
push dword ptr [ebp-28]
fstp qword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056A
jmp eax
.Lt_056A:
mov eax, dword ptr [ebp-28]
imul eax, 136
push dword ptr [ebp-76]
push dword ptr [ebp-72]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-36], ebx
push offset _Lt_00C1
push 1429
push 4
push dword ptr [ebp-36]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056B
jmp eax
.Lt_056B:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-40], eax
push offset _Lt_00C1
push 1429
push 4
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056C
jmp eax
.Lt_056C:
mov eax, dword ptr [ebp-40]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-44], ebx
push offset _Lt_00C1
push 1429
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056D
jmp eax
.Lt_056D:
mov eax, dword ptr [ebp-44]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fistp word ptr [_STRGAIN_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-52], eax
push offset _Lt_00C1
push 1430
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056E
jmp eax
.Lt_056E:
mov eax, dword ptr [ebp-52]
imul eax, 136
movsx ebx, word ptr [_STRGAIN_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-48], eax
push offset _Lt_00C1
push 1430
push 65536
push dword ptr [ebp-48]
fstp qword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056F
jmp eax
.Lt_056F:
mov eax, dword ptr [ebp-48]
imul eax, 136
push dword ptr [ebp-84]
push dword ptr [ebp-80]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_DEFEATED@0
call _LN_WINDGGR@0
call _LN_WINPIKE@0
call _LN_WINGRPL@0
call _LN_WINSEED@0
call _LN_WINKEY1@0
call _LN_WINKEY2@0
.Lt_0552:
push dword ptr [ebp-60]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-56]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_PAYLEVELUP@0
_LN_PAYLEVELUP@0:
push ebp
mov ebp, esp
sub esp, 188
push ebx
.Lt_0573:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_05E0
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-40], eax
mov word ptr [ebp-4], 0
mov word ptr [ebp-8], 0
mov word ptr [ebp-12], 0
mov word ptr [ebp-16], 0
mov word ptr [ebp-20], 0
mov word ptr [ebp-24], 0
mov word ptr [ebp-28], 0
mov word ptr [ebp-32], 0
mov word ptr [ebp-28], 4
mov word ptr [ebp-32], 14
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0576
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_EXPSHOP]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
.Lt_0577:
mov ax, word ptr [ebp-32]
mov word ptr [ebp-4], ax
movsx eax, word ptr [ebp-4]
add eax, 25
mov word ptr [ebp-12], ax
mov ax, word ptr [ebp-28]
mov word ptr [ebp-8], ax
movsx eax, word ptr [ebp-8]
add eax, 20
mov word ptr [ebp-16], ax
mov word ptr [ebp-20], 4
mov word ptr [ebp-24], 12
movzx eax, word ptr [ebp-24]
push eax
movzx eax, word ptr [ebp-20]
push eax
movzx eax, word ptr [ebp-16]
push eax
movzx eax, word ptr [ebp-12]
push eax
movzx eax, word ptr [ebp-8]
push eax
movzx eax, word ptr [ebp-4]
push eax
push dword ptr [_CLV_BUFFER_EXPSHOP]
push offset _CLV_BUFFER
call _FRAME_PUT@32
mov word ptr [_STATX_SI], 15
movsx eax, word ptr [ebp-32]
inc eax
push eax
movsx eax, word ptr [ebp-28]
inc eax
push eax
push dword ptr [_CLV_BUFFER_EXPSHOP]
push offset _CLV_BUFFER
call _LN_STTS@16
push 0
push 1
push offset _Lt_0000
push -1
push offset _MENU_STR
call _fb_StrAssign@20
push 0
push -1
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 1474
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E2
jmp eax
.Lt_05E2:
mov eax, dword ptr [ebp-44]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
mov dword ptr [ebp-48], ebx
push offset _Lt_00C1
push 1474
push 64
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E3
jmp eax
.Lt_05E3:
mov eax, dword ptr [ebp-48]
movsx ebx, word ptr [_L_SIA+eax*2]
push ebx
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0578
push -1
push offset _MENU_STR
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
push 5
push offset _Lt_017B
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-76], eax
push offset _Lt_00C1
push 1475
push 65536
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E4
jmp eax
.Lt_05E4:
mov eax, dword ptr [ebp-76]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_057F
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C1
push 1476
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E5
jmp eax
.Lt_05E5:
mov eax, dword ptr [ebp-104]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01C3]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0582
push 0
push 5
push offset _Lt_0583
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0585
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0583
push -1
push offset _MENU_STR
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_0585:
.Lt_0584:
.Lt_0582:
.Lt_0581:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-108], eax
push offset _Lt_00C1
push 1483
push 65536
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E6
jmp eax
.Lt_05E6:
mov eax, dword ptr [ebp-108]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01C3]
fnstsw ax
test ah, 0b00000001
jnz .Lt_058A
push 0
push 5
push offset _Lt_058B
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_058D
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_058B
push -1
push offset _MENU_STR
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_058D:
.Lt_058C:
.Lt_058A:
.Lt_0589:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-112], eax
push offset _Lt_00C1
push 1490
push 65536
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E7
jmp eax
.Lt_05E7:
mov eax, dword ptr [ebp-112]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01C3]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0592
push 0
push 5
push offset _Lt_03AD
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0594
push 0
push -1
push -1
push 2
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03AD
push -1
push offset _MENU_STR
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_0594:
.Lt_0593:
.Lt_0592:
.Lt_0591:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-116], eax
push offset _Lt_00C1
push 1497
push 65536
push dword ptr [ebp-116]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E8
jmp eax
.Lt_05E8:
mov eax, dword ptr [ebp-116]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01C3]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0599
push 0
push 5
push offset _Lt_03B0
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_059B
push 0
push -1
push -1
push 2
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03B0
push -1
push offset _MENU_STR
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_059B:
.Lt_059A:
.Lt_0599:
.Lt_0598:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-120], eax
push offset _Lt_00C1
push 1504
push 65536
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E9
jmp eax
.Lt_05E9:
mov eax, dword ptr [ebp-120]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01BD]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05A0
push 0
push 5
push offset _Lt_03B3
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_05A2
push 0
push -1
push -1
push 10
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03B3
push -1
push offset _MENU_STR
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_05A2:
.Lt_05A1:
.Lt_05A0:
.Lt_059F:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-124], eax
push offset _Lt_00C1
push 1511
push 65536
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05EA
jmp eax
.Lt_05EA:
mov eax, dword ptr [ebp-124]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0320]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05A7
push 0
push 5
push offset _Lt_03BC
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_05A9
push 0
push -1
push -1
push 20
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03BC
push -1
push offset _MENU_STR
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_05A9:
.Lt_05A8:
.Lt_05A7:
.Lt_05A6:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-128], eax
push offset _Lt_00C1
push 1518
push 65536
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05EB
jmp eax
.Lt_05EB:
mov eax, dword ptr [ebp-128]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0433]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05AE
push 0
push 5
push offset _Lt_016A
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_05B0
push 0
push -1
push -1
push 30
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_016A
push -1
push offset _MENU_STR
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_05B0:
.Lt_05AF:
.Lt_05AE:
.Lt_05AD:
.Lt_057F:
.Lt_057E:
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_05B3
push -1
push offset _MENU_STR
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
push -1
push offset _MENU_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0420]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov word ptr [_MENUITEM_SI], 1
mov ax, word ptr [_MENUSIZE_SI]
mov word ptr [ebp-104], ax
jmp .Lt_05B7
.Lt_05BA:
push 0
push -1
push 4
movsx eax, word ptr [_MENUITEM_SI]
sal eax, 3
add eax, -7
push eax
push offset _MENU_STR
call _fb_StrMid@12
push eax
push -1
push offset _MENUITEM_STR
call _fb_StrAssign@20
push 4
movsx eax, word ptr [_MENUITEM_SI]
sal eax, 3
add eax, -3
push eax
push offset _MENU_STR
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_MENUCOST_SI], ax
push 0
push -1
push offset _MENUITEM_STR
push -1
push offset _R_STR
call _fb_StrAssign@20
call _LN_NAMES@0
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jle .Lt_05BC
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push -1
push -1
push 5
push 2
push offset _Lt_05C0
push -1
push -1
movsx eax, word ptr [_MENUCOST_SI]
push eax
call _fb_IntToStr@4
push eax
push 5
push offset _Lt_05BF
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
push -1
push 1
push offset _Lt_05BE
call _fb_StrAllocTempDescZEx@8
push eax
push -1
push offset _RR_STR
call _fb_StrLen@8
neg eax
add eax, 18
push eax
call _fb_StrFill2@8
push eax
push -1
push 2
push offset _Lt_0117
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BD
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign@20
lea eax, [ebp-188]
push eax
movsx eax, word ptr [ebp-8]
movsx ebx, word ptr [_MENUITEM_SI]
add eax, ebx
add eax, 5
sal eax, 3
push eax
movsx eax, word ptr [ebp-4]
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_EXPSHOP]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-188]
push eax
call _fb_StrDelete@4
.Lt_05BC:
.Lt_05BB:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_05C9
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BD
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
lea eax, [ebp-128]
push eax
movsx eax, word ptr [ebp-8]
movsx ebx, word ptr [_MENUITEM_SI]
add eax, ebx
add eax, 5
sal eax, 3
push eax
movsx eax, word ptr [ebp-4]
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_EXPSHOP]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-128]
push eax
call _fb_StrDelete@4
.Lt_05C9:
.Lt_05C8:
.Lt_05B8:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_05B7:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-104]
cmp eax, ebx
jle .Lt_05BA
.Lt_05B9:
.Lt_05CC:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_0158
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
jne .Lt_05CE
movsx ebx, word ptr [_XM_SI]
cmp ebx, 15
jne .Lt_05D0
movsx ebx, word ptr [_YM_SI]
cmp ebx, 11
setge bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_YM_SI]
movsx ecx, word ptr [_MENUSIZE_SI]
add ecx, 10
cmp eax, ecx
setle al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_05D2
movsx eax, word ptr [_YM_SI]
add eax, -10
mov word ptr [_MENUSELECT_SI], ax
push 0
push -1
push 4
movsx eax, word ptr [_MENUSELECT_SI]
sal eax, 3
add eax, -7
push eax
push offset _MENU_STR
call _fb_StrMid@12
push eax
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
push 4
movsx eax, word ptr [_MENUSELECT_SI]
sal eax, 3
add eax, -3
push eax
push offset _MENU_STR
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_MENUCOST_SI], ax
.Lt_05D2:
.Lt_05D1:
.Lt_05D0:
.Lt_05CF:
.Lt_05CE:
.Lt_05CD:
push 5
push offset _Lt_0578
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_05B3
push -1
push offset _MENUSELECT_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 5
push offset _Lt_0158
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_05D4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C1
push 1556
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05EC
jmp eax
.Lt_05EC:
mov eax, dword ptr [ebp-104]
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_05D7
push 0
push 2
push offset _Lt_02C4
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_ABILITYGAIN@0
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_05D7:
.Lt_05D6:
jmp .Lt_0577
.Lt_05D4:
.Lt_05D3:
push 5
push offset _Lt_0578
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_05D9
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C1
push 1564
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05ED
jmp eax
.Lt_05ED:
mov eax, dword ptr [ebp-104]
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_05DC
push 0
push 2
push offset _Lt_02C4
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_LEVELUP@0
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_05DC:
.Lt_05DB:
jmp .Lt_0577
.Lt_05D9:
.Lt_05D8:
push 5
push offset _Lt_05B3
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_05DE
push 0
push 2
push offset _Lt_02C4
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_05DD
.Lt_05DE:
jmp .Lt_05CC
.Lt_05DD:
.Lt_0576:
.Lt_0575:
.Lt_0574:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-36]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_MERCHANT@0
_LN_MERCHANT@0:
push ebp
mov ebp, esp
sub esp, 188
push ebx
push esi
.Lt_05F3:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0647
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_05F5:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_05F7
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
mov word ptr [_STATX_SI], 2
call _LN_STATUS@0
mov word ptr [_VIEWX_SI], 18
push 0
push 1
push offset _Lt_0000
push -1
push offset _MENU_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0179
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_05F9
push 0
push -1
push -1
push 5
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0179
push -1
push offset _MENU_STR
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_05F9:
.Lt_05F8:
push 0
push 5
push offset _Lt_0191
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_05FD
push 0
push -1
push -1
push 20
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0191
push -1
push offset _MENU_STR
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_05FD:
.Lt_05FC:
push 0
push 5
push offset _Lt_0600
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0602
push 0
push -1
push -1
push 15
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0600
push -1
push offset _MENU_STR
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_0602:
.Lt_0601:
push 0
push 5
push offset _Lt_0605
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0607
push 0
push -1
push -1
push 15
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0605
push -1
push offset _MENU_STR
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_0607:
.Lt_0606:
push 0
push 5
push offset _Lt_017E
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_060B
push 0
push -1
push -1
push 10
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_017E
push -1
push offset _MENU_STR
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_060B:
.Lt_060A:
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_05B3
push -1
push offset _MENU_STR
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
push -1
push offset _MENU_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0420]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 9
push offset _Lt_01A7
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
lea eax, [ebp-44]
push eax
push 32
movsx eax, word ptr [_VIEWX_SI]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 13
push offset _Lt_0611
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
lea eax, [ebp-56]
push eax
push 48
movsx eax, word ptr [_VIEWX_SI]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
push offset _SPRITEPATH_STR
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 8
push offset _Lt_0618
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-68], ebx
push offset _Lt_00C1
push 1625
push 4
push dword ptr [ebp-68]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0649
jmp eax
.Lt_0649:
mov eax, dword ptr [ebp-68]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-72], eax
push offset _Lt_00C1
push 1625
push 4
push dword ptr [ebp-72]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064A
jmp eax
.Lt_064A:
mov eax, dword ptr [ebp-72]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-76], ebx
push offset _Lt_00C1
push 1625
push 65536
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064B
jmp eax
.Lt_064B:
mov eax, dword ptr [ebp-76]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
lea eax, [ebp-100]
push eax
movsx eax, word ptr [_VIEWX_SI]
add eax, 6
mov word ptr [ebp-64], ax
lea eax, [ebp-64]
push eax
mov word ptr [ebp-60], 10
lea eax, [ebp-60]
push eax
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
mov word ptr [_MENUITEM_SI], 1
mov ax, word ptr [_MENUSIZE_SI]
mov word ptr [ebp-104], ax
jmp .Lt_061C
.Lt_061F:
push 0
push -1
push 4
movsx eax, word ptr [_MENUITEM_SI]
sal eax, 3
add eax, -7
push eax
push offset _MENU_STR
call _fb_StrMid@12
push eax
push -1
push offset _MENUITEM_STR
call _fb_StrAssign@20
push 4
movsx eax, word ptr [_MENUITEM_SI]
sal eax, 3
add eax, -3
push eax
push offset _MENU_STR
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_MENUCOST_SI], ax
push 0
push -1
push offset _MENUITEM_STR
push -1
push offset _R_STR
call _fb_StrAssign@20
call _LN_NAMES@0
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jle .Lt_0621
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push -1
push -1
push 5
push 2
push offset _Lt_05C0
push -1
push -1
push -1
movsx eax, word ptr [_MENUCOST_SI]
push eax
call _fb_IntToStr@4
push eax
call _fb_StrLen@8
dec eax
push eax
movsx eax, word ptr [_MENUCOST_SI]
push eax
call _fb_IntToStr@4
push eax
call _fb_RIGHT@8
push eax
push 5
push offset _Lt_05BF
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
push -1
push 1
push offset _Lt_05BE
call _fb_StrAllocTempDescZEx@8
push eax
movsx eax, word ptr [_VIEWX_SI]
neg eax
push -1
push offset _RR_STR
mov ebx, eax
call _fb_StrLen@8
sub ebx, eax
add ebx, 33
push ebx
call _fb_StrFill2@8
push eax
push -1
push 2
push offset _Lt_0117
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BD
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign@20
lea eax, [ebp-188]
push eax
movsx eax, word ptr [_MENUITEM_SI]
add eax, 11
sal eax, 3
push eax
movsx eax, word ptr [_VIEWX_SI]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-188]
push eax
call _fb_StrDelete@4
.Lt_0621:
.Lt_0620:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_062A
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BD
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
lea eax, [ebp-128]
push eax
movsx eax, word ptr [_MENUITEM_SI]
add eax, 11
sal eax, 3
push eax
movsx eax, word ptr [_VIEWX_SI]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-128]
push eax
call _fb_StrDelete@4
.Lt_062A:
.Lt_0629:
.Lt_061D:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_061C:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-104]
cmp eax, ebx
jle .Lt_061F
.Lt_061E:
.Lt_062D:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_0158
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
jne .Lt_062F
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_VIEWX_SI]
cmp ebx, eax
jne .Lt_0631
movsx eax, word ptr [_YM_SI]
cmp eax, 13
setge al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_YM_SI]
movsx esi, word ptr [_MENUSIZE_SI]
add esi, 12
cmp ebx, esi
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0633
movsx ebx, word ptr [_YM_SI]
add ebx, -12
mov word ptr [_MENUSELECT_SI], bx
push 0
push -1
push 4
movsx ebx, word ptr [_MENUSELECT_SI]
sal ebx, 3
add ebx, -7
push ebx
push offset _MENU_STR
call _fb_StrMid@12
push eax
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
push 4
movsx eax, word ptr [_MENUSELECT_SI]
sal eax, 3
add eax, -3
push eax
push offset _MENU_STR
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_MENUCOST_SI], ax
.Lt_0633:
.Lt_0632:
.Lt_0631:
.Lt_0630:
.Lt_062F:
.Lt_062E:
push 5
push offset _Lt_0578
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_05B3
push -1
push offset _MENUSELECT_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 5
push offset _Lt_0158
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0635
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C1
push 1654
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064C
jmp eax
.Lt_064C:
mov eax, dword ptr [ebp-104]
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_0638
push 0
push 2
push offset _Lt_02C4
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_ABILITYGAIN@0
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push 0
push -1
push offset _MENUSELECT_STR
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-120], ebx
push offset _Lt_00C1
push 1660
push 4
push dword ptr [ebp-120]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064D
jmp eax
.Lt_064D:
mov eax, dword ptr [ebp-120]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-124], eax
push offset _Lt_00C1
push 1660
push 4
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064E
jmp eax
.Lt_064E:
mov eax, dword ptr [ebp-124]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-128], ebx
push offset _Lt_00C1
push 1660
push 65536
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064F
jmp eax
.Lt_064F:
mov eax, dword ptr [ebp-128]
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-108], ebx
push offset _Lt_00C1
push 1660
push 4
push dword ptr [ebp-108]
mov ebx, eax
fstp qword ptr [ebp-136]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0650
jmp eax
.Lt_0650:
mov eax, dword ptr [ebp-108]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-112], eax
push offset _Lt_00C1
push 1660
push 4
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0651
jmp eax
.Lt_0651:
mov eax, dword ptr [ebp-112]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-116], ebx
push offset _Lt_00C1
push 1660
push 65536
push dword ptr [ebp-116]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0652
jmp eax
.Lt_0652:
mov eax, dword ptr [ebp-116]
imul eax, 136
push dword ptr [ebp-136]
push dword ptr [ebp-132]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
jmp .Lt_05F5
.Lt_0638:
.Lt_0637:
jmp .Lt_05F5
.Lt_0635:
.Lt_0634:
push 5
push offset _Lt_0578
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0640
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C1
push 1666
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0654
jmp eax
.Lt_0654:
mov eax, dword ptr [ebp-104]
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_0643
push 0
push 2
push offset _Lt_02C4
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_LEVELUP@0
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
jmp .Lt_05F5
.Lt_0643:
.Lt_0642:
jmp .Lt_05F5
.Lt_0640:
.Lt_063F:
push 5
push offset _Lt_05B3
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0645
push 0
push 2
push offset _Lt_02C4
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_0644
.Lt_0645:
jmp .Lt_062D
.Lt_0644:
.Lt_05F7:
.Lt_05F6:
.Lt_05F4:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_TALK0001@0
_LN_TALK0001@0:
push ebp
mov ebp, esp
sub esp, 220
push ebx
push esi
.Lt_065A:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_068F
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-40], eax
mov word ptr [ebp-4], 0
mov word ptr [ebp-8], 0
mov word ptr [ebp-12], 0
mov word ptr [ebp-16], 0
mov word ptr [ebp-20], 0
mov word ptr [ebp-24], 0
mov word ptr [ebp-28], 0
mov word ptr [ebp-32], 0
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_065D
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
mov word ptr [ebp-28], 5
mov word ptr [ebp-32], 18
call _LN_PORTAL@0
mov word ptr [_STATX_SI], 2
call _LN_STATUS@0
mov word ptr [_VIEWX_SI], 18
push 0
push 1
push offset _Lt_0000
push -1
push offset _MENU_STR
call _fb_StrAssign@20
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_065E
push -1
push offset _MENU_STR
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
push -1
push offset _MENU_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0420]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 12
push offset _Lt_0661
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
lea eax, [ebp-76]
push eax
movsx eax, word ptr [ebp-28]
dec eax
sal eax, 3
push eax
movsx eax, word ptr [ebp-32]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 20
push offset _Lt_0663
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
movsx eax, word ptr [ebp-28]
sal eax, 3
push eax
movsx eax, word ptr [ebp-32]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 22
push offset _Lt_0665
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
lea eax, [ebp-100]
push eax
movsx eax, word ptr [ebp-28]
inc eax
sal eax, 3
push eax
movsx eax, word ptr [ebp-32]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 22
push offset _Lt_0667
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
lea eax, [ebp-112]
push eax
movsx eax, word ptr [ebp-28]
add eax, 2
sal eax, 3
push eax
movsx eax, word ptr [ebp-32]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 23
push offset _Lt_0669
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
lea eax, [ebp-124]
push eax
movsx eax, word ptr [ebp-28]
add eax, 3
sal eax, 3
push eax
movsx eax, word ptr [ebp-32]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
push offset _SPRITEPATH_STR
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 8
push offset _Lt_0618
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-136], ebx
push offset _Lt_00C1
push 1715
push 4
push dword ptr [ebp-136]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0691
jmp eax
.Lt_0691:
mov eax, dword ptr [ebp-136]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-140], eax
push offset _Lt_00C1
push 1715
push 4
push dword ptr [ebp-140]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0692
jmp eax
.Lt_0692:
mov eax, dword ptr [ebp-140]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-144], ebx
push offset _Lt_00C1
push 1715
push 65536
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0693
jmp eax
.Lt_0693:
mov eax, dword ptr [ebp-144]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign@20
lea eax, [ebp-168]
push eax
movsx eax, word ptr [ebp-32]
add eax, 6
mov word ptr [ebp-132], ax
lea eax, [ebp-132]
push eax
movsx eax, word ptr [ebp-28]
add eax, 5
mov word ptr [ebp-128], ax
lea eax, [ebp-128]
push eax
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-168]
push eax
call _fb_StrDelete@4
mov word ptr [_MENUITEM_SI], 1
mov ax, word ptr [_MENUSIZE_SI]
mov word ptr [ebp-172], ax
jmp .Lt_0673
.Lt_0676:
push 0
push -1
push 4
movsx eax, word ptr [_MENUITEM_SI]
sal eax, 3
add eax, -7
push eax
push offset _MENU_STR
call _fb_StrMid@12
push eax
push -1
push offset _MENUITEM_STR
call _fb_StrAssign@20
push 4
movsx eax, word ptr [_MENUITEM_SI]
sal eax, 3
add eax, -3
push eax
push offset _MENU_STR
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_MENUCOST_SI], ax
push 0
push -1
push offset _MENUITEM_STR
push -1
push offset _R_STR
call _fb_StrAssign@20
call _LN_NAMES@0
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jle .Lt_0678
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push -1
movsx eax, word ptr [_MENUCOST_SI]
push eax
call _fb_IntToStr@4
push eax
push -1
push 3
push offset _Lt_0679
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BD
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign@20
lea eax, [ebp-220]
push eax
movsx eax, word ptr [ebp-28]
movsx ebx, word ptr [_MENUITEM_SI]
add eax, ebx
add eax, 6
sal eax, 3
push eax
movsx eax, word ptr [ebp-32]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-220]
push eax
call _fb_StrDelete@4
.Lt_0678:
.Lt_0677:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_067F
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BD
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign@20
lea eax, [ebp-196]
push eax
movsx eax, word ptr [ebp-28]
movsx ebx, word ptr [_MENUITEM_SI]
add eax, ebx
add eax, 6
sal eax, 3
push eax
movsx eax, word ptr [ebp-32]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-196]
push eax
call _fb_StrDelete@4
.Lt_067F:
.Lt_067E:
.Lt_0674:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_0673:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-172]
cmp eax, ebx
jle .Lt_0676
.Lt_0675:
.Lt_0682:
.Lt_0683:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_0158
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
jne .Lt_0687
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_VIEWX_SI]
cmp ebx, eax
jne .Lt_0689
movsx eax, word ptr [_YM_SI]
cmp eax, 13
setge al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_YM_SI]
movsx esi, word ptr [_MENUSIZE_SI]
add esi, 12
cmp ebx, esi
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_068B
movsx ebx, word ptr [_YM_SI]
add ebx, -12
mov word ptr [_MENUSELECT_SI], bx
push 0
push -1
push 4
movsx ebx, word ptr [_MENUSELECT_SI]
sal ebx, 3
add ebx, -7
push ebx
push offset _MENU_STR
call _fb_StrMid@12
push eax
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
push 4
movsx eax, word ptr [_MENUSELECT_SI]
sal eax, 3
add eax, -3
push eax
push offset _MENU_STR
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_MENUCOST_SI], ax
.Lt_068B:
.Lt_068A:
.Lt_0689:
.Lt_0688:
.Lt_0687:
.Lt_0686:
.Lt_0685:
push 5
push offset _Lt_065E
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0683
.Lt_0684:
push 5
push offset _Lt_065E
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_068D
push 0
push 2
push offset _Lt_02C4
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_068C
.Lt_068D:
call _LN_MERCHANT@0
.Lt_068C:
.Lt_065D:
.Lt_065C:
.Lt_065B:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-36]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ABILITYGAIN@0
_LN_ABILITYGAIN@0:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.Lt_0696:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-32], eax
push offset _Lt_06A3
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-36], eax
push 0
push -1
push -1
push offset _MENUSELECT_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 1759
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_06A5
jmp eax
.Lt_06A5:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call _fb_StrConcat@20
push eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1759
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_06A6
jmp eax
.Lt_06A6:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 1760
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_06A7
jmp eax
.Lt_06A7:
mov eax, dword ptr [ebp-28]
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fsubrp
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 1760
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_06A8
jmp eax
.Lt_06A8:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-44]
push dword ptr [ebp-40]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_069E
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-48], eax
push offset _Lt_00C1
push 1771
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_06AA
jmp eax
.Lt_06AA:
mov eax, dword ptr [ebp-48]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 7
push offset _Lt_06A0
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-60]
push ebx
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-60]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _MENUSELECT_STR
push -1
push offset _R_STR
call _fb_StrAssign@20
call _LN_NAMES@0
push offset _RR_STR
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
call _LN_OKBUTTON@0
.Lt_069E:
.Lt_069D:
.Lt_0697:
push dword ptr [ebp-36]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-32]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_LEVELUP@0
_LN_LEVELUP@0:
push ebp
mov ebp, esp
sub esp, 336
push ebx
push esi
.Lt_06AB:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0703
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 5
push offset _Lt_0158
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 1786
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0705
jmp eax
.Lt_0705:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_06AF
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 1787
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0706
jmp eax
.Lt_0706:
mov eax, dword ptr [ebp-16]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-20], ebx
push offset _Lt_00C1
push 1787
push 65536
push dword ptr [ebp-20]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0707
jmp eax
.Lt_0707:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ecx
mov dword ptr [ebp-24], ecx
push offset _Lt_00C1
push 1787
push 64
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0708
jmp eax
.Lt_0708:
mov eax, dword ptr [ebp-24]
movsx ecx, word ptr [_L_SIA+eax*2]
push ecx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+ebx+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_06B4
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx eax, word ptr [_AA_SI]
imul ecx, eax
add ebx, ecx
mov dword ptr [ebp-32], ebx
push offset _Lt_00C1
push 1788
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0709
jmp eax
.Lt_0709:
mov eax, dword ptr [ebp-32]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-36], ebx
push offset _Lt_00C1
push 1788
push 65536
push dword ptr [ebp-36]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070A
jmp eax
.Lt_070A:
mov eax, dword ptr [ebp-36]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ecx
mov dword ptr [ebp-40], ecx
push offset _Lt_00C1
push 1788
push 64
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070B
jmp eax
.Lt_070B:
mov eax, dword ptr [ebp-40]
movsx ecx, word ptr [_L_SIA+eax*2]
push ecx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+ebx+48]
fsubrp
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx eax, word ptr [_AA_SI]
imul ecx, eax
add ebx, ecx
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 1788
push 65536
push dword ptr [ebp-28]
fstp qword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070C
jmp eax
.Lt_070C:
mov eax, dword ptr [ebp-28]
imul eax, 136
push dword ptr [ebp-124]
push dword ptr [ebp-120]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
fmul qword ptr [_Lt_0326]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_01C3]
fistp word ptr [_R1_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-48], eax
push offset _Lt_00C1
push 1790
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070D
jmp eax
.Lt_070D:
mov eax, dword ptr [ebp-48]
imul eax, 136
movsx ebx, word ptr [_R1_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+88]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 1790
push 65536
push dword ptr [ebp-44]
fstp qword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070E
jmp eax
.Lt_070E:
mov eax, dword ptr [ebp-44]
imul eax, 136
push dword ptr [ebp-132]
push dword ptr [ebp-128]
pop dword ptr [_G_DFA+eax+92]
pop dword ptr [_G_DFA+eax+88]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-56], eax
push offset _Lt_00C1
push 1791
push 65536
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070F
jmp eax
.Lt_070F:
mov eax, dword ptr [ebp-56]
imul eax, 136
movsx ebx, word ptr [_R1_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-52], eax
push offset _Lt_00C1
push 1791
push 65536
push dword ptr [ebp-52]
fstp qword ptr [ebp-140]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0710
jmp eax
.Lt_0710:
mov eax, dword ptr [ebp-52]
imul eax, 136
push dword ptr [ebp-140]
push dword ptr [ebp-136]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
fmul qword ptr [_Lt_0326]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_01C3]
fistp word ptr [_R2_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-64], eax
push offset _Lt_00C1
push 1793
push 65536
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0711
jmp eax
.Lt_0711:
mov eax, dword ptr [ebp-64]
imul eax, 136
movsx ebx, word ptr [_R2_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+96]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-60], eax
push offset _Lt_00C1
push 1793
push 65536
push dword ptr [ebp-60]
fstp qword ptr [ebp-148]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0712
jmp eax
.Lt_0712:
mov eax, dword ptr [ebp-60]
imul eax, 136
push dword ptr [ebp-148]
push dword ptr [ebp-144]
pop dword ptr [_G_DFA+eax+100]
pop dword ptr [_G_DFA+eax+96]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-72], eax
push offset _Lt_00C1
push 1794
push 65536
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0713
jmp eax
.Lt_0713:
mov eax, dword ptr [ebp-72]
imul eax, 136
movsx ebx, word ptr [_R2_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-68], eax
push offset _Lt_00C1
push 1794
push 65536
push dword ptr [ebp-68]
fstp qword ptr [ebp-156]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0714
jmp eax
.Lt_0714:
mov eax, dword ptr [ebp-68]
imul eax, 136
push dword ptr [ebp-156]
push dword ptr [ebp-152]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
fmul qword ptr [_Lt_0326]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_01C3]
fistp word ptr [_R3_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-80], eax
push offset _Lt_00C1
push 1796
push 65536
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0715
jmp eax
.Lt_0715:
mov eax, dword ptr [ebp-80]
imul eax, 136
movsx ebx, word ptr [_R3_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+104]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-76], eax
push offset _Lt_00C1
push 1796
push 65536
push dword ptr [ebp-76]
fstp qword ptr [ebp-164]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0716
jmp eax
.Lt_0716:
mov eax, dword ptr [ebp-76]
imul eax, 136
push dword ptr [ebp-164]
push dword ptr [ebp-160]
pop dword ptr [_G_DFA+eax+108]
pop dword ptr [_G_DFA+eax+104]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-88], eax
push offset _Lt_00C1
push 1797
push 65536
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0717
jmp eax
.Lt_0717:
mov eax, dword ptr [ebp-88]
imul eax, 136
movsx ebx, word ptr [_R3_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-84], eax
push offset _Lt_00C1
push 1797
push 65536
push dword ptr [ebp-84]
fstp qword ptr [ebp-172]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0718
jmp eax
.Lt_0718:
mov eax, dword ptr [ebp-84]
imul eax, 136
push dword ptr [ebp-172]
push dword ptr [ebp-168]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
mov word ptr [_R4_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-96], eax
push offset _Lt_00C1
push 1799
push 65536
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0719
jmp eax
.Lt_0719:
mov eax, dword ptr [ebp-96]
imul eax, 136
movsx ebx, word ptr [_R4_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+32]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-92], eax
push offset _Lt_00C1
push 1799
push 65536
push dword ptr [ebp-92]
fstp qword ptr [ebp-180]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_071A
jmp eax
.Lt_071A:
mov eax, dword ptr [ebp-92]
imul eax, 136
push dword ptr [ebp-180]
push dword ptr [ebp-176]
pop dword ptr [_G_DFA+eax+36]
pop dword ptr [_G_DFA+eax+32]
mov word ptr [_R5_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C1
push 1801
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_071B
jmp eax
.Lt_071B:
mov eax, dword ptr [ebp-104]
imul eax, 136
movsx ebx, word ptr [_R5_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+112]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-100], eax
push offset _Lt_00C1
push 1801
push 65536
push dword ptr [ebp-100]
fstp qword ptr [ebp-188]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_071C
jmp eax
.Lt_071C:
mov eax, dword ptr [ebp-100]
imul eax, 136
push dword ptr [ebp-188]
push dword ptr [ebp-184]
pop dword ptr [_G_DFA+eax+116]
pop dword ptr [_G_DFA+eax+112]
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_06CA
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0726]
push dword ptr [_Lt_0727]
push dword ptr [_Lt_01D6]
push dword ptr [_Lt_0728]
push 0
call _fb_GfxLine@36
push 2
push 1
call _fb_PageCopy@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-192], eax
push offset _Lt_00C1
push 1809
push 65536
push dword ptr [ebp-192]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0729
jmp eax
.Lt_0729:
mov eax, dword ptr [ebp-192]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 16
push offset _Lt_06CC
push -1
lea ebx, [ebp-204]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-204]
push ebx
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-204]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 8
push offset _Lt_06CE
push -1
lea ebx, [ebp-216]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-216]
push ebx
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-216]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 5
push -1
movsx ebx, word ptr [_R1_SI]
push ebx
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign@20
lea eax, [ebp-240]
push eax
push 64
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-240]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push 9
push offset _Lt_06D2
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign@20
lea eax, [ebp-252]
push eax
push 80
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-252]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push 5
push -1
movsx eax, word ptr [_R2_SI]
push eax
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign@20
lea eax, [ebp-276]
push eax
push 80
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-276]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 9
push offset _Lt_06D6
push -1
lea eax, [ebp-288]
push eax
call _fb_StrAssign@20
lea eax, [ebp-288]
push eax
push 96
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-288]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push -1
push 5
push -1
movsx eax, word ptr [_R3_SI]
push eax
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
lea eax, [ebp-300]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-312]
push eax
call _fb_StrAssign@20
lea eax, [ebp-312]
push eax
push 96
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-312]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 11
push offset _Lt_06DA
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign@20
lea eax, [ebp-324]
push eax
push 112
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-324]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
push 0
push 11
push offset _Lt_06DC
push -1
lea eax, [ebp-336]
push eax
call _fb_StrAssign@20
lea eax, [ebp-336]
push eax
push 120
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-336]
push eax
call _fb_StrDelete@4
.Lt_06CA:
.Lt_06C9:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-108], eax
push offset _Lt_00C1
push 1820
push 65536
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_072A
jmp eax
.Lt_072A:
mov eax, dword ptr [ebp-108]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_072B]
fnstsw ax
sahf
jae .Lt_06E0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-124], eax
push offset _Lt_00C1
push 1821
push 65536
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_072C
jmp eax
.Lt_072C:
mov eax, dword ptr [ebp-124]
imul eax, 136
fld qword ptr [_Lt_01C3]
fadd qword ptr [_G_DFA+eax+80]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-120], eax
push offset _Lt_00C1
push 1821
push 65536
push dword ptr [ebp-120]
fstp qword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_072D
jmp eax
.Lt_072D:
mov eax, dword ptr [ebp-120]
imul eax, 136
push dword ptr [ebp-132]
push dword ptr [ebp-128]
pop dword ptr [_G_DFA+eax+84]
pop dword ptr [_G_DFA+eax+80]
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_06E4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 12
push offset _Lt_06E5
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign@20
lea eax, [ebp-144]
push eax
push 136
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-144]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push 3
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-148], eax
push offset _Lt_00C1
push 1826
push 65536
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_072F
jmp eax
.Lt_072F:
mov eax, dword ptr [ebp-148]
imul eax, 136
push dword ptr [_G_DFA+eax+84]
push dword ptr [_G_DFA+eax+80]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 3
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign@20
lea eax, [ebp-172]
push eax
push 136
push 288
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-172]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-176], eax
push offset _Lt_00C1
push 1827
push 65536
push dword ptr [ebp-176]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0730
jmp eax
.Lt_0730:
mov eax, dword ptr [ebp-176]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
mov dword ptr [ebp-180], ebx
push offset _Lt_00C1
push 1827
push 64
push dword ptr [ebp-180]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0731
jmp eax
.Lt_0731:
mov eax, dword ptr [ebp-180]
movsx ebx, word ptr [_L_SIA+eax*2]
push ebx
fild dword ptr [esp]
add esp, 4
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-184], ebx
push offset _Lt_00C1
push 1827
push 65536
push dword ptr [ebp-184]
fstp qword ptr [ebp-192]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0732
jmp eax
.Lt_0732:
mov eax, dword ptr [ebp-184]
imul eax, 136
fld qword ptr [ebp-192]
fsub qword ptr [_G_DFA+eax+48]
fcomp qword ptr [_Lt_0298]
fnstsw ax
test ah, 0b00000001
jnz .Lt_06EE
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 6
push offset _Lt_06EF
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign@20
lea eax, [ebp-204]
push eax
push 152
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-204]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 2
push offset _Lt_05C0
push -1
push 5
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-208], eax
push offset _Lt_00C1
push 1829
push 65536
push dword ptr [ebp-208]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0734
jmp eax
.Lt_0734:
mov eax, dword ptr [ebp-208]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
mov dword ptr [ebp-212], ebx
push offset _Lt_00C1
push 1829
push 64
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0735
jmp eax
.Lt_0735:
mov eax, dword ptr [ebp-212]
movsx ebx, word ptr [_L_SIA+eax*2]
push ebx
fild dword ptr [esp]
add esp, 4
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-216], ebx
push offset _Lt_00C1
push 1829
push 65536
push dword ptr [ebp-216]
fstp qword ptr [ebp-260]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0736
jmp eax
.Lt_0736:
mov eax, dword ptr [ebp-216]
imul eax, 136
fld qword ptr [ebp-260]
fsub qword ptr [_G_DFA+eax+48]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign@20
lea eax, [ebp-252]
push eax
push 152
push 264
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-252]
push eax
call _fb_StrDelete@4
.Lt_06EE:
.Lt_06ED:
.Lt_06E4:
.Lt_06E3:
.Lt_06E0:
.Lt_06DF:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_06F8
call _LN_OKBUTTON@0
.Lt_06F8:
.Lt_06F7:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-112], eax
push offset _Lt_00C1
push 1839
push 65536
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0738
jmp eax
.Lt_0738:
mov eax, dword ptr [ebp-112]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01BD]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_0160
push -1
push 4
push 1
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-116], ebx
push offset _Lt_00C1
push 1839
push 65536
push dword ptr [ebp-116]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0739
jmp eax
.Lt_0739:
mov eax, dword ptr [ebp-116]
imul eax, 108
lea ecx, [_E_STRA+eax+24]
push ecx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_06FC
push 0
push 5
push offset _Lt_016A
push -1
push offset _GETIT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_016A
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_06FE
push 0
push -1
push -1
push offset _GETIT_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-124], eax
push offset _Lt_00C1
push 1844
push 65536
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_073A
jmp eax
.Lt_073A:
mov eax, dword ptr [ebp-124]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea ebx, [ebp-136]
push ebx
call _fb_StrConcat@20
push eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-120], eax
push offset _Lt_00C1
push 1844
push 65536
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_073B
jmp eax
.Lt_073B:
mov eax, dword ptr [ebp-120]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
call _LN_GAIN@0
.Lt_06FE:
.Lt_06FD:
.Lt_06FC:
.Lt_06FB:
.Lt_06B4:
.Lt_06B3:
.Lt_06AF:
.Lt_06AE:
.Lt_06AC:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_GAIN@0
_LN_GAIN@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_073E:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0745
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0741
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 1864
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0747
jmp eax
.Lt_0747:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 7
push offset _Lt_06A0
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-24]
push ebx
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _GETIT_STR
push -1
push offset _R_STR
call _fb_StrAssign@20
call _LN_NAMES@0
push offset _RR_STR
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
call _LN_OKBUTTON@0
.Lt_0741:
.Lt_0740:
.Lt_073F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_GETIT@0
_LN_GETIT@0:
push ebp
mov ebp, esp
sub esp, 92
push ebx
push esi
.Lt_0748:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_075C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 1
push offset _Lt_0000
push -1
push offset _GETIT_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_074B
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 0
push -1
push -1
push offset _GETIT_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 1880
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_075E
jmp eax
.Lt_075E:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 1880
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_075F
jmp eax
.Lt_075F:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
push 0
push -1
push offset _CTRL_STR
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_ARE@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_ARE_SI]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0750
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0726]
push dword ptr [_Lt_0727]
push dword ptr [_Lt_01D6]
push dword ptr [_Lt_0728]
push 0
call _fb_GfxLine@36
push 2
push 1
call _fb_PageCopy@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-32], eax
push offset _Lt_00C1
push 1890
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0760
jmp eax
.Lt_0760:
mov eax, dword ptr [ebp-32]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 7
push offset _Lt_06A0
push -1
lea ebx, [ebp-44]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-44]
push ebx
push 40
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-44]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _GETIT_STR
push -1
push offset _R_STR
call _fb_StrAssign@20
call _LN_NAMES@0
push offset _RR_STR
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 5
push offset _Lt_0753
push -1
lea ebx, [ebp-56]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-56]
push ebx
push 56
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-56]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 2
push offset _Lt_0758
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-60], eax
push offset _Lt_00C1
push 1896
push 4
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0761
jmp eax
.Lt_0761:
mov eax, dword ptr [ebp-60]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-64], eax
push offset _Lt_00C1
push 1896
push 4
push dword ptr [ebp-64]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0762
jmp eax
.Lt_0762:
mov eax, dword ptr [ebp-64]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-68], ebx
push offset _Lt_00C1
push 1896
push 65536
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0763
jmp eax
.Lt_0763:
mov eax, dword ptr [ebp-68]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea ebx, [ebp-80]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign@20
lea eax, [ebp-92]
push eax
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-92]
push eax
call _fb_StrDelete@4
call _LN_OKBUTTON@0
.Lt_0750:
.Lt_074F:
.Lt_074B:
.Lt_074A:
.Lt_0749:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTACKUSING@0
_LN_ATTACKUSING@0:
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
.Lt_0766:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0773
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
push 0
push -1
push offset _CTRL_STR
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_ARE@0
movsx eax, word ptr [_AM_SI]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_ARE_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0769
mov ebx, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], ebx
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 1917
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0775
jmp eax
.Lt_0775:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 5
push offset _Lt_076B
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-24]
push ebx
push 40
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _AA_STR
push -1
push offset _R_STR
call _fb_StrAssign@20
call _LN_NAMES@0
push offset _RR_STR
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 3
push offset _Lt_076D
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-36]
push ebx
push 56
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-36]
push ebx
call _fb_StrDelete@4
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-40], eax
push offset _Lt_00C1
push 1923
push 4
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0776
jmp eax
.Lt_0776:
mov eax, dword ptr [ebp-40]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 1923
push 4
push dword ptr [ebp-44]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0777
jmp eax
.Lt_0777:
mov eax, dword ptr [ebp-44]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-48], ebx
push offset _Lt_00C1
push 1923
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0778
jmp eax
.Lt_0778:
mov eax, dword ptr [ebp-48]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
call _LN_OKBUTTON@0
.Lt_0769:
.Lt_0768:
.Lt_0767:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_BATTLEATTACK@0
_LN_BATTLEATTACK@0:
push ebp
mov ebp, esp
sub esp, 112
push ebx
push esi
.Lt_077B:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_078E
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
push 0
push -1
push offset _CTRL_STR
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_ARE@0
movsx eax, word ptr [_AM_SI]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_ARE_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_077E
mov ebx, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], ebx
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 1943
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0790
jmp eax
.Lt_0790:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 5
push offset _Lt_076B
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-24]
push ebx
push 40
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
push 0
push -1
push 4
push 5
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 1945
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0791
jmp eax
.Lt_0791:
mov eax, dword ptr [ebp-28]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _R_STR
call _fb_StrAssign@20
call _LN_NAMES@0
push offset _RR_STR
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-32], ebx
push offset _Lt_00C1
push 1948
push 4
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0792
jmp eax
.Lt_0792:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-36], eax
push offset _Lt_00C1
push 1948
push 4
push dword ptr [ebp-36]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0793
jmp eax
.Lt_0793:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-40], ebx
push offset _Lt_00C1
push 1948
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0794
jmp eax
.Lt_0794:
mov eax, dword ptr [ebp-40]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 5
push offset _Lt_0785
push -1
lea ebx, [ebp-52]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-52]
push ebx
push 80
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-52]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push -1
movsx ebx, word ptr [_ATTACKDAMAGE]
push ebx
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
lea eax, [ebp-76]
push eax
push 80
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 5
push offset _Lt_0789
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
push 88
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 5
push -1
movsx eax, word ptr [_STRDAMAGE_SI]
push eax
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
lea eax, [ebp-112]
push eax
push 88
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
call _LN_OKBUTTON@0
.Lt_077E:
.Lt_077D:
.Lt_077C:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_DEFEATED@0
_LN_DEFEATED@0:
push ebp
mov ebp, esp
sub esp, 212
push ebx
push esi
.Lt_0797:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_07B6
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
push 0
push -1
push offset _CTRL_STR
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_ARE@0
movsx eax, word ptr [_AM_SI]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_ARE_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_079A
mov ebx, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], ebx
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 1972
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07B8
jmp eax
.Lt_07B8:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 9
push offset _Lt_079C
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-24]
push ebx
push 40
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 1974
push 4
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07B9
jmp eax
.Lt_07B9:
mov eax, dword ptr [ebp-28]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C1
push 1974
push 4
push dword ptr [ebp-32]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07BA
jmp eax
.Lt_07BA:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-36], ebx
push offset _Lt_00C1
push 1974
push 65536
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07BB
jmp eax
.Lt_07BB:
mov eax, dword ptr [ebp-36]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 5
push offset _Lt_07A1
push -1
lea ebx, [ebp-48]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-48]
push ebx
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-48]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 2
push offset _Lt_05C0
push -1
push 5
push -1
movsx ebx, word ptr [_EXPGAIN_SI]
push ebx
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
push 64
push 264
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 5
push offset _Lt_07A6
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
push 72
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 2
push offset _Lt_05C0
push -1
push 5
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-100], eax
push offset _Lt_00C1
push 1978
push 65536
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07BC
jmp eax
.Lt_07BC:
mov eax, dword ptr [ebp-100]
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign@20
lea eax, [ebp-136]
push eax
push 72
push 264
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-136]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 5
push offset _Lt_07AC
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign@20
lea eax, [ebp-148]
push eax
push 88
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-148]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push 5
push -1
movsx eax, word ptr [_STRGAIN_SI]
push eax
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign@20
lea eax, [ebp-172]
push eax
push 88
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-172]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 5
push offset _Lt_07B0
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign@20
lea eax, [ebp-184]
push eax
push 96
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-184]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push -1
push 5
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-188], eax
push offset _Lt_00C1
push 1982
push 65536
push dword ptr [ebp-188]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07BD
jmp eax
.Lt_07BD:
mov eax, dword ptr [ebp-188]
imul eax, 136
push dword ptr [_G_DFA+eax+20]
push dword ptr [_G_DFA+eax+16]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0117
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign@20
lea eax, [ebp-212]
push eax
push 96
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-212]
push eax
call _fb_StrDelete@4
call _LN_OKBUTTON@0
.Lt_079A:
.Lt_0799:
.Lt_0798:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_PORTAL@0
_LN_PORTAL@0:
push ebp
mov ebp, esp
sub esp, 228
push ebx
.Lt_07C0:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-72], eax
push offset _Lt_0830
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-76], eax
mov word ptr [ebp-4], 0
mov word ptr [ebp-8], 0
mov word ptr [ebp-12], 0
mov word ptr [ebp-16], 0
mov word ptr [ebp-20], 0
mov word ptr [ebp-24], 0
mov word ptr [ebp-28], 0
mov word ptr [ebp-32], 0
mov word ptr [ebp-36], 0
mov word ptr [ebp-40], 0
mov word ptr [ebp-44], 0
mov word ptr [ebp-48], 0
mov word ptr [ebp-52], 0
mov word ptr [ebp-56], 0
mov word ptr [ebp-60], 0
mov word ptr [ebp-64], 0
mov word ptr [ebp-68], 0
mov word ptr [ebp-64], 2
mov word ptr [ebp-60], 2
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
mov ax, word ptr [ebp-64]
mov word ptr [ebp-36], ax
movsx eax, word ptr [ebp-36]
add eax, 20
mov word ptr [ebp-44], ax
mov ax, word ptr [ebp-60]
mov word ptr [ebp-40], ax
movsx eax, word ptr [ebp-40]
add eax, 20
mov word ptr [ebp-48], ax
mov word ptr [ebp-52], 1
mov word ptr [ebp-56], 9
movzx eax, word ptr [ebp-56]
push eax
movzx eax, word ptr [ebp-52]
push eax
movzx eax, word ptr [ebp-48]
push eax
movzx eax, word ptr [ebp-44]
push eax
movzx eax, word ptr [ebp-40]
push eax
movzx eax, word ptr [ebp-36]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _FRAME_PUT@32
movsx eax, word ptr [_TY_SI]
imul eax, 21
add eax, -63
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_DD_SI]
push eax
fild dword ptr [esp]
add esp, 4
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
fadd qword ptr [_Lt_0832]
fistp word ptr [ebp-4]
movsx eax, word ptr [_TY_SI]
imul eax, 21
add eax, 63
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_DD_SI]
push eax
fild dword ptr [esp]
add esp, 4
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
fistp word ptr [ebp-8]
movsx eax, word ptr [ebp-4]
test eax, eax
jge .Lt_07C3
mov word ptr [ebp-4], 0
.Lt_07C3:
movsx eax, word ptr [ebp-4]
cmp eax, 20
jle .Lt_07C5
mov word ptr [ebp-4], 20
.Lt_07C5:
movsx eax, word ptr [ebp-8]
test eax, eax
jge .Lt_07C7
mov word ptr [ebp-8], 0
.Lt_07C7:
movsx eax, word ptr [ebp-8]
cmp eax, 21
jle .Lt_07C9
mov word ptr [ebp-8], 21
.Lt_07C9:
movsx eax, word ptr [ebp-44]
sal eax, 3
mov word ptr [ebp-12], ax
movsx eax, word ptr [ebp-44]
sal eax, 3
add eax, 2
mov word ptr [ebp-16], ax
movsx eax, word ptr [ebp-44]
sal eax, 3
inc eax
mov word ptr [ebp-20], ax
movsx eax, word ptr [ebp-36]
movsx ebx, word ptr [ebp-4]
add eax, ebx
dec eax
sal eax, 3
mov word ptr [ebp-24], ax
movsx eax, word ptr [ebp-36]
movsx ebx, word ptr [ebp-8]
add eax, ebx
dec eax
sal eax, 3
dec eax
mov word ptr [ebp-28], ax
push 2
push 4278190080
push 4290822336
movsx eax, word ptr [ebp-28]
push eax
movsx eax, word ptr [ebp-16]
push eax
movsx eax, word ptr [ebp-24]
push eax
movsx eax, word ptr [ebp-12]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_LINE@36
push 2
push 4278190080
push 4294967295
movsx eax, word ptr [ebp-28]
push eax
movsx eax, word ptr [ebp-20]
push eax
movsx eax, word ptr [ebp-24]
push eax
movsx eax, word ptr [ebp-20]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_LINE@36
movsx eax, word ptr [_TX_SI]
imul eax, 21
add eax, -63
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_AA_SI]
push eax
fild dword ptr [esp]
add esp, 4
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
fadd qword ptr [_Lt_0832]
fistp word ptr [ebp-4]
movsx eax, word ptr [_TX_SI]
imul eax, 21
add eax, 63
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_AA_SI]
push eax
fild dword ptr [esp]
add esp, 4
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
fistp word ptr [ebp-8]
movsx eax, word ptr [ebp-4]
test eax, eax
jge .Lt_07CB
mov word ptr [ebp-4], 0
.Lt_07CB:
movsx eax, word ptr [ebp-4]
cmp eax, 20
jle .Lt_07CD
mov word ptr [ebp-4], 20
.Lt_07CD:
movsx eax, word ptr [ebp-8]
test eax, eax
jge .Lt_07CF
mov word ptr [ebp-8], 0
.Lt_07CF:
movsx eax, word ptr [ebp-8]
cmp eax, 21
jle .Lt_07D1
mov word ptr [ebp-8], 21
.Lt_07D1:
movsx eax, word ptr [ebp-40]
movsx ebx, word ptr [ebp-4]
add eax, ebx
dec eax
sal eax, 3
mov word ptr [ebp-12], ax
movsx eax, word ptr [ebp-40]
movsx ebx, word ptr [ebp-8]
add eax, ebx
dec eax
sal eax, 3
dec eax
mov word ptr [ebp-16], ax
movsx eax, word ptr [ebp-48]
sal eax, 3
mov word ptr [ebp-24], ax
movsx eax, word ptr [ebp-48]
sal eax, 3
add eax, 2
mov word ptr [ebp-28], ax
movsx eax, word ptr [ebp-48]
sal eax, 3
inc eax
mov word ptr [ebp-32], ax
push 2
push 4278190080
push 4290822336
movsx eax, word ptr [ebp-28]
push eax
movsx eax, word ptr [ebp-16]
push eax
movsx eax, word ptr [ebp-24]
push eax
movsx eax, word ptr [ebp-12]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_LINE@36
push 2
push 4278190080
push 4294967295
movsx eax, word ptr [ebp-32]
push eax
movsx eax, word ptr [ebp-16]
push eax
movsx eax, word ptr [ebp-32]
push eax
movsx eax, word ptr [ebp-12]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_LINE@36
movsx eax, word ptr [_TX_SI]
add eax, -3
mov word ptr [_DX1_SI], ax
movsx eax, word ptr [_TY_SI]
add eax, -3
mov word ptr [_DY1_SI], ax
movsx eax, word ptr [_TX_SI]
add eax, 3
mov word ptr [_DX2_SI], ax
movsx eax, word ptr [_TY_SI]
add eax, 3
mov word ptr [_DY2_SI], ax
movsx eax, word ptr [_DX1_SI]
cmp eax, 1
jge .Lt_07D3
mov word ptr [_DX1_SI], 1
.Lt_07D3:
.Lt_07D2:
movsx eax, word ptr [_DY1_SI]
cmp eax, 1
jge .Lt_07D5
mov word ptr [_DY1_SI], 1
.Lt_07D5:
.Lt_07D4:
movsx eax, word ptr [_DX2_SI]
movsx ebx, word ptr [_AA_SI]
cmp eax, ebx
jle .Lt_07D7
mov bx, word ptr [_AA_SI]
mov word ptr [_DX2_SI], bx
.Lt_07D7:
.Lt_07D6:
movsx ebx, word ptr [_DY2_SI]
movsx eax, word ptr [_DD_SI]
cmp ebx, eax
jle .Lt_07D9
mov ax, word ptr [_DD_SI]
mov word ptr [_DY2_SI], ax
.Lt_07D9:
.Lt_07D8:
mov ax, word ptr [_DX1_SI]
mov word ptr [_TTX], ax
mov ax, word ptr [_DX2_SI]
mov word ptr [ebp-80], ax
jmp .Lt_07DB
.Lt_07DE:
mov ax, word ptr [_DY1_SI]
mov word ptr [_TTY], ax
mov ax, word ptr [_DY2_SI]
mov word ptr [ebp-84], ax
jmp .Lt_07E0
.Lt_07E3:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 4
push offset _Lt_07E7
push -1
push 5
push offset _Lt_0158
push -1
push 4
push 5
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TTY]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-96], eax
push offset _Lt_00C1
push 2054
push 65536
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0833
jmp eax
.Lt_0833:
mov eax, dword ptr [ebp-96]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TX_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-64]
add eax, ebx
add eax, 9
mov word ptr [ebp-92], ax
lea eax, [ebp-92]
push eax
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-60]
add eax, ebx
add eax, 9
mov word ptr [ebp-88], ax
lea eax, [ebp-88]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
push offset _SPRITEPATH_STR
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 4
push offset _Lt_07E7
push -1
push -1
push 4
push 1
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TTY]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-148], eax
push offset _Lt_00C1
push 2055
push 65536
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0834
jmp eax
.Lt_0834:
mov eax, dword ptr [ebp-148]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrMid@12
push eax
push -1
push 4
push 1
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TTY]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-144], eax
push offset _Lt_00C1
push 2055
push 65536
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0835
jmp eax
.Lt_0835:
mov eax, dword ptr [ebp-144]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign@20
lea eax, [ebp-184]
push eax
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TX_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-64]
add eax, ebx
add eax, 9
mov word ptr [ebp-140], ax
lea eax, [ebp-140]
push eax
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-60]
add eax, ebx
add eax, 9
mov word ptr [ebp-136], ax
lea eax, [ebp-136]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-184]
push eax
call _fb_StrDelete@4
mov ax, word ptr [_TX_SI]
mov word ptr [_TEMPTX_SI], ax
mov ax, word ptr [_TY_SI]
mov word ptr [_TEMPTY_SI], ax
mov ax, word ptr [_TTX]
mov word ptr [_TX_SI], ax
mov ax, word ptr [_TTY]
mov word ptr [_TY_SI], ax
call _LN_TEMPGET@0
mov ax, word ptr [_TEMPTX_SI]
mov word ptr [_TX_SI], ax
mov ax, word ptr [_TEMPTY_SI]
mov word ptr [_TY_SI], ax
mov word ptr [ebp-68], 0
mov word ptr [_T_SI], 1
push -1
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TTY]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-188], eax
push offset _Lt_00C1
push 2064
push 65536
push dword ptr [ebp-188]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0836
jmp eax
.Lt_0836:
mov eax, dword ptr [ebp-188]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
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
fistp word ptr [ebp-192]
jmp .Lt_07F4
.Lt_07F7:
push 0
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TTY]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-196], eax
push offset _Lt_00C1
push 2065
push 65536
push dword ptr [ebp-196]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0837
jmp eax
.Lt_0837:
mov eax, dword ptr [ebp-196]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-208]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_0199
push -1
lea eax, [ebp-208]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_07FB
.Lt_07FC:
mov word ptr [ebp-68], 1
jmp .Lt_07F9
.Lt_07FB:
push 5
push offset _Lt_019C
push -1
lea eax, [ebp-208]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_07FD
.Lt_07FE:
mov word ptr [ebp-68], 1
jmp .Lt_07F9
.Lt_07FD:
push 5
push offset _Lt_019F
push -1
lea eax, [ebp-208]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_07FF
.Lt_0800:
mov word ptr [ebp-68], 1
.Lt_07FF:
.Lt_07F9:
lea eax, [ebp-208]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [ebp-68]
test eax, eax
jle .Lt_0802
push offset _SPRITEPATH_STR
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push 8
push offset _Lt_0618
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TTY]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-204], eax
push offset _Lt_00C1
push 2074
push 65536
push dword ptr [ebp-204]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0838
jmp eax
.Lt_0838:
mov eax, dword ptr [ebp-204]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign@20
lea eax, [ebp-228]
push eax
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TX_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-64]
add eax, ebx
add eax, 9
mov word ptr [ebp-200], ax
lea eax, [ebp-200]
push eax
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-60]
add eax, ebx
add eax, 9
mov word ptr [ebp-196], ax
lea eax, [ebp-196]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-228]
push eax
call _fb_StrDelete@4
.Lt_0802:
.Lt_0801:
.Lt_07F5:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_07F4:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-192]
cmp eax, ebx
jle .Lt_07F7
.Lt_07F6:
push 5
push offset _Lt_0267
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0809
push offset _SPRITEPATH_STR
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 12
push offset _Lt_080C
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign@20
lea eax, [ebp-204]
push eax
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TX_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-64]
add eax, ebx
add eax, 9
mov word ptr [ebp-192], ax
lea eax, [ebp-192]
push eax
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-60]
add eax, ebx
add eax, 9
mov word ptr [ebp-188], ax
lea eax, [ebp-188]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-204]
push eax
call _fb_StrDelete@4
.Lt_0809:
.Lt_0808:
.Lt_07E1:
movsx eax, word ptr [_TTY]
inc eax
mov word ptr [_TTY], ax
.Lt_07E0:
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [ebp-84]
cmp eax, ebx
jle .Lt_07E3
.Lt_07E2:
.Lt_07DC:
movsx ebx, word ptr [_TTX]
inc ebx
mov word ptr [_TTX], bx
.Lt_07DB:
movsx ebx, word ptr [_TTX]
movsx eax, word ptr [ebp-80]
cmp ebx, eax
jle .Lt_07DE
.Lt_07DD:
mov ax, word ptr [_DX1_SI]
mov word ptr [_TTX], ax
mov ax, word ptr [_DX2_SI]
mov word ptr [ebp-80], ax
jmp .Lt_080F
.Lt_0812:
mov ax, word ptr [_DY1_SI]
mov word ptr [_TTY], ax
mov ax, word ptr [_DY2_SI]
mov word ptr [ebp-84], ax
jmp .Lt_0814
.Lt_0817:
mov ax, word ptr [_TX_SI]
mov word ptr [_TEMPTX_SI], ax
mov ax, word ptr [_TY_SI]
mov word ptr [_TEMPTY_SI], ax
mov ax, word ptr [_TTX]
mov word ptr [_TX_SI], ax
mov ax, word ptr [_TTY]
mov word ptr [_TY_SI], ax
call _LN_TEMPGET@0
mov ax, word ptr [_TEMPTX_SI]
mov word ptr [_TX_SI], ax
mov ax, word ptr [_TEMPTY_SI]
mov word ptr [_TY_SI], ax
push 5
push offset _Lt_0600
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_0818
push -1
push offset _TEMPACTION_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_081A
movsx eax, word ptr [_TEMPDIS_SI]
test eax, eax
jle .Lt_081C
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-60]
add eax, ebx
add eax, 9
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TEMPY1_SF]
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TX_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-64]
add eax, ebx
add eax, 9
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TEMPX1_SF]
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
movsx ebx, word ptr [_TEMPD_SI]
mov dword ptr [ebp-88], ebx
push offset _Lt_00C1
push 2095
push 4
push dword ptr [ebp-88]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0839
jmp eax
.Lt_0839:
mov eax, dword ptr [ebp-88]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_TEMPDIS_SI]
imul ecx, eax
add ebx, ecx
imul ebx, 3
movsx ecx, word ptr [ebp-60]
add ebx, ecx
add ebx, 9
push ebx
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TEMPY2_SF]
movsx ebx, word ptr [_TTX]
movsx ecx, word ptr [_TX_SI]
sub ebx, ecx
movsx ecx, word ptr [_TEMPD_SI]
mov dword ptr [ebp-92], ecx
push offset _Lt_00C1
push 2096
push 4
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_083A
jmp eax
.Lt_083A:
mov eax, dword ptr [ebp-92]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_TEMPDIS_SI]
imul ecx, eax
add ebx, ecx
imul ebx, 3
movsx ecx, word ptr [ebp-64]
add ebx, ecx
add ebx, 9
push ebx
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TEMPX2_SF]
push 0
push 4278190080
push 4290806528
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPY2_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPX2_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPY1_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPX1_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_LINE@36
mov word ptr [_T_SF], 0
mov bx, word ptr [_TEMPDIS_SI]
mov word ptr [ebp-96], bx
movsx ebx, word ptr [_TEMPDIS_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0420]
fistp word ptr [ebp-100]
movsx ebx, word ptr [ebp-100]
test ebx, ebx
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-104], ebx
jmp .Lt_0822
.Lt_0825:
movsx ebx, word ptr [_TTY]
movsx ecx, word ptr [_TY_SI]
sub ebx, ecx
movsx ecx, word ptr [_TEMPD_SI]
mov dword ptr [ebp-108], ecx
push offset _Lt_00C1
push 2099
push 4
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_083C
jmp eax
.Lt_083C:
mov eax, dword ptr [ebp-108]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_T_SF]
imul ecx, eax
add ebx, ecx
imul ebx, 3
add ebx, 11
push ebx
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TEMPY_SF]
movsx ebx, word ptr [_TTX]
movsx ecx, word ptr [_TX_SI]
sub ebx, ecx
movsx ecx, word ptr [_TEMPD_SI]
mov dword ptr [ebp-112], ecx
push offset _Lt_00C1
push 2100
push 4
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_083D
jmp eax
.Lt_083D:
mov eax, dword ptr [ebp-112]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_T_SF]
imul ecx, eax
add ebx, ecx
imul ebx, 3
add ebx, 11
push ebx
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TEMPX_SF]
fild word ptr [_T_SF]
fstp dword ptr [_TT_SF]
movsx ebx, word ptr [_TEMPDIS_SI]
cmp ebx, 1
jg .Lt_0829
fild word ptr [_T_SF]
fstp dword ptr [_TT_SF]
jmp .Lt_0828
.Lt_0829:
movsx ebx, word ptr [_T_SF]
movsx ecx, word ptr [_TEMPDIS_SI]
dec ecx
cmp ebx, ecx
jge .Lt_082B
push dword ptr [_Lt_083E]
pop dword ptr [_TT_SF]
jmp .Lt_082A
.Lt_082B:
movsx ecx, word ptr [_T_SF]
movsx ebx, word ptr [_TEMPDIS_SI]
sub ecx, ebx
inc ecx
push ecx
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TT_SF]
.Lt_082A:
.Lt_0828:
fld dword ptr [_TT_SF]
fcomp dword ptr [_Lt_01D6]
fnstsw ax
test ah, 0b00000001
jnz .Lt_082D
push 4278190080
push 4290822336
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPY_SF]
fsub dword ptr [_TT_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_TT_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_TT_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
fld dword ptr [_Lt_083B]
fmul dword ptr [_TEMPX_SF]
fsub dword ptr [_TT_SF]
fadd dword ptr [_Lt_01DE]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
.Lt_082D:
.Lt_082C:
.Lt_0823:
movsx ecx, word ptr [_T_SF]
movsx ebx, word ptr [ebp-100]
add ecx, ebx
mov word ptr [_T_SF], cx
.Lt_0822:
cmp dword ptr [ebp-104], 0
jne .Lt_082E
movsx ecx, word ptr [_T_SF]
movsx ebx, word ptr [ebp-96]
cmp ecx, ebx
jge .Lt_0825
jmp .Lt_0824
.Lt_082E:
movsx ebx, word ptr [_T_SF]
movsx ecx, word ptr [ebp-96]
cmp ebx, ecx
jle .Lt_0825
.Lt_0824:
.Lt_081C:
.Lt_081B:
.Lt_081A:
.Lt_0819:
.Lt_0815:
movsx ecx, word ptr [_TTY]
inc ecx
mov word ptr [_TTY], cx
.Lt_0814:
movsx ecx, word ptr [_TTY]
movsx ebx, word ptr [ebp-84]
cmp ecx, ebx
jle .Lt_0817
.Lt_0816:
.Lt_0810:
movsx ebx, word ptr [_TTX]
inc ebx
mov word ptr [_TTX], bx
.Lt_080F:
movsx ebx, word ptr [_TTX]
movsx ecx, word ptr [ebp-80]
cmp ebx, ecx
jle .Lt_0812
.Lt_0811:
.Lt_07C1:
push dword ptr [ebp-76]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-72]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_TITLE@8
_LN_TITLE@8:
push ebp
mov ebp, esp
sub esp, 20
.Lt_0842:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0847
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
push 1
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
mov word ptr [_COLR_SI], 9
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 37
push offset _Lt_0844
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
push 8
push 16
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push 0
push 0
push -1
push 1
push 4
call _fb_Locate@20
.Lt_0843:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LN_STATUS@0
_LN_STATUS@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0849:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_084C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 24
push 4
call _FRAME_STATUS@8
push 24
push 14
call _FRAME_INVENTORY@8
.Lt_084A:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_FRAMSTTS@0
_LN_FRAMSTTS@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_084E:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0851
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
fild word ptr [_STATX_SI]
fstp dword ptr [_FRAMEX1_SF]
movsx eax, word ptr [_STATX_SI]
add eax, 14
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_FRAMEX2_SF]
push dword ptr [_Lt_01DE]
pop dword ptr [_FRAMEY1_SF]
push dword ptr [_Lt_01E0]
pop dword ptr [_FRAMEY2_SF]
mov word ptr [_FRAMEC1_SI], 4
mov word ptr [_FRAMEC2_SI], 12
call _LN_FRAMEPUT@0
.Lt_084F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_FRAMSTTSITMS@0
_LN_FRAMSTTSITMS@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0853:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0856
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
fild word ptr [_STATX_SI]
fstp dword ptr [_FRAMEX1_SF]
movsx eax, word ptr [_STATX_SI]
add eax, 14
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_FRAMEX2_SF]
push dword ptr [_Lt_0858]
pop dword ptr [_FRAMEY1_SF]
push dword ptr [_Lt_0859]
pop dword ptr [_FRAMEY2_SF]
mov word ptr [_FRAMEC1_SI], 4
mov word ptr [_FRAMEC2_SI], 12
call _LN_FRAMEPUT@0
.Lt_0854:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STTS@16
_LN_STTS@16:
push ebp
mov ebp, esp
sub esp, 260
push ebx
.Lt_085A:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-256], eax
push offset _Lt_087E
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-260], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2162
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0880
jmp eax
.Lt_0880:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
movsx ebx, word ptr [ebp+16]
dec ebx
sal ebx, 3
push ebx
movsx ebx, word ptr [ebp+20]
dec ebx
sal ebx, 3
push ebx
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 3
push offset _Lt_085D
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-16]
push ebx
movsx ebx, word ptr [ebp+16]
sal ebx, 3
push ebx
movsx ebx, word ptr [ebp+20]
dec ebx
sal ebx, 3
push ebx
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-16]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-20], ebx
push offset _Lt_00C1
push 2164
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0881
jmp eax
.Lt_0881:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_Lt_0882]
fadd qword ptr [_G_DFA+eax+80]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
lea eax, [ebp-32]
push eax
movsx eax, word ptr [ebp+16]
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 2
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset _Lt_05C0
push -1
push 5
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-36], eax
push offset _Lt_00C1
push 2165
push 65536
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0883
jmp eax
.Lt_0883:
mov eax, dword ptr [ebp-36]
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push 6
push offset _Lt_0861
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
movsx eax, word ptr [ebp+16]
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 8
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 2
push offset _Lt_05BD
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
movsx eax, word ptr [ebp+16]
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
inc eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 3
push offset _Lt_0867
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
movsx eax, word ptr [ebp+16]
inc eax
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-100], eax
push offset _Lt_00C1
push 2168
push 65536
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0884
jmp eax
.Lt_0884:
mov eax, dword ptr [ebp-100]
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
lea eax, [ebp-112]
push eax
movsx eax, word ptr [ebp+16]
inc eax
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 3
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 2
push offset _Lt_086B
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
lea eax, [ebp-124]
push eax
movsx eax, word ptr [ebp+16]
inc eax
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 8
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-128], eax
push offset _Lt_00C1
push 2170
push 65536
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0886
jmp eax
.Lt_0886:
mov eax, dword ptr [ebp-128]
imul eax, 136
fld qword ptr [_G_DFA+eax+88]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrAssign@20
lea eax, [ebp-140]
push eax
movsx eax, word ptr [ebp+16]
inc eax
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 10
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-140]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 4
push offset _Lt_086F
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign@20
lea eax, [ebp-152]
push eax
movsx eax, word ptr [ebp+16]
add eax, 2
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-152]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-156], eax
push offset _Lt_00C1
push 2172
push 65536
push dword ptr [ebp-156]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0887
jmp eax
.Lt_0887:
mov eax, dword ptr [ebp-156]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign@20
lea eax, [ebp-168]
push eax
movsx eax, word ptr [ebp+16]
add eax, 2
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 3
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-168]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 2
push offset _Lt_086B
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
lea eax, [ebp-180]
push eax
movsx eax, word ptr [ebp+16]
add eax, 2
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 8
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-184], eax
push offset _Lt_00C1
push 2174
push 65536
push dword ptr [ebp-184]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0888
jmp eax
.Lt_0888:
mov eax, dword ptr [ebp-184]
imul eax, 136
fld qword ptr [_G_DFA+eax+96]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign@20
lea eax, [ebp-196]
push eax
movsx eax, word ptr [ebp+16]
add eax, 2
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 10
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-196]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 4
push offset _Lt_0876
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign@20
lea eax, [ebp-208]
push eax
movsx eax, word ptr [ebp+16]
add eax, 3
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-208]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-212], eax
push offset _Lt_00C1
push 2176
push 65536
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0889
jmp eax
.Lt_0889:
mov eax, dword ptr [ebp-212]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign@20
lea eax, [ebp-224]
push eax
movsx eax, word ptr [ebp+16]
add eax, 3
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 3
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-224]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 2
push offset _Lt_086B
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign@20
lea eax, [ebp-236]
push eax
movsx eax, word ptr [ebp+16]
add eax, 3
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 8
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-236]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-240], eax
push offset _Lt_00C1
push 2178
push 65536
push dword ptr [ebp-240]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_088A
jmp eax
.Lt_088A:
mov eax, dword ptr [ebp-240]
imul eax, 136
fld qword ptr [_G_DFA+eax+104]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign@20
lea eax, [ebp-252]
push eax
movsx eax, word ptr [ebp+16]
add eax, 3
sal eax, 3
push eax
movsx eax, word ptr [ebp+20]
add eax, 10
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
lea eax, [ebp-252]
push eax
call _fb_StrDelete@4
.Lt_085B:
push dword ptr [ebp-260]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-256]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _LN_STTSGPIC@0
_LN_STTSGPIC@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_088B:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_088E
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_088C:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STTSITMS@0
_LN_STTSITMS@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0890:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0893
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_0891:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_MOVE@0
_LN_MOVE@0:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0895:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_08B1
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
push 4
push offset _Lt_058B
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2225
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B3
jmp eax
.Lt_08B3:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_058B
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2226
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B4
jmp eax
.Lt_08B4:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 9
push offset _Lt_0899
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_ARE@0
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 2229
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B5
jmp eax
.Lt_08B5:
mov eax, dword ptr [ebp-12]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_01C3]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_ARE_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_089C
mov word ptr [_MOVE_SI], 1
push 0
push 5
push offset _Lt_089D
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx ebx, word ptr [_HERE_SI]
test ebx, ebx
jle .Lt_089F
mov word ptr [_MOVE_SI], 0
.Lt_089F:
push 0
push 5
push offset _Lt_089D
push -1
push offset _THERE_STR
call _fb_StrAssign@20
call _LN_THERE@0
movsx ebx, word ptr [_THERE_SI]
test ebx, ebx
jle .Lt_08A1
mov word ptr [_MOVE_SI], 0
.Lt_08A1:
push 0
push 5
push offset _Lt_08A2
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
push 0
push 13
push offset _Lt_08A3
push -1
push offset _THERE_STR
call _fb_StrAssign@20
call _LN_THERE@0
movsx ebx, word ptr [_HERE_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_THERE_SI]
test eax, eax
setle al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_08A5
mov word ptr [_MOVE_SI], 0
.Lt_08A5:
movsx eax, word ptr [_MOVE_SI]
cmp eax, 1
jne .Lt_08A7
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_EX_SI]
cmp eax, ebx
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_DY_SI]
cmp ebx, ecx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_08A9
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_08AB
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C1
push 2247
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B6
jmp eax
.Lt_08B6:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_EX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-36], ecx
push offset _Lt_00C1
push 2248
push 4
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B7
jmp eax
.Lt_08B7:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_DY_SI], bx
.Lt_08AB:
.Lt_08AA:
.Lt_08A9:
.Lt_08A8:
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx eax, word ptr [_AA_SI]
imul ecx, eax
add ebx, ecx
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 2251
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B8
jmp eax
.Lt_08B8:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_0832]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 2251
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B9
jmp eax
.Lt_08B9:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_08A7:
.Lt_08A6:
.Lt_089C:
.Lt_089B:
.Lt_0896:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINGMOVE@0
_LN_WINGMOVE@0:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_08C1:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_08D3
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
push 4
push offset _Lt_058B
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2259
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D5
jmp eax
.Lt_08D5:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_058B
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2260
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D6
jmp eax
.Lt_08D6:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 9
push offset _Lt_0899
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_ARE@0
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 2263
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D7
jmp eax
.Lt_08D7:
mov eax, dword ptr [ebp-12]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_0320]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_ARE_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_08C7
mov word ptr [_MOVE_SI], 1
movsx ebx, word ptr [_MOVE_SI]
cmp ebx, 1
jne .Lt_08C9
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_EX_SI]
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_TY_SI]
movsx ecx, word ptr [_DY_SI]
cmp eax, ecx
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_08CB
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_08CD
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-32], ebx
push offset _Lt_00C1
push 2270
push 4
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D8
jmp eax
.Lt_08D8:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_EX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-36], ecx
push offset _Lt_00C1
push 2271
push 4
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D9
jmp eax
.Lt_08D9:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_DY_SI], bx
.Lt_08CD:
.Lt_08CC:
.Lt_08CB:
.Lt_08CA:
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx eax, word ptr [_AA_SI]
imul ecx, eax
add ebx, ecx
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 2274
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08DA
jmp eax
.Lt_08DA:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_0329]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 2274
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08DB
jmp eax
.Lt_08DB:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_08C9:
.Lt_08C8:
.Lt_08C7:
.Lt_08C6:
.Lt_08C2:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_FIREMOVE@0
_LN_FIREMOVE@0:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_08E1:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_08F3
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2282
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F5
jmp eax
.Lt_08F5:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_01C3]
fnstsw ax
test ah, 0b00000001
jnz .Lt_08E5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_EX_SI]
cmp eax, ebx
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_DY_SI]
cmp ebx, ecx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_08E9
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_08EB
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C1
push 2288
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F6
jmp eax
.Lt_08F6:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_EX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-36], ecx
push offset _Lt_00C1
push 2289
push 4
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F7
jmp eax
.Lt_08F7:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_DY_SI], bx
.Lt_08EB:
.Lt_08EA:
.Lt_08E9:
.Lt_08E8:
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2292
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F8
jmp eax
.Lt_08F8:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_058B
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2293
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F9
jmp eax
.Lt_08F9:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 2294
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08FA
jmp eax
.Lt_08FA:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_0832]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 2294
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08FB
jmp eax
.Lt_08FB:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_08E7:
.Lt_08E6:
jmp .Lt_08E4
.Lt_08E5:
call _LN_GONE@0
.Lt_08E4:
.Lt_08E2:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WEBMOVE@0
_LN_WEBMOVE@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_08FF:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-20], eax
push offset _Lt_090C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-24], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_EX_SI]
cmp eax, ebx
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_DY_SI]
cmp ebx, ecx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0902
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_0904
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 2308
push 4
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_090E
jmp eax
.Lt_090E:
mov eax, dword ptr [ebp-28]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_EX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-32], ecx
push offset _Lt_00C1
push 2309
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_090F
jmp eax
.Lt_090F:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_DY_SI], bx
.Lt_0904:
.Lt_0903:
.Lt_0902:
.Lt_0901:
push 4
push offset _Lt_058B
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2312
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0910
jmp eax
.Lt_0910:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_058B
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2313
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0911
jmp eax
.Lt_0911:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-16], ebx
push offset _Lt_00C1
push 2314
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0912
jmp eax
.Lt_0912:
mov eax, dword ptr [ebp-16]
imul eax, 136
fld qword ptr [_Lt_0832]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 2314
push 65536
push dword ptr [ebp-12]
fstp qword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0913
jmp eax
.Lt_0913:
mov eax, dword ptr [ebp-12]
imul eax, 136
push dword ptr [ebp-32]
push dword ptr [ebp-28]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_0900:
push dword ptr [ebp-24]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-20]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTFIRE@0
_LN_CASTFIRE@0:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0917:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0923
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2320
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0925
jmp eax
.Lt_0925:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0469]
fnstsw ax
test ah, 0b00000001
jnz .Lt_091B
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2321
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0926
jmp eax
.Lt_0926:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_027E
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2322
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0927
jmp eax
.Lt_0927:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 2323
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0928
jmp eax
.Lt_0928:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_0929]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 2323
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_092A
jmp eax
.Lt_092A:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 6
push offset _Lt_0920
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_0921
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_027E
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push 0
push -1
movsx eax, word ptr [_D_SI]
push eax
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_058B
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push dword ptr [_Lt_092B]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01E8]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_092B]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D1]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01E8]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_091B:
.Lt_091A:
.Lt_0918:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTDUST@0
_LN_CASTDUST@0:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_092D:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0938
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2347
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_093A
jmp eax
.Lt_093A:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0420]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0931
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2348
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_093B
jmp eax
.Lt_093B:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_014C
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2349
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_093C
jmp eax
.Lt_093C:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 2350
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_093D
jmp eax
.Lt_093D:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_04B4]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 2350
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_093E
jmp eax
.Lt_093E:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 12
push offset _Lt_0936
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_058B
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_014C
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push 0
push -1
movsx eax, word ptr [_D_SI]
push eax
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_058B
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push dword ptr [_Lt_092B]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01E8]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_092B]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D1]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01E8]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0931:
.Lt_0930:
.Lt_092E:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTWEB@0
_LN_CASTWEB@0:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_0940:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0948
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2374
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_094A
jmp eax
.Lt_094A:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_094B]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0944
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2375
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_094C
jmp eax
.Lt_094C:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_Lt_094D]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2375
push 65536
push dword ptr [ebp-16]
fstp qword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_094E
jmp eax
.Lt_094E:
mov eax, dword ptr [ebp-16]
imul eax, 136
push dword ptr [ebp-28]
push dword ptr [ebp-24]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 4
push offset _Lt_0171
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0160
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_016F
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push 0
push -1
movsx eax, word ptr [_D_SI]
push eax
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_058B
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D1]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D1]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0944:
.Lt_0943:
.Lt_0941:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTSPDR@0
_LN_CASTSPDR@0:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_0950:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0958
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2399
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_095A
jmp eax
.Lt_095A:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_095B]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0954
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2400
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_095C
jmp eax
.Lt_095C:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_Lt_095D]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2400
push 65536
push dword ptr [ebp-16]
fstp qword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_095E
jmp eax
.Lt_095E:
mov eax, dword ptr [ebp-16]
imul eax, 136
push dword ptr [ebp-28]
push dword ptr [ebp-24]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_0162
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0163
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0160
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_058B
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0954:
.Lt_0953:
.Lt_0951:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTCCTS@0
_LN_CASTCCTS@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0960:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0964
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_0962
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0283
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0966]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0961:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTDTBY@0
_LN_CASTDTBY@0:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_0967:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0970
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2446
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0972
jmp eax
.Lt_0972:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0973]
fnstsw ax
test ah, 0b00000001
jnz .Lt_096B
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2447
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0974
jmp eax
.Lt_0974:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_Lt_0975]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2447
push 65536
push dword ptr [ebp-16]
fstp qword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0976
jmp eax
.Lt_0976:
mov eax, dword ptr [ebp-16]
imul eax, 136
push dword ptr [ebp-28]
push dword ptr [ebp-24]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_0182
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_096E
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push -1
push 1
call _fb_MKL@4
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0180
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_058B
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0977]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D7]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01DA]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D7]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01DB]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01C2]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_096B:
.Lt_096A:
.Lt_0968:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_GONE@0
_LN_GONE@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0979:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_097C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_PRFLBLNK@0
call _LN_PRFLSET@0
.Lt_097A:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_DELETE2@0
_LN_DELETE2@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_097E:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0981
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_PRFLBLNK@0
call _LN_PRFLMAKE@0
.Lt_097F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_AUTOLEVELUP@0
_LN_AUTOLEVELUP@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0983:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0988
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jne .Lt_0986
call _LN_LEVELUP@0
.Lt_0986:
.Lt_0985:
.Lt_0984:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STATGAIN@0
_LN_STATGAIN@0:
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
.Lt_098A:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_0993
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2493
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0995
jmp eax
.Lt_0995:
mov eax, dword ptr [ebp-8]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 2493
push 65536
push dword ptr [ebp-12]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0996
jmp eax
.Lt_0996:
mov eax, dword ptr [ebp-12]
imul eax, 136
fld qword ptr [_G_DFA+eax+32]
fadd qword ptr [_G_DFA+ebx+16]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-4], ebx
push offset _Lt_00C1
push 2493
push 65536
push dword ptr [ebp-4]
fstp qword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0997
jmp eax
.Lt_0997:
mov eax, dword ptr [ebp-4]
imul eax, 136
push dword ptr [ebp-40]
push dword ptr [ebp-36]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2494
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0998
jmp eax
.Lt_0998:
mov eax, dword ptr [ebp-20]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 2494
push 65536
push dword ptr [ebp-24]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0999
jmp eax
.Lt_0999:
mov eax, dword ptr [ebp-24]
imul eax, 136
fld qword ptr [_G_DFA+eax+112]
fadd qword ptr [_G_DFA+ebx+24]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-16], ebx
push offset _Lt_00C1
push 2494
push 65536
push dword ptr [ebp-16]
fstp qword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_099A
jmp eax
.Lt_099A:
mov eax, dword ptr [ebp-16]
imul eax, 136
push dword ptr [ebp-48]
push dword ptr [ebp-44]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
.Lt_098B:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-28]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STATMAX@0
_LN_STATMAX@0:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
.Lt_099D:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_09B2
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2499
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B4
jmp eax
.Lt_09B4:
mov eax, dword ptr [ebp-4]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-8], ebx
push offset _Lt_00C1
push 2499
push 65536
push dword ptr [ebp-8]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B5
jmp eax
.Lt_09B5:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+ebx+8]
fcomp qword ptr [_G_DFA+eax+88]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_09A2
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-40], eax
push offset _Lt_00C1
push 2500
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B6
jmp eax
.Lt_09B6:
mov eax, dword ptr [ebp-40]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-36], ebx
push offset _Lt_00C1
push 2500
push 65536
push dword ptr [ebp-36]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B7
jmp eax
.Lt_09B7:
mov eax, dword ptr [ebp-36]
imul eax, 136
push dword ptr [_G_DFA+ebx+88]
push dword ptr [_G_DFA+ebx+92]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
.Lt_09A2:
.Lt_09A1:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 2502
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B8
jmp eax
.Lt_09B8:
mov eax, dword ptr [ebp-12]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-16], ebx
push offset _Lt_00C1
push 2502
push 65536
push dword ptr [ebp-16]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B9
jmp eax
.Lt_09B9:
mov eax, dword ptr [ebp-16]
imul eax, 136
fld qword ptr [_G_DFA+ebx+16]
fcomp qword ptr [_G_DFA+eax+96]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_09A8
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-40], eax
push offset _Lt_00C1
push 2503
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BA
jmp eax
.Lt_09BA:
mov eax, dword ptr [ebp-40]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-36], ebx
push offset _Lt_00C1
push 2503
push 65536
push dword ptr [ebp-36]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BB
jmp eax
.Lt_09BB:
mov eax, dword ptr [ebp-36]
imul eax, 136
push dword ptr [_G_DFA+ebx+96]
push dword ptr [_G_DFA+ebx+100]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_09A8:
.Lt_09A7:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-20], ebx
push offset _Lt_00C1
push 2505
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BC
jmp eax
.Lt_09BC:
mov eax, dword ptr [ebp-20]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 2505
push 65536
push dword ptr [ebp-24]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BD
jmp eax
.Lt_09BD:
mov eax, dword ptr [ebp-24]
imul eax, 136
fld qword ptr [_G_DFA+ebx+24]
fcomp qword ptr [_G_DFA+eax+104]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_09AE
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-40], eax
push offset _Lt_00C1
push 2506
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BE
jmp eax
.Lt_09BE:
mov eax, dword ptr [ebp-40]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-36], ebx
push offset _Lt_00C1
push 2506
push 65536
push dword ptr [ebp-36]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BF
jmp eax
.Lt_09BF:
mov eax, dword ptr [ebp-36]
imul eax, 136
push dword ptr [_G_DFA+ebx+104]
push dword ptr [_G_DFA+ebx+108]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
.Lt_09AE:
.Lt_09AD:
.Lt_099E:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-28]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_NEXTACTION@0
_LN_NEXTACTION@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_09C0:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_09C7
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jne .Lt_09C3
call _LN_NEWACTION@0
call _LN_PUTACTION@0
.Lt_09C5:
.Lt_09C4:
jmp .Lt_09C2
.Lt_09C3:
call _LN_GETACTION@0
.Lt_09C2:
.Lt_09C1:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_NEWACTION@0
_LN_NEWACTION@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_09C9:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_09CE
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_GETACTION@0
push 5
push offset _Lt_0267
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_DIS_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
not eax
test eax, eax
je .Lt_09CC
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
fmul qword ptr [_Lt_0322]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_01C3]
fistp word ptr [_D_SI]
call _LN_RANDOMACTION@0
mov word ptr [_DIS_SI], 0
.Lt_09CC:
.Lt_09CB:
.Lt_09CA:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_RANDOMACTION@0
_LN_RANDOMACTION@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_09D2:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_09D9
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2536
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09DB
jmp eax
.Lt_09DB:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [_R_SI]
push dword ptr [_Lt_01C2]
call _fb_Rnd@4
movsx eax, word ptr [_R_SI]
inc eax
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
fmulp
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fistp word ptr [_R_SI]
movsx eax, word ptr [_R_SI]
test eax, eax
jne .Lt_09D6
push 0
push 5
push offset _Lt_0158
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
jmp .Lt_09D5
.Lt_09D6:
push 0
push -1
push 4
movsx eax, word ptr [_R_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2541
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09DC
jmp eax
.Lt_09DC:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
.Lt_09D5:
.Lt_09D3:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_GETACTION@0
_LN_GETACTION@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_09DD:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_09E3
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2547
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09E5
jmp eax
.Lt_09E5:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_D_SI], ax
push 0
push -1
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2548
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09E6
jmp eax
.Lt_09E6:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push 9
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 2549
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09E7
jmp eax
.Lt_09E7:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_DIS_SI], ax
.Lt_09DE:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_PUTACTION@0
_LN_PUTACTION@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_09E8:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_09EE
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
movsx eax, word ptr [_D_SI]
push eax
call _fb_MKL@4
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2554
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09F0
jmp eax
.Lt_09F0:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
push offset _ACTION_STR
push 4
push 5
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-8], ebx
push offset _Lt_00C1
push 2555
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09F1
jmp eax
.Lt_09F1:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_DIS_SI]
push ebx
call _fb_MKL@4
push eax
push 4
push 9
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 2556
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09F2
jmp eax
.Lt_09F2:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
.Lt_09E9:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_TEMPGET@0
_LN_TEMPGET@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_09F3:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_09F9
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2561
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09FB
jmp eax
.Lt_09FB:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_TEMPD_SI], ax
push 0
push -1
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2562
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09FC
jmp eax
.Lt_09FC:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _TEMPACTION_STR
call _fb_StrAssign@20
push 4
push 9
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 2563
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09FD
jmp eax
.Lt_09FD:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_TEMPDIS_SI], ax
.Lt_09F4:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_TEMPPUT@0
_LN_TEMPPUT@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_09FE:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0A04
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
movsx eax, word ptr [_TEMPD_SI]
push eax
call _fb_MKL@4
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2568
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A06
jmp eax
.Lt_0A06:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
push offset _TEMPACTION_STR
push 4
push 5
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-8], ebx
push offset _Lt_00C1
push 2569
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A07
jmp eax
.Lt_0A07:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TEMPDIS_SI]
push ebx
call _fb_MKL@4
push eax
push 4
push 9
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 2570
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A08
jmp eax
.Lt_0A08:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
.Lt_09FF:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_INBOUNDS@0
_LN_INBOUNDS@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.Lt_0A09:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-20], eax
push offset _Lt_0A12
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-24], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C1
push 2575
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A14
jmp eax
.Lt_0A14:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
cmp ebx, 1
setge bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2575
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A15
jmp eax
.Lt_0A15:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
movsx ecx, word ptr [_AA_SI]
cmp esi, ecx
setle dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ebx, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-12], ecx
push offset _Lt_00C1
push 2575
push 4
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A16
jmp eax
.Lt_0A16:
mov eax, dword ptr [ebp-12]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
cmp esi, 1
setge dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ebx, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-16], ecx
push offset _Lt_00C1
push 2575
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A17
jmp eax
.Lt_0A17:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
movsx ecx, word ptr [_DD_SI]
cmp esi, ecx
setle dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ebx, esi
je .Lt_0A10
mov word ptr [_INBOUNDS_SI], 1
jmp .Lt_0A0F
.Lt_0A10:
mov word ptr [_INBOUNDS_SI], 0
.Lt_0A0F:
.Lt_0A0A:
push dword ptr [ebp-24]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-20]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HAVEIT@0
_LN_HAVEIT@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0A1C:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0A27
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
mov word ptr [_HAVEIT_SI], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2585
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A29
jmp eax
.Lt_0A29:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
push -1
push offset _T_STR
call _fb_StrAssign@20
push -1
push offset _T_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-16], ax
jmp .Lt_0A20
.Lt_0A23:
push 0
push -1
push 4
movsx eax, word ptr [_TT_SI]
sal eax, 2
add eax, -3
push eax
push offset _T_STR
call _fb_StrMid@12
push eax
push -1
push offset _TT_STR
call _fb_StrAssign@20
push -1
push offset _HAVEIT_STR
push -1
push offset _TT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0A25
movsx eax, word ptr [_HAVEIT_SI]
inc eax
mov word ptr [_HAVEIT_SI], ax
.Lt_0A25:
.Lt_0A24:
.Lt_0A21:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_0A20:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-16]
cmp eax, ebx
jle .Lt_0A23
.Lt_0A22:
.Lt_0A1D:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HASIT@0
_LN_HASIT@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.Lt_0A2A:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0A37
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
mov word ptr [_HASIT_SI], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C1
push 2598
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A39
jmp eax
.Lt_0A39:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2598
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A3A
jmp eax
.Lt_0A3A:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 2598
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A3B
jmp eax
.Lt_0A3B:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
push -1
push offset _T_STR
call _fb_StrAssign@20
push -1
push offset _T_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-24], ax
jmp .Lt_0A30
.Lt_0A33:
push 0
push -1
push 4
movsx eax, word ptr [_TT_SI]
sal eax, 2
add eax, -3
push eax
push offset _T_STR
call _fb_StrMid@12
push eax
push -1
push offset _TT_STR
call _fb_StrAssign@20
push -1
push offset _HASIT_STR
push -1
push offset _TT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0A35
movsx eax, word ptr [_HASIT_SI]
inc eax
mov word ptr [_HASIT_SI], ax
.Lt_0A35:
.Lt_0A34:
.Lt_0A31:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_0A30:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-24]
cmp eax, ebx
jle .Lt_0A33
.Lt_0A32:
.Lt_0A2B:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HAVEHADIT@0
_LN_HAVEHADIT@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_0A3C:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0A49
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2610
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A4B
jmp eax
.Lt_0A4B:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
push -1
push offset _T_STR
call _fb_StrAssign@20
push -1
push offset _T_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-20], ax
jmp .Lt_0A40
.Lt_0A43:
push 0
push -1
push 4
movsx eax, word ptr [_TT_SI]
sal eax, 2
add eax, -3
push eax
push offset _T_STR
call _fb_StrMid@12
push eax
push -1
push offset _TT_STR
call _fb_StrAssign@20
push -1
push offset _HAVEHADIT_STR
push -1
push offset _TT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0A45
push 0
push -1
push -1
movsx eax, word ptr [_T_SI]
sal eax, 2
movsx ebx, word ptr [_TT_SI]
sal ebx, 2
sub eax, ebx
push eax
push offset _T_STR
call _fb_RIGHT@8
push eax
push -1
movsx eax, word ptr [_TT_SI]
sal eax, 2
add eax, -4
push eax
push offset _T_STR
call _fb_LEFT@8
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _T_STR
call _fb_StrAssign@20
mov ax, word ptr [_T_SI]
mov word ptr [_TT_SI], ax
.Lt_0A45:
.Lt_0A44:
.Lt_0A41:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_0A40:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-20]
cmp eax, ebx
jle .Lt_0A43
.Lt_0A42:
push 0
push -1
push offset _T_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-8], ebx
push offset _Lt_00C1
push 2619
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A4C
jmp eax
.Lt_0A4C:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
.Lt_0A3D:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HASHADIT@0
_LN_HASHADIT@0:
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
.Lt_0A4D:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_0A5E
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C1
push 2624
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A60
jmp eax
.Lt_0A60:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2624
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A61
jmp eax
.Lt_0A61:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 2624
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A62
jmp eax
.Lt_0A62:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
push -1
push offset _T_STR
call _fb_StrAssign@20
push -1
push offset _T_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-36], ax
jmp .Lt_0A53
.Lt_0A56:
push 0
push -1
push 4
movsx eax, word ptr [_TT_SI]
sal eax, 2
add eax, -3
push eax
push offset _T_STR
call _fb_StrMid@12
push eax
push -1
push offset _TT_STR
call _fb_StrAssign@20
push -1
push offset _HASHADIT_STR
push -1
push offset _TT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0A58
push 0
push -1
push -1
movsx eax, word ptr [_T_SI]
sal eax, 2
movsx ebx, word ptr [_TT_SI]
sal ebx, 2
sub eax, ebx
push eax
push offset _T_STR
call _fb_RIGHT@8
push eax
push -1
movsx eax, word ptr [_TT_SI]
sal eax, 2
add eax, -4
push eax
push offset _T_STR
call _fb_LEFT@8
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _T_STR
call _fb_StrAssign@20
mov ax, word ptr [_T_SI]
mov word ptr [_TT_SI], ax
.Lt_0A58:
.Lt_0A57:
.Lt_0A54:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_0A53:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-36]
cmp eax, ebx
jle .Lt_0A56
.Lt_0A55:
push 0
push -1
push offset _T_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2633
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A63
jmp eax
.Lt_0A63:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2633
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A64
jmp eax
.Lt_0A64:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 2633
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A65
jmp eax
.Lt_0A65:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
.Lt_0A4E:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-28]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HAVEGOTIT@0
_LN_HAVEGOTIT@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0A66:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0A6B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2638
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A6D
jmp eax
.Lt_0A6D:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
push -1
push offset _T_STR
call _fb_StrAssign@20
push 0
push -1
push offset _T_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-8], ebx
push offset _Lt_00C1
push 2639
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A6E
jmp eax
.Lt_0A6E:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _HAVEGOTIT_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-8], ebx
push offset _Lt_00C1
push 2639
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A6F
jmp eax
.Lt_0A6F:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrConcatAssign@20
.Lt_0A67:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HASGOTIT@0
_LN_HASGOTIT@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_0A70:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_0A79
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C1
push 2644
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7B
jmp eax
.Lt_0A7B:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2644
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7C
jmp eax
.Lt_0A7C:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 2644
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7D
jmp eax
.Lt_0A7D:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
push -1
push offset _T_STR
call _fb_StrAssign@20
push 0
push -1
push offset _T_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2645
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7E
jmp eax
.Lt_0A7E:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2645
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7F
jmp eax
.Lt_0A7F:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 2645
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A80
jmp eax
.Lt_0A80:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _HASGOTIT_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2645
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A81
jmp eax
.Lt_0A81:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2645
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A82
jmp eax
.Lt_0A82:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 2645
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A83
jmp eax
.Lt_0A83:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrConcatAssign@20
.Lt_0A71:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-28]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINEXP@0
_LN_WINEXP@0:
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
.Lt_0A84:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0A92
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C1
push 2650
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A94
jmp eax
.Lt_0A94:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2650
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A95
jmp eax
.Lt_0A95:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 2650
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A96
jmp eax
.Lt_0A96:
mov eax, dword ptr [ebp-12]
imul eax, 136
fld qword ptr [_G_DFA+eax+48]
fistp word ptr [_GETIT_SI]
movsx eax, word ptr [_GETIT_SI]
test eax, eax
jle .Lt_0A8A
push 0
push -1
movsx eax, word ptr [_GETIT_SI]
push eax
call _fb_IntToStr@4
push eax
push -1
push offset _GETIT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0A8B
push -1
push offset _GETIT_STR
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push offset _GETIT_STR
call _fb_StrLen@8
dec eax
push eax
push offset _GETIT_STR
call _fb_RIGHT@8
push eax
push -1
push offset _GETIT_STR
call _fb_StrAssign@20
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 2654
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A97
jmp eax
.Lt_0A97:
mov eax, dword ptr [ebp-28]
imul eax, 136
movsx ebx, word ptr [_GETIT_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 2654
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A98
jmp eax
.Lt_0A98:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-48]
push dword ptr [ebp-44]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
call _LN_GETIT@0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-32], ebx
push offset _Lt_00C1
push 2656
push 4
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A99
jmp eax
.Lt_0A99:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-36], eax
push offset _Lt_00C1
push 2656
push 4
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A9A
jmp eax
.Lt_0A9A:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-40], ebx
push offset _Lt_00C1
push 2656
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A9B
jmp eax
.Lt_0A9B:
mov eax, dword ptr [ebp-40]
imul eax, 136
push dword ptr [_Lt_0298]
push dword ptr [_Lt_0298+4]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
.Lt_0A8A:
.Lt_0A89:
.Lt_0A85:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINDGGR@0
_LN_WINDGGR@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0A9D:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AA0
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_0179
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0A9E:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINPIKE@0
_LN_WINPIKE@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0AA2:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AA5
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_0191
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0AA3:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINGRPL@0
_LN_WINGRPL@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0AA7:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AAA
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_0600
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0AA8:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINSEED@0
_LN_WINSEED@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0AAC:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AAF
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_0605
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0AAD:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINKEY1@0
_LN_WINKEY1@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0AB1:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AB4
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_01B2
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0AB2:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINKEY2@0
_LN_WINKEY2@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0AB6:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AB9
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_01B3
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0AB7:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINIT@0
_LN_WINIT@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0ABB:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AC2
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push -1
push offset _WINIT_STR
push -1
push offset _GETIT_STR
call _fb_StrAssign@20
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jne .Lt_0ABE
jmp .Lt_0ABC
.Lt_0ABE:
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jle .Lt_0AC0
jmp .Lt_0ABC
.Lt_0AC0:
call _LN_GETIT@0
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
.Lt_0ABC:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_AM@0
_LN_AM@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0AC4:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0ACF
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_AM_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _AM_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [ebp-12]
jmp .Lt_0AC7
.Lt_0ACA:
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2708
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0AD1
jmp eax
.Lt_0AD1:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
push offset _AM_STR
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0ACD
movsx eax, word ptr [_AM_SI]
inc eax
mov word ptr [_AM_SI], ax
.Lt_0ACD:
.Lt_0ACC:
.Lt_0AC8:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0AC7:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-12]
cmp eax, ebx
jle .Lt_0ACA
.Lt_0AC9:
.Lt_0AC5:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ARE@0
_LN_ARE@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.Lt_0AD2:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0ADF
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_ARE_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _ARE_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [ebp-12]
jmp .Lt_0AD5
.Lt_0AD8:
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-16], ebx
push offset _Lt_00C1
push 2718
push 4
push dword ptr [ebp-16]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0AE1
jmp eax
.Lt_0AE1:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2718
push 4
push dword ptr [ebp-20]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0AE2
jmp eax
.Lt_0AE2:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 2718
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0AE3
jmp eax
.Lt_0AE3:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
push offset _ARE_STR
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0ADD
movsx eax, word ptr [_ARE_SI]
inc eax
mov word ptr [_ARE_SI], ax
.Lt_0ADD:
.Lt_0ADC:
.Lt_0AD6:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0AD5:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-12]
cmp eax, ebx
jle .Lt_0AD8
.Lt_0AD7:
.Lt_0AD3:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HERE@0
_LN_HERE@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0AE4:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AEF
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_HERE_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _HERE_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [ebp-12]
jmp .Lt_0AE7
.Lt_0AEA:
push -1
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2728
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0AF1
jmp eax
.Lt_0AF1:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
push offset _HERE_STR
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0AED
movsx eax, word ptr [_HERE_SI]
inc eax
mov word ptr [_HERE_SI], ax
.Lt_0AED:
.Lt_0AEC:
.Lt_0AE8:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0AE7:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-12]
cmp eax, ebx
jle .Lt_0AEA
.Lt_0AE9:
.Lt_0AE5:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_THERE@0
_LN_THERE@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.Lt_0AF2:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AFF
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_THERE_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _THERE_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [ebp-12]
jmp .Lt_0AF5
.Lt_0AF8:
push -1
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-16], ebx
push offset _Lt_00C1
push 2738
push 4
push dword ptr [ebp-16]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B01
jmp eax
.Lt_0B01:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2738
push 4
push dword ptr [ebp-20]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B02
jmp eax
.Lt_0B02:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 2738
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B03
jmp eax
.Lt_0B03:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
push offset _THERE_STR
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0AFD
movsx eax, word ptr [_THERE_SI]
inc eax
mov word ptr [_THERE_SI], ax
.Lt_0AFD:
.Lt_0AFC:
.Lt_0AF6:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0AF5:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-12]
cmp eax, ebx
jle .Lt_0AF8
.Lt_0AF7:
.Lt_0AF3:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_BLANKCHECK@0
_LN_BLANKCHECK@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0B04:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B09
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push -1
push offset _BLANKCHECK_STR
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_INBOUNDS@0
movsx eax, word ptr [_INBOUNDS_SI]
cmp eax, 1
jne .Lt_0B07
call _LN_ARE@0
jmp .Lt_0B06
.Lt_0B07:
mov word ptr [_ARE_SI], -1
.Lt_0B06:
mov ax, word ptr [_ARE_SI]
mov word ptr [_BLANKCHECK_SI], ax
.Lt_0B05:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_OKBUTTON@0
_LN_OKBUTTON@0:
push ebp
mov ebp, esp
sub esp, 20
.Lt_0B0B:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0B10
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
push dword ptr [_CLV_BUFFER_MENU]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 4
push offset _Lt_0B0D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
push 176
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_MENU]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
call _LN_WWAIT@0
push dword ptr [_CLV_BUFFER_MENU]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
.Lt_0B0C:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WWAIT@0
_LN_WWAIT@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0B12:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B19
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_0B14:
call _LN_BUTTONWAIT@0
.Lt_0B16:
push 5
push offset _Lt_0B17
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_YM_SI]
cmp ebx, 23
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
cmp ecx, 25
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
not eax
test eax, eax
jne .Lt_0B14
.Lt_0B15:
push 0
push 2
push offset _Lt_02C4
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0B13:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_BUTTONWAIT@0
_LN_BUTTONWAIT@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0B1F:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B22
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0B20:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_COMMANDWAIT@0
_LN_COMMANDWAIT@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0B24:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B2A
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 3
push offset _Lt_0B26
push -1
push offset _C_STR
call _fb_StrAssign@20
mov word ptr [_LB_SI], 0
.Lt_0B27:
push 3
push offset _Lt_0B26
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_LB_SI]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0B28
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_0B27
.Lt_0B28:
.Lt_0B25:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_FRAMEPUT@0
_LN_FRAMEPUT@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0B2E:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B31
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 4
push 4278190080
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B33]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B33]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 2
push 4278190080
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_083E]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_083E]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_01D6]
push dword ptr [_Lt_01D6]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B34]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B35]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4286808963
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_01CF]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_01D6]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_01D6]
push dword ptr [_Lt_01D6]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B35]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B34]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4286808963
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_01D6]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_01CF]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_01D6]
push dword ptr [_Lt_01D6]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B36]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B36]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4290822336
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_01C2]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_01C2]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_01D6]
push dword ptr [_Lt_01D6]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4286808963
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B36]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B36]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_01C2]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_01C2]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0B37]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B36]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B38]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083B]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_01C2]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
.Lt_0B2F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_AVGFRAME@0
_LN_AVGFRAME@0:
push ebp
mov ebp, esp
sub esp, 40
.Lt_0B39:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_0B3C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-40], eax
mov word ptr [ebp-4], 0
mov word ptr [ebp-8], 0
mov word ptr [ebp-12], 0
mov word ptr [ebp-16], 0
mov word ptr [ebp-20], 0
mov word ptr [ebp-24], 0
mov word ptr [ebp-28], 0
mov word ptr [ebp-32], 0
mov word ptr [ebp-28], 4
mov word ptr [ebp-32], 25
mov ax, word ptr [ebp-32]
mov word ptr [ebp-4], ax
movsx eax, word ptr [ebp-32]
add eax, 15
mov word ptr [ebp-8], ax
mov ax, word ptr [ebp-28]
mov word ptr [ebp-16], ax
movsx eax, word ptr [ebp-28]
add eax, 20
mov word ptr [ebp-16], ax
mov word ptr [ebp-20], 4
mov word ptr [ebp-24], 12
movzx eax, word ptr [ebp-24]
push eax
movzx eax, word ptr [ebp-20]
push eax
movzx eax, word ptr [ebp-16]
push eax
movzx eax, word ptr [ebp-8]
push eax
movzx eax, word ptr [ebp-16]
push eax
movzx eax, word ptr [ebp-4]
push eax
push dword ptr [_CLV_BUFFER_MENU]
push offset _CLV_BUFFER
call _FRAME_PUT@32
.Lt_0B3A:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-36]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_SCREENSET@0
_LN_SCREENSET@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0B3E:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B41
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0B3F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_FINDCRSR@0
_LN_FINDCRSR@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0B43:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B46
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _fb_GetY@0
mov word ptr [_CRSRY_SI], ax
push 0
call _fb_Pos@4
mov word ptr [_CRSRX_SI], ax
.Lt_0B44:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_SHOWTEXT@8
_LN_SHOWTEXT@8:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0B48:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B4B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_FINDCRSR@0
push offset _TEXTS_STR
movsx eax, word ptr [_CRSRY_SI]
dec eax
sal eax, 3
push eax
movsx eax, word ptr [_CRSRX_SI]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
push 0
push 0
push -1
push 1
movsx eax, word ptr [_CRSRY_SI]
inc eax
push eax
call _fb_Locate@20
.Lt_0B49:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LN_PRFLBLNK@0
_LN_PRFLBLNK@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0B4D:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B50
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 1
push offset _Lt_0000
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0158
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0158
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
push offset _PRFLCMND_STR
call _fb_StrConcatAssign@20
push 0
push 9
push offset _Lt_015B
push -1
push offset _PRFLGPICACTN_STR
call _fb_StrAssign@20
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLEXP_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLEVAD_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLBLNK_SF]
.Lt_0B4E:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_PRFLSET@0
_LN_PRFLSET@0:
push ebp
mov ebp, esp
sub esp, 100
push ebx
.Lt_0B52:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-96], eax
push offset _Lt_0B6C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-100], eax
push 0
push -1
push offset _PRFLIDTY_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 2871
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B6E
jmp eax
.Lt_0B6E:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLACTN_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-8], ebx
push offset _Lt_00C1
push 2872
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B6F
jmp eax
.Lt_0B6F:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
push offset _PRFLGPIC_STR
push 4
push 1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 2873
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B70
jmp eax
.Lt_0B70:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
push 0
push -1
push offset _PRFLCMND_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-16], ebx
push offset _Lt_00C1
push 2874
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B71
jmp eax
.Lt_0B71:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLGPICACTN_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-20], ebx
push offset _Lt_00C1
push 2875
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B72
jmp eax
.Lt_0B72:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLACTNCT_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 2876
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B73
jmp eax
.Lt_0B73:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+60]
push ebx
call _fb_StrAssign@20
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 2877
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B74
jmp eax
.Lt_0B74:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld dword ptr [_PRFLIDTY_SF]
fstp qword ptr [_G_DFA+eax]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-32], eax
push offset _Lt_00C1
push 2878
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B75
jmp eax
.Lt_0B75:
mov eax, dword ptr [ebp-32]
imul eax, 136
fld dword ptr [_PRFLHP_SF]
fstp qword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-36], eax
push offset _Lt_00C1
push 2879
push 65536
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B76
jmp eax
.Lt_0B76:
mov eax, dword ptr [ebp-36]
imul eax, 136
fld dword ptr [_PRFLSTR_SF]
fstp qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-40], eax
push offset _Lt_00C1
push 2880
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B77
jmp eax
.Lt_0B77:
mov eax, dword ptr [ebp-40]
imul eax, 136
fld dword ptr [_PRFLESS_SF]
fstp qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 2881
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B78
jmp eax
.Lt_0B78:
mov eax, dword ptr [ebp-44]
imul eax, 136
fld dword ptr [_PRFLSPD_SF]
fstp qword ptr [_G_DFA+eax+32]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-48], eax
push offset _Lt_00C1
push 2882
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B79
jmp eax
.Lt_0B79:
mov eax, dword ptr [ebp-48]
imul eax, 136
fld dword ptr [_PRFLARMR_SF]
fstp qword ptr [_G_DFA+eax+40]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-52], eax
push offset _Lt_00C1
push 2883
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7A
jmp eax
.Lt_0B7A:
mov eax, dword ptr [ebp-52]
imul eax, 136
fld dword ptr [_PRFLEXP_SF]
fstp qword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-56], eax
push offset _Lt_00C1
push 2884
push 65536
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7B
jmp eax
.Lt_0B7B:
mov eax, dword ptr [ebp-56]
imul eax, 136
fld dword ptr [_PRFLVALU_SF]
fstp qword ptr [_G_DFA+eax+56]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-60], eax
push offset _Lt_00C1
push 2885
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7C
jmp eax
.Lt_0B7C:
mov eax, dword ptr [ebp-60]
imul eax, 136
fld dword ptr [_PRFLPIRC_SF]
fstp qword ptr [_G_DFA+eax+64]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-64], eax
push offset _Lt_00C1
push 2886
push 65536
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7D
jmp eax
.Lt_0B7D:
mov eax, dword ptr [ebp-64]
imul eax, 136
fld dword ptr [_PRFLCHCK_SF]
fstp qword ptr [_G_DFA+eax+72]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-68], eax
push offset _Lt_00C1
push 2887
push 65536
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7E
jmp eax
.Lt_0B7E:
mov eax, dword ptr [ebp-68]
imul eax, 136
fld dword ptr [_PRFLLV_SF]
fstp qword ptr [_G_DFA+eax+80]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-72], eax
push offset _Lt_00C1
push 2888
push 65536
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7F
jmp eax
.Lt_0B7F:
mov eax, dword ptr [ebp-72]
imul eax, 136
fld dword ptr [_PRFLHPMAX_SF]
fstp qword ptr [_G_DFA+eax+88]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-76], eax
push offset _Lt_00C1
push 2889
push 65536
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B80
jmp eax
.Lt_0B80:
mov eax, dword ptr [ebp-76]
imul eax, 136
fld dword ptr [_PRFLSTRMAX_SF]
fstp qword ptr [_G_DFA+eax+96]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-80], eax
push offset _Lt_00C1
push 2890
push 65536
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B81
jmp eax
.Lt_0B81:
mov eax, dword ptr [ebp-80]
imul eax, 136
fld dword ptr [_PRFLESSMAX_SF]
fstp qword ptr [_G_DFA+eax+104]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-84], eax
push offset _Lt_00C1
push 2891
push 65536
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B82
jmp eax
.Lt_0B82:
mov eax, dword ptr [ebp-84]
imul eax, 136
fld dword ptr [_PRFLESSSPD_SF]
fstp qword ptr [_G_DFA+eax+112]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-88], eax
push offset _Lt_00C1
push 2892
push 65536
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B83
jmp eax
.Lt_0B83:
mov eax, dword ptr [ebp-88]
imul eax, 136
fld dword ptr [_PRFLEVAD_SF]
fstp qword ptr [_G_DFA+eax+120]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-92], eax
push offset _Lt_00C1
push 2893
push 65536
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B84
jmp eax
.Lt_0B84:
mov eax, dword ptr [ebp-92]
imul eax, 136
fld dword ptr [_PRFLBLNK_SF]
fstp qword ptr [_G_DFA+eax+128]
.Lt_0B53:
push dword ptr [ebp-100]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-96]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_PRFLMAKE@0
_LN_PRFLMAKE@0:
push ebp
mov ebp, esp
sub esp, 284
push ebx
push esi
.Lt_0B85:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-280], eax
push offset _Lt_0BCD
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-284], eax
push 0
push -1
push offset _PRFLIDTY_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C1
push 2898
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BCF
jmp eax
.Lt_0BCF:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 2898
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD0
jmp eax
.Lt_0BD0:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 2898
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD1
jmp eax
.Lt_0BD1:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLACTN_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-16], eax
push offset _Lt_00C1
push 2899
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD2
jmp eax
.Lt_0BD2:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 2899
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD3
jmp eax
.Lt_0BD3:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-24], ebx
push offset _Lt_00C1
push 2899
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD4
jmp eax
.Lt_0BD4:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
push offset _PRFLGPIC_STR
push 4
push 1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 2900
push 4
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD5
jmp eax
.Lt_0BD5:
mov eax, dword ptr [ebp-28]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C1
push 2900
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD6
jmp eax
.Lt_0BD6:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-36], ebx
push offset _Lt_00C1
push 2900
push 65536
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD7
jmp eax
.Lt_0BD7:
mov eax, dword ptr [ebp-36]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
push 0
push -1
push offset _PRFLCMND_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-40], eax
push offset _Lt_00C1
push 2901
push 4
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD8
jmp eax
.Lt_0BD8:
mov eax, dword ptr [ebp-40]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 2901
push 4
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD9
jmp eax
.Lt_0BD9:
mov eax, dword ptr [ebp-44]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-48], ebx
push offset _Lt_00C1
push 2901
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDA
jmp eax
.Lt_0BDA:
mov eax, dword ptr [ebp-48]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLGPICACTN_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-52], eax
push offset _Lt_00C1
push 2902
push 4
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDB
jmp eax
.Lt_0BDB:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C1
push 2902
push 4
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDC
jmp eax
.Lt_0BDC:
mov eax, dword ptr [ebp-56]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-60], ebx
push offset _Lt_00C1
push 2902
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDD
jmp eax
.Lt_0BDD:
mov eax, dword ptr [ebp-60]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLACTNCT_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-64], eax
push offset _Lt_00C1
push 2903
push 4
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDE
jmp eax
.Lt_0BDE:
mov eax, dword ptr [ebp-64]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-68], eax
push offset _Lt_00C1
push 2903
push 4
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDF
jmp eax
.Lt_0BDF:
mov eax, dword ptr [ebp-68]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-72], ebx
push offset _Lt_00C1
push 2903
push 65536
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE0
jmp eax
.Lt_0BE0:
mov eax, dword ptr [ebp-72]
imul eax, 108
lea ebx, [_E_STRA+eax+60]
push ebx
call _fb_StrAssign@20
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-76], eax
push offset _Lt_00C1
push 2904
push 4
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE1
jmp eax
.Lt_0BE1:
mov eax, dword ptr [ebp-76]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-80], eax
push offset _Lt_00C1
push 2904
push 4
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE2
jmp eax
.Lt_0BE2:
mov eax, dword ptr [ebp-80]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-84], ebx
push offset _Lt_00C1
push 2904
push 65536
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE3
jmp eax
.Lt_0BE3:
mov eax, dword ptr [ebp-84]
imul eax, 136
fld dword ptr [_PRFLIDTY_SF]
fstp qword ptr [_G_DFA+eax]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-88], ebx
push offset _Lt_00C1
push 2905
push 4
push dword ptr [ebp-88]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE4
jmp eax
.Lt_0BE4:
mov eax, dword ptr [ebp-88]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-92], eax
push offset _Lt_00C1
push 2905
push 4
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE5
jmp eax
.Lt_0BE5:
mov eax, dword ptr [ebp-92]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-96], ebx
push offset _Lt_00C1
push 2905
push 65536
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE6
jmp eax
.Lt_0BE6:
mov eax, dword ptr [ebp-96]
imul eax, 136
fld dword ptr [_PRFLHP_SF]
fstp qword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-100], ebx
push offset _Lt_00C1
push 2906
push 4
push dword ptr [ebp-100]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE7
jmp eax
.Lt_0BE7:
mov eax, dword ptr [ebp-100]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-104], eax
push offset _Lt_00C1
push 2906
push 4
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE8
jmp eax
.Lt_0BE8:
mov eax, dword ptr [ebp-104]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-108], ebx
push offset _Lt_00C1
push 2906
push 65536
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE9
jmp eax
.Lt_0BE9:
mov eax, dword ptr [ebp-108]
imul eax, 136
fld dword ptr [_PRFLSTR_SF]
fstp qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-112], ebx
push offset _Lt_00C1
push 2907
push 4
push dword ptr [ebp-112]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BEA
jmp eax
.Lt_0BEA:
mov eax, dword ptr [ebp-112]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-116], eax
push offset _Lt_00C1
push 2907
push 4
push dword ptr [ebp-116]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BEB
jmp eax
.Lt_0BEB:
mov eax, dword ptr [ebp-116]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-120], ebx
push offset _Lt_00C1
push 2907
push 65536
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BEC
jmp eax
.Lt_0BEC:
mov eax, dword ptr [ebp-120]
imul eax, 136
fld dword ptr [_PRFLESS_SF]
fstp qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-124], ebx
push offset _Lt_00C1
push 2908
push 4
push dword ptr [ebp-124]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BED
jmp eax
.Lt_0BED:
mov eax, dword ptr [ebp-124]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-128], eax
push offset _Lt_00C1
push 2908
push 4
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BEE
jmp eax
.Lt_0BEE:
mov eax, dword ptr [ebp-128]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-132], ebx
push offset _Lt_00C1
push 2908
push 65536
push dword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BEF
jmp eax
.Lt_0BEF:
mov eax, dword ptr [ebp-132]
imul eax, 136
fld dword ptr [_PRFLSPD_SF]
fstp qword ptr [_G_DFA+eax+32]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-136], ebx
push offset _Lt_00C1
push 2909
push 4
push dword ptr [ebp-136]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF0
jmp eax
.Lt_0BF0:
mov eax, dword ptr [ebp-136]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-140], eax
push offset _Lt_00C1
push 2909
push 4
push dword ptr [ebp-140]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF1
jmp eax
.Lt_0BF1:
mov eax, dword ptr [ebp-140]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-144], ebx
push offset _Lt_00C1
push 2909
push 65536
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF2
jmp eax
.Lt_0BF2:
mov eax, dword ptr [ebp-144]
imul eax, 136
fld dword ptr [_PRFLARMR_SF]
fstp qword ptr [_G_DFA+eax+40]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-148], ebx
push offset _Lt_00C1
push 2910
push 4
push dword ptr [ebp-148]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF3
jmp eax
.Lt_0BF3:
mov eax, dword ptr [ebp-148]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-152], eax
push offset _Lt_00C1
push 2910
push 4
push dword ptr [ebp-152]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF4
jmp eax
.Lt_0BF4:
mov eax, dword ptr [ebp-152]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-156], ebx
push offset _Lt_00C1
push 2910
push 65536
push dword ptr [ebp-156]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF5
jmp eax
.Lt_0BF5:
mov eax, dword ptr [ebp-156]
imul eax, 136
fld dword ptr [_PRFLEXP_SF]
fstp qword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-160], ebx
push offset _Lt_00C1
push 2911
push 4
push dword ptr [ebp-160]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF6
jmp eax
.Lt_0BF6:
mov eax, dword ptr [ebp-160]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-164], eax
push offset _Lt_00C1
push 2911
push 4
push dword ptr [ebp-164]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF7
jmp eax
.Lt_0BF7:
mov eax, dword ptr [ebp-164]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-168], ebx
push offset _Lt_00C1
push 2911
push 65536
push dword ptr [ebp-168]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF8
jmp eax
.Lt_0BF8:
mov eax, dword ptr [ebp-168]
imul eax, 136
fld dword ptr [_PRFLVALU_SF]
fstp qword ptr [_G_DFA+eax+56]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-172], ebx
push offset _Lt_00C1
push 2912
push 4
push dword ptr [ebp-172]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF9
jmp eax
.Lt_0BF9:
mov eax, dword ptr [ebp-172]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-176], eax
push offset _Lt_00C1
push 2912
push 4
push dword ptr [ebp-176]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFA
jmp eax
.Lt_0BFA:
mov eax, dword ptr [ebp-176]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-180], ebx
push offset _Lt_00C1
push 2912
push 65536
push dword ptr [ebp-180]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFB
jmp eax
.Lt_0BFB:
mov eax, dword ptr [ebp-180]
imul eax, 136
fld dword ptr [_PRFLPIRC_SF]
fstp qword ptr [_G_DFA+eax+64]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-184], ebx
push offset _Lt_00C1
push 2913
push 4
push dword ptr [ebp-184]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFC
jmp eax
.Lt_0BFC:
mov eax, dword ptr [ebp-184]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-188], eax
push offset _Lt_00C1
push 2913
push 4
push dword ptr [ebp-188]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFD
jmp eax
.Lt_0BFD:
mov eax, dword ptr [ebp-188]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-192], ebx
push offset _Lt_00C1
push 2913
push 65536
push dword ptr [ebp-192]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFE
jmp eax
.Lt_0BFE:
mov eax, dword ptr [ebp-192]
imul eax, 136
fld dword ptr [_PRFLCHCK_SF]
fstp qword ptr [_G_DFA+eax+72]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-196], ebx
push offset _Lt_00C1
push 2914
push 4
push dword ptr [ebp-196]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFF
jmp eax
.Lt_0BFF:
mov eax, dword ptr [ebp-196]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-200], eax
push offset _Lt_00C1
push 2914
push 4
push dword ptr [ebp-200]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C00
jmp eax
.Lt_0C00:
mov eax, dword ptr [ebp-200]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-204], ebx
push offset _Lt_00C1
push 2914
push 65536
push dword ptr [ebp-204]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C01
jmp eax
.Lt_0C01:
mov eax, dword ptr [ebp-204]
imul eax, 136
fld dword ptr [_PRFLLV_SF]
fstp qword ptr [_G_DFA+eax+80]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-208], ebx
push offset _Lt_00C1
push 2915
push 4
push dword ptr [ebp-208]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C02
jmp eax
.Lt_0C02:
mov eax, dword ptr [ebp-208]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-212], eax
push offset _Lt_00C1
push 2915
push 4
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C03
jmp eax
.Lt_0C03:
mov eax, dword ptr [ebp-212]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-216], ebx
push offset _Lt_00C1
push 2915
push 65536
push dword ptr [ebp-216]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C04
jmp eax
.Lt_0C04:
mov eax, dword ptr [ebp-216]
imul eax, 136
fld dword ptr [_PRFLHPMAX_SF]
fstp qword ptr [_G_DFA+eax+88]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-220], ebx
push offset _Lt_00C1
push 2916
push 4
push dword ptr [ebp-220]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C05
jmp eax
.Lt_0C05:
mov eax, dword ptr [ebp-220]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-224], eax
push offset _Lt_00C1
push 2916
push 4
push dword ptr [ebp-224]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C06
jmp eax
.Lt_0C06:
mov eax, dword ptr [ebp-224]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-228], ebx
push offset _Lt_00C1
push 2916
push 65536
push dword ptr [ebp-228]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C07
jmp eax
.Lt_0C07:
mov eax, dword ptr [ebp-228]
imul eax, 136
fld dword ptr [_PRFLSTRMAX_SF]
fstp qword ptr [_G_DFA+eax+96]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-232], ebx
push offset _Lt_00C1
push 2917
push 4
push dword ptr [ebp-232]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C08
jmp eax
.Lt_0C08:
mov eax, dword ptr [ebp-232]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-236], eax
push offset _Lt_00C1
push 2917
push 4
push dword ptr [ebp-236]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C09
jmp eax
.Lt_0C09:
mov eax, dword ptr [ebp-236]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-240], ebx
push offset _Lt_00C1
push 2917
push 65536
push dword ptr [ebp-240]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0A
jmp eax
.Lt_0C0A:
mov eax, dword ptr [ebp-240]
imul eax, 136
fld dword ptr [_PRFLESSMAX_SF]
fstp qword ptr [_G_DFA+eax+104]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-244], ebx
push offset _Lt_00C1
push 2918
push 4
push dword ptr [ebp-244]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0B
jmp eax
.Lt_0C0B:
mov eax, dword ptr [ebp-244]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-248], eax
push offset _Lt_00C1
push 2918
push 4
push dword ptr [ebp-248]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0C
jmp eax
.Lt_0C0C:
mov eax, dword ptr [ebp-248]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-252], ebx
push offset _Lt_00C1
push 2918
push 65536
push dword ptr [ebp-252]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0D
jmp eax
.Lt_0C0D:
mov eax, dword ptr [ebp-252]
imul eax, 136
fld dword ptr [_PRFLESSSPD_SF]
fstp qword ptr [_G_DFA+eax+112]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-256], ebx
push offset _Lt_00C1
push 2919
push 4
push dword ptr [ebp-256]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0E
jmp eax
.Lt_0C0E:
mov eax, dword ptr [ebp-256]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-260], eax
push offset _Lt_00C1
push 2919
push 4
push dword ptr [ebp-260]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0F
jmp eax
.Lt_0C0F:
mov eax, dword ptr [ebp-260]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-264], ebx
push offset _Lt_00C1
push 2919
push 65536
push dword ptr [ebp-264]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C10
jmp eax
.Lt_0C10:
mov eax, dword ptr [ebp-264]
imul eax, 136
fld dword ptr [_PRFLEVAD_SF]
fstp qword ptr [_G_DFA+eax+120]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-268], ebx
push offset _Lt_00C1
push 2920
push 4
push dword ptr [ebp-268]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C11
jmp eax
.Lt_0C11:
mov eax, dword ptr [ebp-268]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-272], eax
push offset _Lt_00C1
push 2920
push 4
push dword ptr [ebp-272]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C12
jmp eax
.Lt_0C12:
mov eax, dword ptr [ebp-272]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-276], ebx
push offset _Lt_00C1
push 2920
push 65536
push dword ptr [ebp-276]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C13
jmp eax
.Lt_0C13:
mov eax, dword ptr [ebp-276]
imul eax, 136
fld dword ptr [_PRFLBLNK_SF]
fstp qword ptr [_G_DFA+eax+128]
.Lt_0B86:
push dword ptr [ebp-284]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-280]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNCURE@0
_LN_ACTNCURE@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C14:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C1E
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C17
jmp .Lt_0C15
.Lt_0C17:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C19
jmp .Lt_0C15
.Lt_0C19:
push 0
push 29
push offset _Lt_0C1A
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C1C
call _LN_USECURE@0
jmp .Lt_0C15
.Lt_0C1C:
.Lt_0C1B:
.Lt_0C15:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNBITE@0
_LN_ACTNBITE@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C20:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C29
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C23
jmp .Lt_0C21
.Lt_0C23:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C25
jmp .Lt_0C21
.Lt_0C25:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C27
call _LN_ATTKBITE@0
jmp .Lt_0C21
.Lt_0C27:
.Lt_0C26:
.Lt_0C21:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNPNCH@0
_LN_ACTNPNCH@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C2B:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C34
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C2E
jmp .Lt_0C2C
.Lt_0C2E:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C30
jmp .Lt_0C2C
.Lt_0C30:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C32
call _LN_ATTKPNCH@0
jmp .Lt_0C2C
.Lt_0C32:
.Lt_0C31:
.Lt_0C2C:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNKICK@0
_LN_ACTNKICK@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C36:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C3F
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C39
jmp .Lt_0C37
.Lt_0C39:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C3B
jmp .Lt_0C37
.Lt_0C3B:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C3D
call _LN_ATTKKICK@0
jmp .Lt_0C37
.Lt_0C3D:
.Lt_0C3C:
.Lt_0C37:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNDGGR@0
_LN_ACTNDGGR@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C41:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C4A
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C44
jmp .Lt_0C42
.Lt_0C44:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C46
jmp .Lt_0C42
.Lt_0C46:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C48
call _LN_ATTKDGGR@0
jmp .Lt_0C42
.Lt_0C48:
.Lt_0C47:
.Lt_0C42:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNPIKE@0
_LN_ACTNPIKE@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C4C:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C55
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C4F
jmp .Lt_0C4D
.Lt_0C4F:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C51
jmp .Lt_0C4D
.Lt_0C51:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C53
call _LN_ATTKPIKE@0
jmp .Lt_0C4D
.Lt_0C53:
.Lt_0C52:
.Lt_0C4D:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNVNOM@0
_LN_ACTNVNOM@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C57:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C60
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C5A
jmp .Lt_0C58
.Lt_0C5A:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C5C
jmp .Lt_0C58
.Lt_0C5C:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C5E
call _LN_ATTKVNOM@0
jmp .Lt_0C58
.Lt_0C5E:
.Lt_0C5D:
.Lt_0C58:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNFIRE@0
_LN_ACTNFIRE@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C62:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C6B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C65
jmp .Lt_0C63
.Lt_0C65:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C67
call _LN_CASTFIRE@0
jmp .Lt_0C63
.Lt_0C67:
.Lt_0C66:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C69
call _LN_ATTKFIRE@0
jmp .Lt_0C63
.Lt_0C69:
.Lt_0C68:
.Lt_0C63:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNDUST@0
_LN_ACTNDUST@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C6D:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C76
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C70
jmp .Lt_0C6E
.Lt_0C70:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C72
call _LN_CASTDUST@0
jmp .Lt_0C6E
.Lt_0C72:
.Lt_0C71:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C74
call _LN_USESLEP@0
jmp .Lt_0C6E
.Lt_0C74:
.Lt_0C73:
.Lt_0C6E:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNWEB@0
_LN_ACTNWEB@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C78:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C81
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C7B
jmp .Lt_0C79
.Lt_0C7B:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C7D
call _LN_CASTWEB@0
jmp .Lt_0C79
.Lt_0C7D:
.Lt_0C7C:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C7F
call _LN_ATTKWEB@0
jmp .Lt_0C79
.Lt_0C7F:
.Lt_0C7E:
.Lt_0C79:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNSPDR@0
_LN_ACTNSPDR@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C83:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C8A
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C86
jmp .Lt_0C84
.Lt_0C86:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C88
call _LN_CASTSPDR@0
jmp .Lt_0C84
.Lt_0C88:
.Lt_0C87:
.Lt_0C84:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNCCTS@0
_LN_ACTNCCTS@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C8C:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C93
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C8F
jmp .Lt_0C8D
.Lt_0C8F:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C91
call _LN_CASTCCTS@0
jmp .Lt_0C8D
.Lt_0C91:
.Lt_0C90:
.Lt_0C8D:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNDTBY@0
_LN_ACTNDTBY@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C95:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C9C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C98
jmp .Lt_0C96
.Lt_0C98:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C9A
call _LN_CASTDTBY@0
jmp .Lt_0C96
.Lt_0C9A:
.Lt_0C99:
.Lt_0C96:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNMOVE@0
_LN_ACTNMOVE@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0C9E:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0CA3
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0CA1
jmp .Lt_0C9F
.Lt_0CA1:
call _LN_MOVE@0
.Lt_0C9F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNWING@0
_LN_ACTNWING@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0CA5:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0CAA
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0CA8
jmp .Lt_0CA6
.Lt_0CA8:
call _LN_WINGMOVE@0
.Lt_0CA6:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNWSTF@0
_LN_ACTNWSTF@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0CAC:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0CB7
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_01B5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CAF
mov word ptr [_DIS_SI], 2
push 0
push 9
push offset _Lt_0899
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CB1
mov ax, word ptr [_TX_SI]
mov word ptr [_TEMPTX_SI], ax
mov ax, word ptr [_TY_SI]
mov word ptr [_TEMPTY_SI], ax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-12], ebx
push offset _Lt_00C1
push 3148
push 4
push dword ptr [ebp-12]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CB9
jmp eax
.Lt_0CB9:
mov eax, dword ptr [ebp-12]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
add ebx, ecx
mov word ptr [_TX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-16], ecx
push offset _Lt_00C1
push 3149
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CBA
jmp eax
.Lt_0CBA:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
add ebx, ecx
mov word ptr [_TY_SI], bx
mov word ptr [_DIS_SI], 1
call _LN_SWAPDATA@0
mov bx, word ptr [_TEMPTX_SI]
mov word ptr [_TX_SI], bx
mov bx, word ptr [_TEMPTY_SI]
mov word ptr [_TY_SI], bx
jmp .Lt_0CAD
.Lt_0CB1:
.Lt_0CB0:
.Lt_0CAF:
.Lt_0CAE:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0CB5
call _LN_ATTKWSTF@0
.Lt_0CB5:
.Lt_0CB4:
.Lt_0CAD:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNKEY1@0
_LN_ACTNKEY1@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0CBB:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0CC2
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0193
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CBE
push 0
push 5
push offset _Lt_0199
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0CC0
push 0
push 5
push offset _Lt_0199
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
push 0
push 5
push offset _Lt_01B2
push -1
push offset _HAVEHADIT_STR
call _fb_StrAssign@20
call _LN_HAVEHADIT@0
call _LN_DELETE2@0
.Lt_0CC0:
.Lt_0CBF:
.Lt_0CBE:
.Lt_0CBD:
.Lt_0CBC:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNKEY2@0
_LN_ACTNKEY2@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0CC4:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0CCB
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0193
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CC7
push 0
push 5
push offset _Lt_019C
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0CC9
push 0
push 5
push offset _Lt_019C
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
push 0
push 5
push offset _Lt_01B3
push -1
push offset _HAVEHADIT_STR
call _fb_StrAssign@20
call _LN_HAVEHADIT@0
call _LN_DELETE2@0
.Lt_0CC9:
.Lt_0CC8:
.Lt_0CC7:
.Lt_0CC6:
.Lt_0CC5:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNISPT@0
_LN_ACTNISPT@0:
push ebp
mov ebp, esp
sub esp, 76
push ebx
push esi
.Lt_0CCD:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-32], eax
push offset _Lt_0CF8
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-36], eax
mov word ptr [ebp-4], 0
mov word ptr [_DIS_SI], 1
call _LN_PUTACTION@0
push 0
push 5
push offset _Lt_0158
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0CD0
jmp .Lt_0CCE
.Lt_0CD0:
push 9
push offset _Lt_01A7
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 3208
push 4
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFA
jmp eax
.Lt_0CFA:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 3208
push 4
push dword ptr [ebp-12]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFB
jmp eax
.Lt_0CFB:
mov eax, dword ptr [ebp-12]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-16], ebx
push offset _Lt_00C1
push 3208
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFC
jmp eax
.Lt_0CFC:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_0CD5
call _LN_MERCHANT@0
jmp .Lt_0CCE
.Lt_0CD5:
.Lt_0CD4:
push 11
push offset _Lt_017D
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-20], ebx
push offset _Lt_00C1
push 3212
push 4
push dword ptr [ebp-20]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFD
jmp eax
.Lt_0CFD:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 3212
push 4
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFE
jmp eax
.Lt_0CFE:
mov eax, dword ptr [ebp-24]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 3212
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFF
jmp eax
.Lt_0CFF:
mov eax, dword ptr [ebp-28]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_0CDA
call _LN_TALK0001@0
jmp .Lt_0CCE
.Lt_0CDA:
.Lt_0CD9:
push 0
push 9
push offset _Lt_0CDB
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CDD
call _LN_PILLAGE@0
push 0
push 5
push offset _Lt_052B
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CDF
call _LN_DELETE2@0
.Lt_0CDF:
.Lt_0CDE:
jmp .Lt_0CCE
.Lt_0CDD:
.Lt_0CDC:
push 0
push 5
push offset _Lt_0193
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CE1
mov word ptr [ebp-4], 0
mov word ptr [_T_SI], 1
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-40], ebx
push offset _Lt_00C1
push 3230
push 4
push dword ptr [ebp-40]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D00
jmp eax
.Lt_0D00:
mov eax, dword ptr [ebp-40]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 3230
push 4
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D01
jmp eax
.Lt_0D01:
mov eax, dword ptr [ebp-44]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-48], ebx
push offset _Lt_00C1
push 3230
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D02
jmp eax
.Lt_0D02:
mov eax, dword ptr [ebp-48]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
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
fistp word ptr [ebp-52]
jmp .Lt_0CE6
.Lt_0CE9:
push 0
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-56], ebx
push offset _Lt_00C1
push 3231
push 4
push dword ptr [ebp-56]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D03
jmp eax
.Lt_0D03:
mov eax, dword ptr [ebp-56]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-60], eax
push offset _Lt_00C1
push 3231
push 4
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D04
jmp eax
.Lt_0D04:
mov eax, dword ptr [ebp-60]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-64], ebx
push offset _Lt_00C1
push 3231
push 65536
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D05
jmp eax
.Lt_0D05:
mov eax, dword ptr [ebp-64]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_0199
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0CEF
.Lt_0CF0:
mov word ptr [ebp-4], 1
jmp .Lt_0CED
.Lt_0CEF:
push 5
push offset _Lt_019C
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0CF1
.Lt_0CF2:
mov word ptr [ebp-4], 1
jmp .Lt_0CED
.Lt_0CF1:
push 5
push offset _Lt_019F
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0CF3
.Lt_0CF4:
mov word ptr [ebp-4], 1
.Lt_0CF3:
.Lt_0CED:
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
.Lt_0CE7:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0CE6:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-52]
cmp eax, ebx
jle .Lt_0CE9
.Lt_0CE8:
movsx ebx, word ptr [ebp-4]
test ebx, ebx
jne .Lt_0CF6
call _LN_DELETE2@0
.Lt_0CF6:
.Lt_0CF5:
jmp .Lt_0CCE
.Lt_0CE1:
.Lt_0CE0:
.Lt_0CCE:
push dword ptr [ebp-36]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-32]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNFIREMOVE@0
_LN_ACTNFIREMOVE@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0D08:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0D11
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_0899
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0D0B
call _LN_GONE@0
jmp .Lt_0D09
.Lt_0D0B:
.Lt_0D0A:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D0D
call _LN_FIREMOVE@0
jmp .Lt_0D09
.Lt_0D0D:
.Lt_0D0C:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D0F
call _LN_ATTKBURN@0
call _LN_GONE@0
jmp .Lt_0D09
.Lt_0D0F:
.Lt_0D0E:
call _LN_GONE@0
.Lt_0D09:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNDUSTMOVE@0
_LN_ACTNDUSTMOVE@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0D13:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0D1C
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_0899
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0D16
call _LN_GONE@0
jmp .Lt_0D14
.Lt_0D16:
.Lt_0D15:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D18
call _LN_FIREMOVE@0
jmp .Lt_0D14
.Lt_0D18:
.Lt_0D17:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D1A
call _LN_USESLEP@0
call _LN_GONE@0
jmp .Lt_0D14
.Lt_0D1A:
.Lt_0D19:
call _LN_GONE@0
.Lt_0D14:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNWEBMOVE@0
_LN_ACTNWEBMOVE@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0D1E:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0D27
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_0899
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0D21
jmp .Lt_0D1F
.Lt_0D21:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D23
call _LN_WEBMOVE@0
jmp .Lt_0D1F
.Lt_0D23:
.Lt_0D22:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D25
call _LN_ATTKTNGL@0
call _LN_GONE@0
jmp .Lt_0D1F
.Lt_0D25:
.Lt_0D24:
.Lt_0D1F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNGRPL@0
_LN_ACTNGRPL@0:
push ebp
mov ebp, esp
sub esp, 36
push ebx
push esi
.Lt_0D29:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0D46
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
movsx eax, word ptr [_DIS_SI]
cmp eax, 3
jne .Lt_0D2C
push 0
push 5
push offset _Lt_0818
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
call _LN_PUTACTION@0
call _LN_ACTNRAPL@0
jmp .Lt_0D2A
.Lt_0D2C:
.Lt_0D2B:
movsx eax, word ptr [_DIS_SI]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-4], ebx
push offset _Lt_00C1
push 3320
push 65536
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D48
jmp eax
.Lt_0D48:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_043D]
fnstsw ax
test ah, 0b00000001
setnz al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0D2F
push 0
push 9
push offset _Lt_0899
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
call _LN_PUTACTION@0
jmp .Lt_0D2A
.Lt_0D2F:
.Lt_0D2E:
movsx eax, word ptr [_DIS_SI]
test eax, eax
jne .Lt_0D31
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 3326
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D49
jmp eax
.Lt_0D49:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_0D4A]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 3326
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D4B
jmp eax
.Lt_0D4B:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_0D31:
.Lt_0D30:
movsx eax, word ptr [_DIS_SI]
cmp eax, 3
jge .Lt_0D35
movsx eax, word ptr [_DIS_SI]
inc eax
mov word ptr [_DIS_SI], ax
.Lt_0D35:
.Lt_0D34:
push 0
push 9
push offset _Lt_0899
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
push 4
push offset _Lt_03B0
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 3332
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D4D
jmp eax
.Lt_0D4D:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0600
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 3333
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D4E
jmp eax
.Lt_0D4E:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
cmp ebx, -1
jne .Lt_0D39
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
jmp .Lt_0D2A
.Lt_0D39:
.Lt_0D38:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D3B
call _LN_PUTACTION@0
jmp .Lt_0D2A
.Lt_0D3B:
.Lt_0D3A:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D3D
call _LN_PUTACTION@0
push 0
push 5
push offset _Lt_0818
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push offset _Lt_03B0
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 3348
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D4F
jmp eax
.Lt_0D4F:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0600
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 3349
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D50
jmp eax
.Lt_0D50:
mov eax, dword ptr [ebp-28]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_PUTACTION@0
call _LN_ATTKLASH@0
jmp .Lt_0D2A
.Lt_0D3D:
.Lt_0D3C:
push 0
push 9
push offset _Lt_0D40
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D42
push 0
push 5
push offset _Lt_0818
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push offset _Lt_03B0
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 3358
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D51
jmp eax
.Lt_0D51:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0600
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 3359
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D52
jmp eax
.Lt_0D52:
mov eax, dword ptr [ebp-28]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_PUTACTION@0
jmp .Lt_0D2A
.Lt_0D42:
.Lt_0D41:
.Lt_0D2A:
push dword ptr [ebp-20]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-16]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNRAPL@0
_LN_ACTNRAPL@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_0D55:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0D76
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 4
push offset _Lt_03B0
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 3367
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D78
jmp eax
.Lt_0D78:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0600
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C1
push 3368
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D79
jmp eax
.Lt_0D79:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jne .Lt_0D5A
push 0
push 9
push offset _Lt_0899
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 3373
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7A
jmp eax
.Lt_0D7A:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0158
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C1
push 3374
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7B
jmp eax
.Lt_0D7B:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
jmp .Lt_0D56
.Lt_0D5A:
.Lt_0D59:
push 0
push 9
push offset _Lt_0899
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
cmp ebx, -1
jne .Lt_0D5E
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jle .Lt_0D60
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_0D60:
.Lt_0D5F:
jmp .Lt_0D56
.Lt_0D5E:
.Lt_0D5D:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D62
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jle .Lt_0D64
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_0D64:
.Lt_0D63:
.Lt_0D62:
.Lt_0D61:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D66
call _LN_ATTKLASH@0
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
jmp .Lt_0D56
.Lt_0D66:
.Lt_0D65:
push 0
push 9
push offset _Lt_0D40
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D68
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_0899
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jne .Lt_0D6A
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
jmp .Lt_0D56
.Lt_0D6A:
.Lt_0D69:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D6C
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_EX_SI]
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_TY_SI]
movsx ecx, word ptr [_DY_SI]
cmp eax, ecx
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0D6E
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0D70
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 3416
push 4
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7C
jmp eax
.Lt_0D7C:
mov eax, dword ptr [ebp-28]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_EX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-32], ecx
push offset _Lt_00C1
push 3417
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7D
jmp eax
.Lt_0D7D:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_DY_SI], bx
.Lt_0D70:
.Lt_0D6F:
.Lt_0D6E:
.Lt_0D6D:
call _LN_SWAPDATA@0
mov bx, word ptr [_TX_SI]
mov word ptr [_TEMPTX_SI], bx
mov bx, word ptr [_TY_SI]
mov word ptr [_TEMPTY_SI], bx
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-20], ecx
push offset _Lt_00C1
push 3423
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7E
jmp eax
.Lt_0D7E:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
add ebx, ecx
mov word ptr [_TX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-24], ecx
push offset _Lt_00C1
push 3424
push 4
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7F
jmp eax
.Lt_0D7F:
mov eax, dword ptr [ebp-24]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
add ebx, ecx
mov word ptr [_TY_SI], bx
call _LN_GETACTION@0
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
mov bx, word ptr [_TEMPTX_SI]
mov word ptr [_TX_SI], bx
mov bx, word ptr [_TEMPTY_SI]
mov word ptr [_TY_SI], bx
jmp .Lt_0D56
.Lt_0D6C:
.Lt_0D6B:
.Lt_0D68:
.Lt_0D67:
.Lt_0D56:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNIMP@0
_LN_CRTNIMP@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0D82:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0D91
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_0D84
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0D87
.Lt_0D88:
call _LN_ACTNMOVE@0
jmp .Lt_0D85
.Lt_0D87:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0D89
.Lt_0D8A:
call _LN_ACTNFIRE@0
jmp .Lt_0D85
.Lt_0D89:
cmp dword ptr [ebp-12], 1953526633
jne .Lt_0D8B
.Lt_0D8C:
call _LN_ACTNISPT@0
jmp .Lt_0D85
.Lt_0D8B:
cmp dword ptr [ebp-12], 1735289207
jne .Lt_0D8D
.Lt_0D8F:
call _LN_ACTNWING@0
.Lt_0D8D:
.Lt_0D85:
call _LN_AUTOLEVELUP@0
.Lt_0D83:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNFIRE@0
_LN_CRTNFIRE@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0D93:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0D9B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 0
push 29
push offset _Lt_0D95
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0D98
.Lt_0D99:
call _LN_ACTNFIREMOVE@0
.Lt_0D98:
.Lt_0D96:
.Lt_0D94:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNDUST@0
_LN_CRTNDUST@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0D9D:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0DA5
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 0
push 25
push offset _Lt_0D9F
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DA2
.Lt_0DA3:
call _LN_ACTNDUSTMOVE@0
.Lt_0DA2:
.Lt_0DA0:
.Lt_0D9E:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNSHKT@0
_LN_CRTNSHKT@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0DA7:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0DBB
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0DA9
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DAC
.Lt_0DAD:
call _LN_ACTNMOVE@0
jmp .Lt_0DAA
.Lt_0DAC:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0DAE
.Lt_0DAF:
call _LN_ACTNFIRE@0
jmp .Lt_0DAA
.Lt_0DAE:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0DB0
.Lt_0DB1:
call _LN_ACTNBITE@0
jmp .Lt_0DAA
.Lt_0DB0:
cmp dword ptr [ebp-12], 1751346800
jne .Lt_0DB2
.Lt_0DB3:
call _LN_ACTNPNCH@0
jmp .Lt_0DAA
.Lt_0DB2:
cmp dword ptr [ebp-12], 1801677163
jne .Lt_0DB4
.Lt_0DB5:
call _LN_ACTNKICK@0
jmp .Lt_0DAA
.Lt_0DB4:
cmp dword ptr [ebp-12], 1919379300
jne .Lt_0DB6
.Lt_0DB7:
call _LN_ACTNDGGR@0
jmp .Lt_0DAA
.Lt_0DB6:
cmp dword ptr [ebp-12], 1701538160
jne .Lt_0DB8
.Lt_0DB9:
call _LN_ACTNPIKE@0
.Lt_0DB8:
.Lt_0DAA:
call _LN_AUTOLEVELUP@0
.Lt_0DA8:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNEMGD@0
_LN_CRTNEMGD@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0DBD:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0DD0
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0DA9
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DC1
.Lt_0DC2:
call _LN_ACTNMOVE@0
jmp .Lt_0DBF
.Lt_0DC1:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0DC3
.Lt_0DC4:
call _LN_ACTNFIRE@0
jmp .Lt_0DBF
.Lt_0DC3:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0DC5
.Lt_0DC6:
call _LN_ACTNBITE@0
jmp .Lt_0DBF
.Lt_0DC5:
cmp dword ptr [ebp-12], 1751346800
jne .Lt_0DC7
.Lt_0DC8:
call _LN_ACTNPNCH@0
jmp .Lt_0DBF
.Lt_0DC7:
cmp dword ptr [ebp-12], 1801677163
jne .Lt_0DC9
.Lt_0DCA:
call _LN_ACTNKICK@0
jmp .Lt_0DBF
.Lt_0DC9:
cmp dword ptr [ebp-12], 1919379300
jne .Lt_0DCB
.Lt_0DCC:
call _LN_ACTNDGGR@0
jmp .Lt_0DBF
.Lt_0DCB:
cmp dword ptr [ebp-12], 1701538160
jne .Lt_0DCD
.Lt_0DCE:
call _LN_ACTNPIKE@0
.Lt_0DCD:
.Lt_0DBF:
call _LN_AUTOLEVELUP@0
.Lt_0DBE:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNSPDR@0
_LN_CRTNSPDR@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0DD2:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0DE0
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_0DD4
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DD7
.Lt_0DD8:
call _LN_ACTNMOVE@0
jmp .Lt_0DD5
.Lt_0DD7:
cmp dword ptr [ebp-12], 1600284023
jne .Lt_0DD9
.Lt_0DDA:
call _LN_ACTNWEB@0
jmp .Lt_0DD5
.Lt_0DD9:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0DDB
.Lt_0DDC:
call _LN_ACTNBITE@0
jmp .Lt_0DD5
.Lt_0DDB:
cmp dword ptr [ebp-12], 1836019318
jne .Lt_0DDD
.Lt_0DDE:
call _LN_ACTNKICK@0
.Lt_0DDD:
.Lt_0DD5:
call _LN_AUTOLEVELUP@0
.Lt_0DD3:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNWEB@0
_LN_CRTNWEB@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0DE2:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0DEE
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 5
push offset _Lt_058B
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0DE5
call _LN_NEXTACTION@0
.Lt_0DE5:
.Lt_0DE4:
push 0
push 29
push offset _Lt_0DE6
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DE9
.Lt_0DEA:
call _LN_ACTNWEBMOVE@0
jmp .Lt_0DE7
.Lt_0DE9:
cmp dword ptr [ebp-12], 1919185011
jne .Lt_0DEB
.Lt_0DEC:
call _LN_ACTNSPDR@0
.Lt_0DEB:
.Lt_0DE7:
call _LN_AUTOLEVELUP@0
.Lt_0DE3:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNDTBY@0
_LN_CRTNDTBY@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0DF0:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0E02
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0DF2
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DF5
.Lt_0DF6:
call _LN_ACTNMOVE@0
jmp .Lt_0DF3
.Lt_0DF5:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0DF7
.Lt_0DF8:
call _LN_ACTNFIRE@0
jmp .Lt_0DF3
.Lt_0DF7:
cmp dword ptr [ebp-12], 2036495460
jne .Lt_0DF9
.Lt_0DFA:
call _LN_ACTNDTBY@0
jmp .Lt_0DF3
.Lt_0DF9:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0DFB
.Lt_0DFC:
call _LN_ACTNBITE@0
jmp .Lt_0DF3
.Lt_0DFB:
cmp dword ptr [ebp-12], 1801677163
jne .Lt_0DFD
.Lt_0DFE:
call _LN_ACTNKICK@0
jmp .Lt_0DF3
.Lt_0DFD:
cmp dword ptr [ebp-12], 1953723748
jne .Lt_0DFF
.Lt_0E00:
call _LN_ACTNDUST@0
.Lt_0DFF:
.Lt_0DF3:
call _LN_AUTOLEVELUP@0
.Lt_0DF1:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNGRML@0
_LN_CRTNGRML@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0E04:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0E18
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_0E06
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0E09
.Lt_0E0A:
call _LN_ACTNMOVE@0
jmp .Lt_0E07
.Lt_0E09:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0E0B
.Lt_0E0C:
call _LN_ACTNFIRE@0
jmp .Lt_0E07
.Lt_0E0B:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0E0D
.Lt_0E0E:
call _LN_ACTNBITE@0
jmp .Lt_0E07
.Lt_0E0D:
cmp dword ptr [ebp-12], 1751346800
jne .Lt_0E0F
.Lt_0E10:
call _LN_ACTNPNCH@0
jmp .Lt_0E07
.Lt_0E0F:
cmp dword ptr [ebp-12], 1801677163
jne .Lt_0E11
.Lt_0E12:
call _LN_ACTNKICK@0
jmp .Lt_0E07
.Lt_0E11:
cmp dword ptr [ebp-12], 1919379300
jne .Lt_0E13
.Lt_0E14:
call _LN_ACTNDGGR@0
jmp .Lt_0E07
.Lt_0E13:
cmp dword ptr [ebp-12], 1701538160
jne .Lt_0E15
.Lt_0E16:
call _LN_ACTNPIKE@0
.Lt_0E15:
.Lt_0E07:
call _LN_AUTOLEVELUP@0
.Lt_0E05:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNPNDX@0
_LN_CRTNPNDX@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0E1A:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0E46
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 37
push offset _Lt_0E1C
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0E1F
.Lt_0E20:
call _LN_ACTNMOVE@0
jmp .Lt_0E1D
.Lt_0E1F:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0E21
.Lt_0E22:
call _LN_ACTNFIRE@0
jmp .Lt_0E1D
.Lt_0E21:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0E23
.Lt_0E24:
call _LN_ACTNBITE@0
jmp .Lt_0E1D
.Lt_0E23:
cmp dword ptr [ebp-12], 1751346800
jne .Lt_0E25
.Lt_0E26:
call _LN_ACTNPNCH@0
jmp .Lt_0E1D
.Lt_0E25:
cmp dword ptr [ebp-12], 1801677163
jne .Lt_0E27
.Lt_0E28:
call _LN_ACTNKICK@0
jmp .Lt_0E1D
.Lt_0E27:
cmp dword ptr [ebp-12], 1919379300
jne .Lt_0E29
.Lt_0E2A:
call _LN_ACTNDGGR@0
jmp .Lt_0E1D
.Lt_0E29:
cmp dword ptr [ebp-12], 1701538160
jne .Lt_0E2B
.Lt_0E2C:
call _LN_ACTNPIKE@0
jmp .Lt_0E1D
.Lt_0E2B:
cmp dword ptr [ebp-12], 1919185011
jne .Lt_0E2D
.Lt_0E2E:
call _LN_ACTNSPDR@0
jmp .Lt_0E1D
.Lt_0E2D:
cmp dword ptr [ebp-12], 1600284023
jne .Lt_0E2F
.Lt_0E30:
call _LN_ACTNWEB@0
jmp .Lt_0E1D
.Lt_0E2F:
cmp dword ptr [ebp-12], 1836019318
jne .Lt_0E31
.Lt_0E32:
call _LN_ACTNVNOM@0
jmp .Lt_0E1D
.Lt_0E31:
cmp dword ptr [ebp-12], 1701999971
jne .Lt_0E33
.Lt_0E34:
call _LN_ACTNCURE@0
jmp .Lt_0E1D
.Lt_0E33:
cmp dword ptr [ebp-12], 1953526633
jne .Lt_0E35
.Lt_0E36:
call _LN_ACTNISPT@0
jmp .Lt_0E1D
.Lt_0E35:
cmp dword ptr [ebp-12], 1819308647
jne .Lt_0E37
.Lt_0E38:
call _LN_ACTNGRPL@0
jmp .Lt_0E1D
.Lt_0E37:
cmp dword ptr [ebp-12], 1819304306
jne .Lt_0E39
.Lt_0E3A:
call _LN_ACTNRAPL@0
jmp .Lt_0E1D
.Lt_0E39:
cmp dword ptr [ebp-12], 1684366707
jne .Lt_0E3B
.Lt_0E3C:
call _LN_ACTNCCTS@0
jmp .Lt_0E1D
.Lt_0E3B:
cmp dword ptr [ebp-12], 1718907767
jne .Lt_0E3D
.Lt_0E3E:
call _LN_ACTNWSTF@0
jmp .Lt_0E1D
.Lt_0E3D:
cmp dword ptr [ebp-12], 1735289207
jne .Lt_0E3F
.Lt_0E40:
call _LN_ACTNWING@0
jmp .Lt_0E1D
.Lt_0E3F:
cmp dword ptr [ebp-12], 830039403
jne .Lt_0E41
.Lt_0E42:
call _LN_ACTNKEY1@0
jmp .Lt_0E1D
.Lt_0E41:
cmp dword ptr [ebp-12], 846816619
jne .Lt_0E43
.Lt_0E44:
call _LN_ACTNKEY2@0
.Lt_0E43:
.Lt_0E1D:
call _LN_AUTOLEVELUP@0
.Lt_0E1B:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNCCTS@0
_LN_CRTNCCTS@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0E48:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0E57
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 1
push offset _Lt_0000
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_089D
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx eax, word ptr [_HERE_SI]
test eax, eax
jle .Lt_0E4B
push 4
push offset _Lt_08A2
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 3671
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E59
jmp eax
.Lt_0E59:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
.Lt_0E4B:
.Lt_0E4A:
push 0
push 5
push offset _Lt_0E4D
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx ebx, word ptr [_HERE_SI]
test ebx, ebx
jle .Lt_0E4F
push 4
push offset _Lt_0E51
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C1
push 3676
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E5A
jmp eax
.Lt_0E5A:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
.Lt_0E4F:
.Lt_0E4E:
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1684366707
jne .Lt_0E54
.Lt_0E55:
call _LN_ACTNCCTS@0
.Lt_0E54:
.Lt_0E52:
call _LN_AUTOLEVELUP@0
.Lt_0E49:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNBLDR@0
_LN_CRTNBLDR@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0E5B:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0E67
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 1
push offset _Lt_0000
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push 5
push offset _Lt_08A2
push -1
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C1
push 3691
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E69
jmp eax
.Lt_0E69:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0E5F
push 4
push offset _Lt_0E61
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 3692
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E6A
jmp eax
.Lt_0E6A:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
call _LN_GONE@0
jmp .Lt_0E5C
.Lt_0E5F:
.Lt_0E5E:
push 5
push offset _Lt_089D
push -1
push 4
push 5
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-8], ebx
push offset _Lt_00C1
push 3696
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E6B
jmp eax
.Lt_0E6B:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0E64
push 4
push offset _Lt_0E4D
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C1
push 3697
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E6C
jmp eax
.Lt_0E6C:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
call _LN_GONE@0
jmp .Lt_0E5C
.Lt_0E64:
.Lt_0E63:
call _LN_AUTOLEVELUP@0
.Lt_0E5C:
push dword ptr [ebp-16]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-12]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CINPUT@0
_CINPUT@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_0E6D:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0E82
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov ax, word ptr [_XMOUSE_SI]
mov word ptr [_XXMOUSE_SI], ax
mov ax, word ptr [_YMOUSE_SI]
mov word ptr [_YYMOUSE_SI], ax
mov ax, word ptr [_LB_SI]
mov word ptr [_L1B_SI], ax
mov ax, word ptr [_RB_SI]
mov word ptr [_R1B_SI], ax
mov ax, word ptr [_XMOUSE_SI]
mov word ptr [_XXMOUSE_SI], ax
mov ax, word ptr [_YMOUSE_SI]
mov word ptr [_YYMOUSE_SI], ax
mov ax, word ptr [_LB_SI]
mov word ptr [_L1B_SI], ax
mov ax, word ptr [_RB_SI]
mov word ptr [_R1B_SI], ax
push 0
push -1
call _fb_Inkey@0
push eax
push -1
push offset _C_STR
call _fb_StrAssign@20
push 1
push offset _Lt_0000
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0E70
push 0
push 3
push offset _Lt_0B26
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0E70:
push 2
push offset _Lt_0E71
push -1
push 1
push offset _C_STR
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push -1
push offset _C_STR
mov ebx, eax
call _fb_StrLen@8
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0E73
push 0
push -1
push -1
push 2
push -1
push 1
push 1
push offset _C_STR
call _fb_RIGHT@8
push eax
call _fb_ASC@8
push eax
call _fb_HEX_i@4
push eax
push -1
push 1
push offset _Lt_0E75
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 5
push offset _Lt_0E74
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0E73:
.Lt_0E72:
push -1
push offset _C_STR
call _fb_StrLen@8
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push 1
push offset _C_STR
mov ebx, eax
call _fb_ASC@8
cmp eax, 33
setb cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0E79
push 0
push -1
push -1
push 2
push -1
push 1
push 1
push offset _C_STR
call _fb_RIGHT@8
push eax
call _fb_ASC@8
push eax
call _fb_HEX_i@4
push eax
push -1
push 1
push offset _Lt_0E75
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 3
push offset _Lt_0E7A
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0E79:
.Lt_0E78:
push offset _YMOUSE_SI
push offset _XMOUSE_SI
push offset _RB_SI
push offset _LB_SI
call _MOUSESTATUS@16
movsx eax, word ptr [_YMOUSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0420]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_01C3]
fistp word ptr [_YM_SI]
movsx eax, word ptr [_XMOUSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0420]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_01C3]
fistp word ptr [_XM_SI]
mov word ptr [_JSX_SI], 0
mov word ptr [_JSY_SI], 0
mov word ptr [_JSA_SI], 0
mov word ptr [_JSB_SI], 0
movsx eax, word ptr [_LLB_SI]
movsx ecx, word ptr [_LB_SI]
cmp eax, ecx
setne al
shr eax, 1
sbb eax, eax
movsx ecx, word ptr [_LLB_SI]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
movsx ebx, word ptr [_LB_SI]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
or eax, ecx
je .Lt_0E7E
mov cx, word ptr [_LB_SI]
mov word ptr [_LLB_SI], cx
mov cx, word ptr [_LB_SI]
mov word ptr [_L1B_SI], cx
jmp .Lt_0E7D
.Lt_0E7E:
mov word ptr [_LB_SI], 0
.Lt_0E7D:
movsx ecx, word ptr [_RRB_SI]
movsx eax, word ptr [_RB_SI]
cmp ecx, eax
setne cl
shr ecx, 1
sbb ecx, ecx
movsx eax, word ptr [_RRB_SI]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_RB_SI]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
or ecx, eax
je .Lt_0E80
mov ax, word ptr [_RB_SI]
mov word ptr [_RRB_SI], ax
mov ax, word ptr [_RB_SI]
mov word ptr [_R1B_SI], ax
jmp .Lt_0E7F
.Lt_0E80:
mov word ptr [_RB_SI], 0
.Lt_0E7F:
.Lt_0E6E:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CURSORPUT@0
_CURSORPUT@0:
push ebp
mov ebp, esp
sub esp, 68
.Lt_0E8E:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-64], eax
push offset _Lt_0E99
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-68], eax
push -1
push 1
push offset _Lt_0E90
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0E92
push 0
push -1
push offset _C_STR
push -1
push offset _CLAST_STR
call _fb_StrAssign@20
.Lt_0E92:
.Lt_0E91:
push dword ptr [_CLV_BUFFER_CURSOR]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 0
push 4278190080
push 4294967295
movsx eax, word ptr [_YMOUSE_SI]
add eax, 2
push eax
movsx eax, word ptr [_XMOUSE_SI]
add eax, 2
push eax
movsx eax, word ptr [_YMOUSE_SI]
add eax, -2
push eax
movsx eax, word ptr [_XMOUSE_SI]
add eax, -2
push eax
push dword ptr [_CLV_BUFFER_CURSOR]
push offset _CLV_BUFFER
call _CLV_DRAW_LINE@36
push 0
push 4278190080
push 4294967295
movsx eax, word ptr [_YMOUSE_SI]
add eax, 2
push eax
movsx eax, word ptr [_XMOUSE_SI]
add eax, -2
push eax
movsx eax, word ptr [_YMOUSE_SI]
add eax, -2
push eax
movsx eax, word ptr [_XMOUSE_SI]
add eax, 2
push eax
push dword ptr [_CLV_BUFFER_CURSOR]
push offset _CLV_BUFFER
call _CLV_DRAW_LINE@36
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
push offset _CLAST_STR
push -1
push 2
push offset _Lt_009E
push -1
push -1
movzx eax, word ptr [_YMOUSE_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 2
push offset _Lt_009E
push -1
movsx eax, word ptr [_XMOUSE_SI]
push eax
call _fb_IntToStr@4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
push 0
push 0
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_CURSOR]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.Lt_0E8F:
push dword ptr [ebp-68]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-64]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PROGRESS_PUT@64
_PROGRESS_PUT@64:
push ebp
mov ebp, esp
sub esp, 100
push ebx
.Lt_0E9B:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-48], eax
push offset _Lt_0EAA
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov word ptr [ebp-12], 0
mov word ptr [ebp-16], 0
mov word ptr [ebp-20], 0
mov word ptr [ebp-24], 0
push 0
push -1
push dword ptr [ebp+56]
push -1
lea eax, [ebp-36]
push eax
call _fb_StrInit@20
call _fb_Timer@0
fstp qword ptr [ebp-44]
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+52]
add dword ptr [eax], ebx
push 0
push -1
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
imul eax, 10000
push eax
fild dword ptr [esp]
add esp, 4
fild dword ptr [ebp+24]
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
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
push -1
push dword ptr [ebp+56]
call _fb_StrAssign@20
push -1
push dword ptr [ebp+56]
call _fb_StrLen@8
add eax, -2
test eax, eax
jg .Lt_0E9E
push 0
push -1
push 2
push offset _Lt_0E90
push -1
push -1
push 2
push -1
push 2
push dword ptr [ebp+56]
call _fb_RIGHT@8
push eax
push -1
push 1
push offset _Lt_0E75
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 2
push offset _Lt_0E75
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+56]
call _fb_StrAssign@20
jmp .Lt_0E9D
.Lt_0E9E:
push 0
push -1
push 2
push offset _Lt_0E90
push -1
push -1
push 2
push -1
push 2
push dword ptr [ebp+56]
call _fb_RIGHT@8
push eax
push -1
push 1
push offset _Lt_0E75
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
push 2
push offset _Lt_0EA2
push -1
push -1
push dword ptr [ebp+56]
call _fb_StrLen@8
add eax, -2
push eax
push 1
push dword ptr [ebp+56]
call _fb_StrMid@12
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+56]
call _fb_StrAssign@20
.Lt_0E9D:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_0E9C
mov eax, dword ptr [ebp+44]
and eax, 1
je .Lt_0EA8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
.Lt_0EA8:
.Lt_0EA7:
mov ax, word ptr [ebp+28]
mov word ptr [ebp-12], ax
mov ax, word ptr [ebp+32]
mov word ptr [ebp-16], ax
mov ax, word ptr [ebp+36]
mov word ptr [ebp-20], ax
mov ax, word ptr [ebp+40]
mov word ptr [ebp-24], ax
mov eax, dword ptr [ebp+28]
dec eax
sal eax, 3
push eax
fild dword ptr [esp]
add esp, 4
mov eax, dword ptr [ebp+36]
sub eax, dword ptr [ebp+28]
dec eax
sal eax, 3
add eax, 7
mov ebx, dword ptr [ebp+20]
imul eax, dword ptr [ebx]
push eax
fild dword ptr [esp]
add esp, 4
fild dword ptr [ebp+24]
fxch st(1)
fdivrp
fxch st(1)
faddp
fistp dword ptr [ebp-4]
push 0
push 0
movzx eax, word ptr [ebp-24]
push eax
movzx eax, word ptr [ebp-20]
push eax
movzx eax, word ptr [ebp-16]
push eax
movzx eax, word ptr [ebp-12]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _FRAME_PUT@32
push 2
push 4278190080
push dword ptr [ebp+48]
mov eax, dword ptr [ebp+40]
dec eax
sal eax, 3
add eax, 7
push eax
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+32]
dec eax
sal eax, 3
push eax
mov eax, dword ptr [ebp+28]
dec eax
sal eax, 3
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
mov eax, dword ptr [ebp+28]
dec eax
sal eax, 3
push eax
fild dword ptr [esp]
add esp, 4
mov eax, dword ptr [ebp+36]
sub eax, dword ptr [ebp+28]
dec eax
sal eax, 3
add eax, 7
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_01BD]
fxch st(1)
faddp
push -1
push dword ptr [ebp+16]
fstp qword ptr [ebp-60]
call _fb_StrLen@8
dec eax
sal eax, 3
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_01BD]
fld qword ptr [ebp-60]
fsubrp
fistp dword ptr [ebp-4]
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+32]
dec eax
sal eax, 3
push eax
push dword ptr [ebp-4]
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
mov eax, dword ptr [ebp+28]
dec eax
sal eax, 3
push eax
fild dword ptr [esp]
add esp, 4
mov eax, dword ptr [ebp+36]
sub eax, dword ptr [ebp+28]
dec eax
sal eax, 3
add eax, 7
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_01BD]
fxch st(1)
faddp
push -1
push dword ptr [ebp+56]
fstp qword ptr [ebp-68]
call _fb_StrLen@8
dec eax
sal eax, 3
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_01BD]
fld qword ptr [ebp-68]
fsubrp
fistp dword ptr [ebp-4]
mov eax, dword ptr [ebp+32]
dec eax
sal eax, 3
push eax
fild dword ptr [esp]
add esp, 4
mov eax, dword ptr [ebp+40]
sub eax, dword ptr [ebp+32]
dec eax
sal eax, 3
add eax, 7
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_01BD]
fxch st(1)
faddp
fistp dword ptr [ebp-8]
push dword ptr [ebp+56]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push offset _CLV_GLYPH
push dword ptr [ebp+12]
push offset _CLV_FONT
push dword ptr [ebp+8]
call _CLV_DRAW_TEXT@28
call _CINPUT@0
push dword ptr [ebp+8]
call _CLV_BUFFER_STACK@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0E9C:
push dword ptr [ebp-52]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-48]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret 64
.balign 16

.globl _GRAPHICPUT@24
_GRAPHICPUT@24:
push ebp
mov ebp, esp
sub esp, 160
push ebx
.Lt_0EAE:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_0EC3
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
push -1
push dword ptr [ebp+24]
call _fb_StrLen@8
cmp eax, 11
sete al
shr eax, 1
sbb eax, eax
push 12
push offset _Lt_0EB0
push -1
push dword ptr [ebp+24]
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0EB2
push 0
push -1
push 2
push offset _Lt_0EB3
push -1
push dword ptr [ebp+24]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 5
push offset _Lt_0EB5
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
push dword ptr [ebp+28]
push -1
push offset _THISPATH_STR
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
lea eax, [ebp-100]
push eax
call _trk_png_load@4
mov dword ptr [ebp-32], eax
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
push 0
push -1
push 2
push offset _Lt_0EBA
push -1
push dword ptr [ebp+24]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
push 5
push offset _Lt_0EB5
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
push dword ptr [ebp+28]
push -1
push offset _THISPATH_STR
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign@20
lea eax, [ebp-160]
push eax
call _trk_png_load@4
mov dword ptr [ebp-28], eax
lea eax, [ebp-160]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-32]
push dword ptr [ebp-28]
mov eax, dword ptr [ebp+16]
movsx ebx, word ptr [eax]
sal ebx, 3
add ebx, -8
push ebx
mov ebx, dword ptr [ebp+20]
movsx eax, word ptr [ebx]
sal eax, 3
add eax, -8
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_IMAGE@24
push dword ptr [ebp-28]
call _trk_png_destroy@4
push dword ptr [ebp-32]
call _trk_png_destroy@4
.Lt_0EB2:
.Lt_0EB1:
push -1
push dword ptr [ebp+24]
call _fb_StrLen@8
cmp eax, 11
je .Lt_0EC1
push 0
push 0
push -1
mov eax, dword ptr [ebp+20]
movsx ebx, word ptr [eax]
inc ebx
push ebx
mov ebx, dword ptr [ebp+16]
movsx eax, word ptr [ebx]
inc eax
push eax
call _fb_Locate@20
push 0
push 1
push offset _Lt_0EA2
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_0EC1:
.Lt_0EC0:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0EAF:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-36]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _SUSPEND@8
_SUSPEND@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_0EC7:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0ECD
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_0EC9:
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0ECB:
call _fb_Timer@0
mov eax, dword ptr [ebp+8]
fld dword ptr [eax]
fxch st(1)
fcompp
fnstsw ax
test ah, 0b00000001
setnz al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _fb_Timer@0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
movsx esi, word ptr [ecx]
push esi
fild dword ptr [esp]
add esp, 4
fadd dword ptr [eax]
fxch st(1)
fcompp
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0EC9
.Lt_0ECA:
.Lt_0EC8:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CLS2@0
_CLS2@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0ED1:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0ED4
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0ED6]
push dword ptr [_Lt_0727]
push dword ptr [_Lt_01D6]
push dword ptr [_Lt_01D6]
push 0
call _fb_GfxLine@36
.Lt_0ED2:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FILE_PUT_CONTENTS@8
_FILE_PUT_CONTENTS@8:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0ED7:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0EE0
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
call _fb_FileFree@0
mov dword ptr [ebp-4], eax
.Lt_0ED9:
push 0
push dword ptr [ebp-4]
push 0
push 2
push 0
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .Lt_0EDA
lea eax, [.Lt_0EDA]
push eax
lea eax, [.Lt_0ED9]
push eax
push offset _Lt_00C1
push 3841
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EDA:
.Lt_0EDB:
push -1
push dword ptr [ebp+12]
push 0
push dword ptr [ebp-4]
call _fb_FilePutStr@16
test eax, eax
je .Lt_0EDC
lea eax, [.Lt_0EDC]
push eax
lea eax, [.Lt_0EDB]
push eax
push offset _Lt_00C1
push 3842
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EDC:
.Lt_0EDD:
push dword ptr [ebp-4]
call _fb_FileClose@4
test eax, eax
je .Lt_0EDE
lea eax, [.Lt_0EDE]
push eax
lea eax, [.Lt_0EDD]
push eax
push offset _Lt_00C1
push 3843
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EDE:
.Lt_0ED8:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FILE_GET_CONTENTS@4
_FILE_GET_CONTENTS@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-32], eax
push offset _Lt_0EEF
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-36], eax
.Lt_0EE2:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
call _fb_FileFree@0
mov dword ptr [ebp-28], eax
.Lt_0EE4:
push 0
push dword ptr [ebp-28]
push 0
push 1
push 0
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .Lt_0EE5
lea eax, [.Lt_0EE5]
push eax
lea eax, [.Lt_0EE4]
push eax
push offset _Lt_00C1
push 3850
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EE5:
push 0
push -1
push dword ptr [ebp-28]
call _fb_FileSize@4
mov ebx, eax
push ebx
call _fb_SPACE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-28]
call _fb_FileEof@4
not eax
push dword ptr [ebp-28]
mov ebx, eax
call _fb_FileSize@4
cmp edx, 0
mov ecx, -1
jg .Lt_0EF1
jl .Lt_0EF2
cmp eax, 0
ja .Lt_0EF1
.Lt_0EF2:
xor ecx, ecx
.Lt_0EF1:
and ebx, ecx
je .Lt_0EE7
.Lt_0EE8:
push 1
push dword ptr [ebp-28]
call _fb_FileSeek@8
test eax, eax
je .Lt_0EE9
lea eax, [.Lt_0EE9]
push eax
lea eax, [.Lt_0EE8]
push eax
push offset _Lt_00C1
push 3853
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EE9:
.Lt_0EEA:
push -1
lea eax, [ebp-24]
push eax
push dword ptr [ebp-28]
call _fb_FileTell@4
push edx
push eax
push dword ptr [ebp-28]
call _fb_FileGetStrLarge@20
test eax, eax
je .Lt_0EEB
lea eax, [.Lt_0EEB]
push eax
lea eax, [.Lt_0EEA]
push eax
push offset _Lt_00C1
push 3854
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EEB:
.Lt_0EE7:
.Lt_0EE6:
.Lt_0EEC:
push dword ptr [ebp-28]
call _fb_FileClose@4
test eax, eax
je .Lt_0EED
lea eax, [.Lt_0EED]
push eax
lea eax, [.Lt_0EEC]
push eax
push offset _Lt_00C1
push 3856
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EED:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0EE3:
push dword ptr [ebp-36]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-32]
call _fb_ErrorSetModName@4
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _PAL_LOAD@8
_PAL_LOAD@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_0EF3:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-20], eax
push offset _Lt_0EFB
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
call _FILE_GET_CONTENTS@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-16], 0
.Lt_0EF8:
push 1
push 1
mov eax, dword ptr [ebp-16]
sal eax, 2
add eax, 2
push eax
lea eax, [ebp-12]
push eax
call _fb_StrMid@12
push eax
call _fb_ASC@8
mov bl, al
movzx eax, bl
shl eax, 16
push 1
push 1
mov ebx, dword ptr [ebp-16]
sal ebx, 2
add ebx, 3
push ebx
lea ebx, [ebp-12]
push ebx
mov ebx, eax
call _fb_StrMid@12
push eax
call _fb_ASC@8
mov cl, al
movzx eax, cl
shl eax, 8
or ebx, eax
push 1
push 1
mov eax, dword ptr [ebp-16]
sal eax, 2
add eax, 4
push eax
lea eax, [ebp-12]
push eax
call _fb_StrMid@12
push eax
call _fb_ASC@8
mov cl, al
movzx eax, cl
or ebx, eax
or ebx, 4278190080
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 3865
mov eax, dword ptr [ebp+12]
add eax, 32
push dword ptr [eax]
mov eax, dword ptr [ebp+12]
add eax, 28
push dword ptr [eax]
push dword ptr [ebp-28]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0EFD
jmp eax
.Lt_0EFD:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ecx, dword ptr [ebp+12]
add eax, dword ptr [ecx]
mov dword ptr [eax], ebx
.Lt_0EF6:
inc dword ptr [ebp-16]
.Lt_0EF5:
cmp dword ptr [ebp-16], 255
jle .Lt_0EF8
.Lt_0EF7:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_0EF4:
push dword ptr [ebp-24]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-20]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _MOUSESTATUS@16
_MOUSESTATUS@16:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_0EFE:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_0F03
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
movsx eax, word ptr [_AX]
mov dword ptr [ebp-4], eax
movsx eax, word ptr [_BX]
mov dword ptr [ebp-8], eax
movsx eax, word ptr [_CX]
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_DX]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
lea eax, [ebp-8]
push eax
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call _fb_GetMouse@20
mov ax, word ptr [ebp-4]
mov word ptr [_AX], ax
mov ax, word ptr [ebp-8]
mov word ptr [_BX], ax
mov ax, word ptr [ebp-12]
mov word ptr [_CX], ax
mov ax, word ptr [ebp-16]
mov word ptr [_DX], ax
movsx eax, word ptr [_BX]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov word ptr [ebx], ax
movsx eax, word ptr [_BX]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov word ptr [ebx], ax
movsx eax, word ptr [_MOUSE_WIDTH]
imul eax, dword ptr [ebp-12]
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_DISPLAY_WIDTH]
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
fdivrp
fistp dword ptr [ebp-20]
movsx eax, word ptr [_MOUSE_HEIGHT]
imul eax, dword ptr [ebp-16]
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_DISPLAY_HEIGHT]
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
fdivrp
fistp dword ptr [ebp-24]
mov ax, word ptr [ebp-20]
mov ebx, dword ptr [ebp+16]
mov word ptr [ebx], ax
mov ax, word ptr [ebp-24]
mov ebx, dword ptr [ebp+20]
mov word ptr [ebx], ax
.Lt_0EFF:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-36]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _CLV_BUFFER_STACK@4
_CLV_BUFFER_STACK@4:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0F07:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0F1B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _CURSORPUT@0
push 1
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
push 1
push dword ptr [_CLV_BUFFER_SPLASH]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
mov eax, dword ptr [_CLV_BUFFER_TITLE]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F0A
.Lt_0F0B:
push 1
push dword ptr [_CLV_BUFFER_TITLE]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0F09
.Lt_0F0A:
mov eax, dword ptr [_CLV_BUFFER_HELP]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F0C
.Lt_0F0D:
push 1
push dword ptr [_CLV_BUFFER_HELP]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0F09
.Lt_0F0C:
mov eax, dword ptr [_CLV_BUFFER_PORTAL]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F0E
.Lt_0F0F:
push 1
push dword ptr [_CLV_BUFFER_TITLE]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_PORTAL]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_MENU]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0F09
.Lt_0F0E:
mov eax, dword ptr [_CLV_BUFFER_STATUS]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F10
.Lt_0F11:
push 1
push dword ptr [_CLV_BUFFER_TITLE]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_PORTAL]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_STATUS]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_MENU]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0F09
.Lt_0F10:
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F12
.Lt_0F13:
push 1
push dword ptr [_CLV_BUFFER_TITLE]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_PORTAL]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_EXPSHOP]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_MENU]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0F09
.Lt_0F12:
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F14
.Lt_0F15:
push 1
push dword ptr [_CLV_BUFFER_TITLE]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_PORTAL]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_MERCHANT]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_MENU]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0F09
.Lt_0F14:
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F16
.Lt_0F17:
push 1
push dword ptr [_CLV_BUFFER_TITLE]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_PORTAL]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_MENU]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_BAR]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
.Lt_0F16:
.Lt_0F09:
mov eax, dword ptr [_CLV_BUFFER_SPLASH]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
je .Lt_0F19
push 1
push dword ptr [_CLV_BUFFER_BAR]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_PROGRESS]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
push 1
push dword ptr [_CLV_BUFFER_CURSOR]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
.Lt_0F19:
.Lt_0F18:
push 0
push 65535
push 2
push 4278190080
movsx eax, word ptr [_DISPLAY_HEIGHT]
dec eax
push eax
fild dword ptr [esp]
add esp, 4
sub esp,4
fstp dword ptr [esp]
movsx eax, word ptr [_DISPLAY_WIDTH]
dec eax
push eax
fild dword ptr [esp]
add esp, 4
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_01D6]
push dword ptr [_Lt_01D6]
push 0
call _fb_GfxLine@36
movsx eax, word ptr [_DISPLAY_HEIGHT]
push eax
movsx eax, word ptr [_DISPLAY_WIDTH]
push eax
push 1
push dword ptr [ebp+8]
call _CLV_BUFFER_FLIP@16
call _fb_GfxWaitVSync@0
push 0
push 1
call _fb_GfxFlip@8
.Lt_0F08:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FRAME_STATUS@8
_FRAME_STATUS@8:
push ebp
mov ebp, esp
sub esp, 352
push ebx
.Lt_0F1D:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-332], eax
push offset _Lt_0F65
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-336], eax
mov word ptr [ebp-4], 0
mov word ptr [ebp-8], 0
mov word ptr [ebp-12], 0
mov word ptr [ebp-16], 0
mov word ptr [ebp-20], 0
mov word ptr [ebp-24], 0
mov ax, word ptr [ebp+12]
mov word ptr [ebp-4], ax
movsx eax, word ptr [ebp-4]
add eax, 15
mov word ptr [ebp-12], ax
mov ax, word ptr [ebp+8]
mov word ptr [ebp-8], ax
movsx eax, word ptr [ebp-8]
add eax, 8
mov word ptr [ebp-16], ax
mov word ptr [ebp-20], 4
mov word ptr [ebp-24], 12
movzx eax, word ptr [ebp-24]
push eax
movzx eax, word ptr [ebp-20]
push eax
movzx eax, word ptr [ebp-16]
push eax
movzx eax, word ptr [ebp-12]
push eax
movzx eax, word ptr [ebp-8]
push eax
movzx eax, word ptr [ebp-4]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _FRAME_PUT@32
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-28], eax
push offset _Lt_00C1
push 3951
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F67
jmp eax
.Lt_0F67:
mov eax, dword ptr [ebp-28]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
movsx ebx, word ptr [ebp+8]
dec ebx
sal ebx, 3
push ebx
movsx ebx, word ptr [ebp+12]
dec ebx
sal ebx, 3
push ebx
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 3
push offset _Lt_085D
push -1
lea ebx, [ebp-40]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-40]
push ebx
movsx ebx, word ptr [ebp+8]
sal ebx, 3
push ebx
movsx ebx, word ptr [ebp+12]
dec ebx
sal ebx, 3
push ebx
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-40]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-44], ebx
push offset _Lt_00C1
push 3953
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F68
jmp eax
.Lt_0F68:
mov eax, dword ptr [ebp-44]
imul eax, 136
fld qword ptr [_Lt_0882]
fadd qword ptr [_G_DFA+eax+80]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
lea eax, [ebp-56]
push eax
movsx eax, word ptr [ebp+8]
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 2
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 2
push offset _Lt_05C0
push -1
push 5
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-60], eax
push offset _Lt_00C1
push 3954
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F69
jmp eax
.Lt_0F69:
mov eax, dword ptr [ebp-60]
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push 6
push offset _Lt_0861
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
movsx eax, word ptr [ebp+8]
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 8
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 2
push offset _Lt_05BD
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign@20
lea eax, [ebp-108]
push eax
movsx eax, word ptr [ebp+8]
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
inc eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push 3
push offset _Lt_0867
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-120]
push eax
movsx eax, word ptr [ebp+8]
inc eax
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-124], eax
push offset _Lt_00C1
push 3957
push 65536
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6A
jmp eax
.Lt_0F6A:
mov eax, dword ptr [ebp-124]
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign@20
lea eax, [ebp-136]
push eax
movsx eax, word ptr [ebp+8]
inc eax
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 3
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-136]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 2
push offset _Lt_086B
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign@20
lea eax, [ebp-148]
push eax
movsx eax, word ptr [ebp+8]
inc eax
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 8
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-148]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-152], eax
push offset _Lt_00C1
push 3959
push 65536
push dword ptr [ebp-152]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6B
jmp eax
.Lt_0F6B:
mov eax, dword ptr [ebp-152]
imul eax, 136
fld qword ptr [_G_DFA+eax+88]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign@20
lea eax, [ebp-164]
push eax
movsx eax, word ptr [ebp+8]
inc eax
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 10
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-164]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push 4
push offset _Lt_086F
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign@20
lea eax, [ebp-176]
push eax
movsx eax, word ptr [ebp+8]
add eax, 2
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-176]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-180], eax
push offset _Lt_00C1
push 3961
push 65536
push dword ptr [ebp-180]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6C
jmp eax
.Lt_0F6C:
mov eax, dword ptr [ebp-180]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign@20
lea eax, [ebp-192]
push eax
movsx eax, word ptr [ebp+8]
add eax, 2
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 3
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-192]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 2
push offset _Lt_086B
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign@20
lea eax, [ebp-204]
push eax
movsx eax, word ptr [ebp+8]
add eax, 2
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 8
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-204]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-208], eax
push offset _Lt_00C1
push 3963
push 65536
push dword ptr [ebp-208]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6D
jmp eax
.Lt_0F6D:
mov eax, dword ptr [ebp-208]
imul eax, 136
fld qword ptr [_G_DFA+eax+96]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign@20
lea eax, [ebp-220]
push eax
movsx eax, word ptr [ebp+8]
add eax, 2
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 10
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-220]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 4
push offset _Lt_0876
push -1
lea eax, [ebp-232]
push eax
call _fb_StrAssign@20
lea eax, [ebp-232]
push eax
movsx eax, word ptr [ebp+8]
add eax, 3
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-232]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-236], eax
push offset _Lt_00C1
push 3965
push 65536
push dword ptr [ebp-236]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6E
jmp eax
.Lt_0F6E:
mov eax, dword ptr [ebp-236]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign@20
lea eax, [ebp-248]
push eax
movsx eax, word ptr [ebp+8]
add eax, 3
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 3
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-248]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 2
push offset _Lt_086B
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign@20
lea eax, [ebp-260]
push eax
movsx eax, word ptr [ebp+8]
add eax, 3
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 8
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-260]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-264], eax
push offset _Lt_00C1
push 3967
push 65536
push dword ptr [ebp-264]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6F
jmp eax
.Lt_0F6F:
mov eax, dword ptr [ebp-264]
imul eax, 136
fld qword ptr [_G_DFA+eax+104]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_0885]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign@20
lea eax, [ebp-276]
push eax
movsx eax, word ptr [ebp+8]
add eax, 3
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
add eax, 10
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-276]
push eax
call _fb_StrDelete@4
call _LN_GETACTION@0
movsx eax, word ptr [_D_SI]
test eax, eax
jne .Lt_0F3B
.Lt_0F3C:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push 12
push offset _Lt_0F3E
push -1
lea eax, [ebp-352]
push eax
call _fb_StrAssign@20
lea eax, [ebp-352]
push eax
lea eax, [ebp+12]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-340], ax
lea eax, [ebp-340]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-352]
push eax
call _fb_StrDelete@4
jmp .Lt_0F3A
.Lt_0F3B:
movsx eax, word ptr [_D_SI]
cmp eax, 1
jne .Lt_0F40
.Lt_0F41:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push 12
push offset _Lt_0F43
push -1
lea eax, [ebp-352]
push eax
call _fb_StrAssign@20
lea eax, [ebp-352]
push eax
lea eax, [ebp+12]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-340], ax
lea eax, [ebp-340]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-352]
push eax
call _fb_StrDelete@4
jmp .Lt_0F3A
.Lt_0F40:
movsx eax, word ptr [_D_SI]
cmp eax, 2
jne .Lt_0F45
.Lt_0F46:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push 12
push offset _Lt_0F48
push -1
lea eax, [ebp-352]
push eax
call _fb_StrAssign@20
lea eax, [ebp-352]
push eax
lea eax, [ebp+12]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-340], ax
lea eax, [ebp-340]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-352]
push eax
call _fb_StrDelete@4
jmp .Lt_0F3A
.Lt_0F45:
movsx eax, word ptr [_D_SI]
cmp eax, 3
jne .Lt_0F4A
.Lt_0F4B:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push 12
push offset _Lt_0F4D
push -1
lea eax, [ebp-352]
push eax
call _fb_StrAssign@20
lea eax, [ebp-352]
push eax
lea eax, [ebp+12]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-340], ax
lea eax, [ebp-340]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-352]
push eax
call _fb_StrDelete@4
jmp .Lt_0F3A
.Lt_0F4A:
movsx eax, word ptr [_D_SI]
cmp eax, 4
jne .Lt_0F4F
.Lt_0F50:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push 12
push offset _Lt_0F52
push -1
lea eax, [ebp-352]
push eax
call _fb_StrAssign@20
lea eax, [ebp-352]
push eax
lea eax, [ebp+12]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-340], ax
lea eax, [ebp-340]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-352]
push eax
call _fb_StrDelete@4
.Lt_0F4F:
.Lt_0F3A:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
push 0
push -1
push 4
push offset _Lt_07E7
push -1
push -1
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-292], eax
push offset _Lt_00C1
push 3981
push 65536
push dword ptr [ebp-292]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F70
jmp eax
.Lt_0F70:
mov eax, dword ptr [ebp-292]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-288], eax
push offset _Lt_00C1
push 3981
push 65536
push dword ptr [ebp-288]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F71
jmp eax
.Lt_0F71:
mov eax, dword ptr [ebp-288]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
lea eax, [ebp-316]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-328]
push eax
call _fb_StrAssign@20
lea eax, [ebp-328]
push eax
movsx eax, word ptr [ebp+12]
add eax, 6
mov word ptr [ebp-284], ax
lea eax, [ebp-284]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-280], ax
lea eax, [ebp-280]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-328]
push eax
call _fb_StrDelete@4
mov word ptr [_T_SI], 1
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-340], eax
push offset _Lt_00C1
push 3983
push 65536
push dword ptr [ebp-340]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F72
jmp eax
.Lt_0F72:
mov eax, dword ptr [ebp-340]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [ebp-344]
jmp .Lt_0F5D
.Lt_0F60:
push 0
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-348], eax
push offset _Lt_00C1
push 3984
push 65536
push dword ptr [ebp-348]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F73
jmp eax
.Lt_0F73:
mov eax, dword ptr [ebp-348]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _R_STR
call _fb_StrAssign@20
call _LN_NAMES@0
push -1
push offset _R_STR
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0F63
push offset _RR_STR
movsx eax, word ptr [ebp+8]
add eax, 7
sal eax, 3
push eax
movsx eax, word ptr [ebp+12]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
.Lt_0F63:
.Lt_0F62:
.Lt_0F5E:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0F5D:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-344]
cmp eax, ebx
jle .Lt_0F60
.Lt_0F5F:
.Lt_0F1E:
push dword ptr [ebp-336]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-332]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FRAME_INVENTORY@8
_FRAME_INVENTORY@8:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.Lt_0F74:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_0F85
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-40], eax
mov word ptr [ebp-4], 0
mov word ptr [ebp-8], 0
mov word ptr [ebp-12], 0
mov word ptr [ebp-16], 0
mov word ptr [ebp-20], 0
mov word ptr [ebp-24], 0
mov word ptr [ebp-28], 0
mov word ptr [ebp-32], 0
mov ax, word ptr [ebp+12]
mov word ptr [ebp-4], ax
movsx eax, word ptr [ebp-4]
add eax, 15
mov word ptr [ebp-12], ax
mov ax, word ptr [ebp+8]
mov word ptr [ebp-8], ax
movsx eax, word ptr [ebp-8]
add eax, 8
mov word ptr [ebp-16], ax
mov word ptr [ebp-20], 4
mov word ptr [ebp-24], 12
movzx eax, word ptr [ebp-24]
push eax
movzx eax, word ptr [ebp-20]
push eax
movzx eax, word ptr [ebp-16]
push eax
movzx eax, word ptr [ebp-12]
push eax
movzx eax, word ptr [ebp-8]
push eax
movzx eax, word ptr [ebp-4]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _FRAME_PUT@32
call _LN_GETACTION@0
mov word ptr [_T_SI], 1
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-44], eax
push offset _Lt_00C1
push 4003
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F87
jmp eax
.Lt_0F87:
mov eax, dword ptr [ebp-44]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0322]
fistp word ptr [ebp-48]
jmp .Lt_0F78
.Lt_0F7B:
movsx eax, word ptr [_T_SI]
dec eax
mov ecx, 5
cdq
idiv ecx
mov eax, edx
imul eax, 3
mov word ptr [ebp-28], ax
movsx eax, word ptr [_T_SI]
dec eax
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0326]
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
fmul qword ptr [_Lt_0320]
fistp word ptr [ebp-32]
push 0
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-52], eax
push offset _Lt_00C1
push 4006
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F88
jmp eax
.Lt_0F88:
mov eax, dword ptr [ebp-52]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _R_STR
call _fb_StrAssign@20
call _LN_NAMES@0
push offset _SPRITEPATH_STR
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 8
push offset _Lt_0618
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-64], eax
push offset _Lt_00C1
push 4008
push 65536
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F89
jmp eax
.Lt_0F89:
mov eax, dword ptr [ebp-64]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
movsx eax, word ptr [ebp+12]
movsx ebx, word ptr [ebp-28]
add eax, ebx
mov word ptr [ebp-60], ax
lea eax, [ebp-60]
push eax
movsx eax, word ptr [ebp+8]
movsx ebx, word ptr [ebp-32]
add eax, ebx
mov word ptr [ebp-56], ax
lea eax, [ebp-56]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
push -1
push offset _R_STR
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0F83
push 1
push 4278190080
push 4294967295
movsx eax, word ptr [ebp-32]
add eax, 13
sal eax, 3
add eax, 23
push eax
movsx eax, word ptr [_STATX_SI]
movsx ebx, word ptr [ebp-28]
add eax, ebx
dec eax
sal eax, 3
add eax, 23
push eax
movsx eax, word ptr [ebp-32]
add eax, 13
sal eax, 3
push eax
movsx eax, word ptr [_STATX_SI]
movsx ebx, word ptr [ebp-28]
add eax, ebx
dec eax
sal eax, 3
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _CLV_DRAW_LINE@36
.Lt_0F83:
.Lt_0F82:
.Lt_0F79:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0F78:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-48]
cmp eax, ebx
jle .Lt_0F7B
.Lt_0F7A:
.Lt_0F75:
push dword ptr [ebp-40]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-36]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FRAME_TITLE@8
_FRAME_TITLE@8:
push ebp
mov ebp, esp
sub esp, 44
.Lt_0F8A:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_0F96
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
mov word ptr [ebp-4], 0
mov word ptr [ebp-8], 0
mov word ptr [ebp-12], 0
mov word ptr [ebp-16], 0
mov word ptr [ebp-20], 0
mov word ptr [ebp-24], 0
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
mov ax, word ptr [ebp+12]
mov word ptr [ebp-4], ax
movsx eax, word ptr [ebp-4]
add eax, 6
mov word ptr [ebp-12], ax
mov word ptr [ebp-8], 2
mov ax, word ptr [ebp-8]
mov word ptr [ebp-16], ax
mov word ptr [ebp-20], 6
mov word ptr [ebp-24], 0
movzx eax, word ptr [ebp-24]
push eax
movzx eax, word ptr [ebp-20]
push eax
movzx eax, word ptr [ebp-16]
push eax
movzx eax, word ptr [ebp-12]
push eax
movzx eax, word ptr [ebp-8]
push eax
movzx eax, word ptr [ebp-4]
push eax
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _FRAME_PUT@32
movsx eax, word ptr [_TITLED_SI]
test eax, eax
jne .Lt_0F8D
.Lt_0F8E:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 8
push offset _Lt_0F8F
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
lea eax, [ebp-44]
push eax
push 8
movsx eax, word ptr [_STATX_SI]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
jmp .Lt_0F8C
.Lt_0F8D:
movsx eax, word ptr [_TITLED_SI]
cmp eax, 1
jne .Lt_0F91
.Lt_0F92:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 8
push offset _Lt_0F93
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
lea eax, [ebp-44]
push eax
push 8
movsx eax, word ptr [_STATX_SI]
dec eax
sal eax, 3
push eax
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
.Lt_0F91:
.Lt_0F8C:
.Lt_0F8B:
push dword ptr [ebp-32]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-28]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FRAME_PUT@32
_FRAME_PUT@32:
push ebp
mov ebp, esp
sub esp, 192
push ebx
.Lt_0F98:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-188], eax
push offset _Lt_0FB8
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-192], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-28]
mov dword ptr [ebp-64], eax
lea eax, [ebp-16]
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-56], 16
mov dword ptr [ebp-52], 4
mov dword ptr [ebp-48], 2
mov dword ptr [ebp-44], 50
mov dword ptr [ebp-40], 2
mov dword ptr [ebp-36], 1
mov dword ptr [ebp-32], 2
mov dword ptr [ebp-28], 2
mov dword ptr [ebp-24], 1
mov dword ptr [ebp-20], 2
mov dword ptr [ebp-68], 1
mov dword ptr [ebp-72], 2
movsx eax, word ptr [ebp+16]
dec eax
sal eax, 3
dec eax
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-76], ebx
push offset _Lt_00C1
push 4041
push 2
push 1
push dword ptr [ebp-76]
mov ebx, eax
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBA
jmp eax
.Lt_0FBA:
mov eax, dword ptr [ebp-76]
mov dword ptr [ebp+eax*8-24], ebx
movsx ebx, word ptr [ebp+24]
sal ebx, 3
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-80], eax
push offset _Lt_00C1
push 4042
push 2
push 1
push dword ptr [ebp-80]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBB
jmp eax
.Lt_0FBB:
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp+eax*8-20], ebx
movsx ebx, word ptr [ebp+20]
dec ebx
sal ebx, 3
dec ebx
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-84], eax
push offset _Lt_00C1
push 4043
push 2
push 1
push dword ptr [ebp-84]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBC
jmp eax
.Lt_0FBC:
mov eax, dword ptr [ebp-84]
mov dword ptr [ebp+eax*8-24], ebx
movsx ebx, word ptr [ebp+28]
sal ebx, 3
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-88], eax
push offset _Lt_00C1
push 4044
push 2
push 1
push dword ptr [ebp-88]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBD
jmp eax
.Lt_0FBD:
mov eax, dword ptr [ebp-88]
mov dword ptr [ebp+eax*8-20], ebx
push 2
push 4278190080
push 4278190080
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-104], ebx
push offset _Lt_00C1
push 4046
push 2
push 1
push dword ptr [ebp-104]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBE
jmp eax
.Lt_0FBE:
mov eax, dword ptr [ebp-104]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-100], eax
push offset _Lt_00C1
push 4046
push 2
push 1
push dword ptr [ebp-100]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBF
jmp eax
.Lt_0FBF:
mov eax, dword ptr [ebp-100]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-96], eax
push offset _Lt_00C1
push 4046
push 2
push 1
push dword ptr [ebp-96]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC0
jmp eax
.Lt_0FC0:
mov eax, dword ptr [ebp-96]
push dword ptr [ebp+eax*8-24]
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-92], eax
push offset _Lt_00C1
push 4046
push 2
push 1
push dword ptr [ebp-92]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC1
jmp eax
.Lt_0FC1:
mov eax, dword ptr [ebp-92]
push dword ptr [ebp+eax*8-24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
push 1
push 4278190080
push 4286808963
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-120], eax
push offset _Lt_00C1
push 4047
push 2
push 1
push dword ptr [ebp-120]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC2
jmp eax
.Lt_0FC2:
mov eax, dword ptr [ebp-120]
mov ebx, dword ptr [ebp+eax*8-20]
add ebx, 2
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-116], ebx
push offset _Lt_00C1
push 4047
push 2
push 1
push dword ptr [ebp-116]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC3
jmp eax
.Lt_0FC3:
mov eax, dword ptr [ebp-116]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-112], eax
push offset _Lt_00C1
push 4047
push 2
push 1
push dword ptr [ebp-112]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC4
jmp eax
.Lt_0FC4:
mov eax, dword ptr [ebp-112]
mov ebx, dword ptr [ebp+eax*8-24]
add ebx, -2
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-108], ebx
push offset _Lt_00C1
push 4047
push 2
push 1
push dword ptr [ebp-108]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC5
jmp eax
.Lt_0FC5:
mov eax, dword ptr [ebp-108]
push dword ptr [ebp+eax*8-24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
push 1
push 4278190080
push 4286808963
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-136], eax
push offset _Lt_00C1
push 4048
push 2
push 1
push dword ptr [ebp-136]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC6
jmp eax
.Lt_0FC6:
mov eax, dword ptr [ebp-136]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-132], eax
push offset _Lt_00C1
push 4048
push 2
push 1
push dword ptr [ebp-132]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC7
jmp eax
.Lt_0FC7:
mov eax, dword ptr [ebp-132]
mov ebx, dword ptr [ebp+eax*8-20]
add ebx, 2
push ebx
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-128], ebx
push offset _Lt_00C1
push 4048
push 2
push 1
push dword ptr [ebp-128]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC8
jmp eax
.Lt_0FC8:
mov eax, dword ptr [ebp-128]
push dword ptr [ebp+eax*8-24]
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-124], eax
push offset _Lt_00C1
push 4048
push 2
push 1
push dword ptr [ebp-124]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC9
jmp eax
.Lt_0FC9:
mov eax, dword ptr [ebp-124]
mov ebx, dword ptr [ebp+eax*8-24]
add ebx, -2
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
push 1
push 4278190080
push 4290822336
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-152], ebx
push offset _Lt_00C1
push 4049
push 2
push 1
push dword ptr [ebp-152]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCA
jmp eax
.Lt_0FCA:
mov eax, dword ptr [ebp-152]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-148], ebx
push offset _Lt_00C1
push 4049
push 2
push 1
push dword ptr [ebp-148]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCB
jmp eax
.Lt_0FCB:
mov eax, dword ptr [ebp-148]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-144], ebx
push offset _Lt_00C1
push 4049
push 2
push 1
push dword ptr [ebp-144]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCC
jmp eax
.Lt_0FCC:
mov eax, dword ptr [ebp-144]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-140], ebx
push offset _Lt_00C1
push 4049
push 2
push 1
push dword ptr [ebp-140]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCD
jmp eax
.Lt_0FCD:
mov eax, dword ptr [ebp-140]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
push 4278190080
push 4286808963
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-160], ebx
push offset _Lt_00C1
push 4050
push 2
push 1
push dword ptr [ebp-160]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCE
jmp eax
.Lt_0FCE:
mov eax, dword ptr [ebp-160]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-156], ebx
push offset _Lt_00C1
push 4050
push 2
push 1
push dword ptr [ebp-156]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCF
jmp eax
.Lt_0FCF:
mov eax, dword ptr [ebp-156]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4286808963
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-168], ebx
push offset _Lt_00C1
push 4051
push 2
push 1
push dword ptr [ebp-168]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD0
jmp eax
.Lt_0FD0:
mov eax, dword ptr [ebp-168]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-164], ebx
push offset _Lt_00C1
push 4051
push 2
push 1
push dword ptr [ebp-164]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD1
jmp eax
.Lt_0FD1:
mov eax, dword ptr [ebp-164]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4286808963
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-176], ebx
push offset _Lt_00C1
push 4052
push 2
push 1
push dword ptr [ebp-176]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD2
jmp eax
.Lt_0FD2:
mov eax, dword ptr [ebp-176]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-172], ebx
push offset _Lt_00C1
push 4052
push 2
push 1
push dword ptr [ebp-172]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD3
jmp eax
.Lt_0FD3:
mov eax, dword ptr [ebp-172]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4286808963
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-184], ebx
push offset _Lt_00C1
push 4053
push 2
push 1
push dword ptr [ebp-184]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD4
jmp eax
.Lt_0FD4:
mov eax, dword ptr [ebp-184]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-180], ebx
push offset _Lt_00C1
push 4053
push 2
push 1
push dword ptr [ebp-180]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD5
jmp eax
.Lt_0FD5:
mov eax, dword ptr [ebp-180]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_PIXEL@24
.Lt_0F99:
push dword ptr [ebp-192]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-188]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret 32
.balign 16

.globl _CLV_GLYPH_INI@4
_CLV_GLYPH_INI@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_0FD6:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0FE4
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
push 1
push dword ptr [ebp+8]
call _fb_ArrayLBound@8
mov dword ptr [ebp-4], eax
push 1
push dword ptr [ebp+8]
call _fb_ArrayUBound@8
mov dword ptr [ebp-16], eax
jmp .Lt_0FD9
.Lt_0FDC:
mov eax, dword ptr [ebp-4]
cmp eax, 32
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
cmp ebx, 126
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 250
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 254
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 65
setge bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-4]
cmp ecx, 90
setle cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp-4]
cmp ecx, 97
setge cl
shr ecx, 1
sbb ecx, ecx
mov esi, dword ptr [ebp-4]
cmp esi, 122
setle dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
or ebx, ecx
not ebx
and eax, ebx
je .Lt_0FDE
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-28], ebx
push offset _Lt_00C1
push 4060
mov ebx, dword ptr [ebp+8]
add ebx, 32
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
add ebx, 28
push dword ptr [ebx]
push dword ptr [ebp-28]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FE6
jmp eax
.Lt_0FE6:
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-28]
mov dword ptr [ebp-32], 0
push offset _Lt_00C1
push 4060
mov eax, dword ptr [ebp+8]
add eax, 44
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
add eax, 40
push dword ptr [eax]
push dword ptr [ebp-32]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FE7
jmp eax
.Lt_0FE7:
add ebx, dword ptr [ebp-32]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov dword ptr [ebx], 1
.Lt_0FDE:
.Lt_0FDD:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-20], ebx
push offset _Lt_00C1
push 4065
mov ebx, dword ptr [ebp+8]
add ebx, 32
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
add ebx, 28
push dword ptr [ebx]
push dword ptr [ebp-20]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FE8
jmp eax
.Lt_0FE8:
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-20]
mov dword ptr [ebp-24], 1
push offset _Lt_00C1
push 4065
mov eax, dword ptr [ebp+8]
add eax, 44
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
add eax, 40
push dword ptr [eax]
push dword ptr [ebp-24]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FE9
jmp eax
.Lt_0FE9:
add ebx, dword ptr [ebp-24]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx], eax
.Lt_0FDA:
inc dword ptr [ebp-4]
.Lt_0FD9:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-4], eax
jle .Lt_0FDC
.Lt_0FDB:
.Lt_0FD7:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _INPUT_TEXT@28
_INPUT_TEXT@28:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0FF2:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0FFC
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_0FF4:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push offset _CLV_BUFFER
call _CLV_BUFFER_COPY@12
push 15
push 7
movzx eax, word ptr [ebp+20]
push eax
movzx eax, word ptr [ebp+16]
push eax
movzx eax, word ptr [ebp+20]
push eax
movzx eax, word ptr [ebp+16]
push eax
push dword ptr [ebp+8]
push offset _CLV_BUFFER
call _FRAME_PUT@32
call _CINPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
push 7
push offset _Lt_0FF9
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0FF8
.Lt_0FFA:
jmp .Lt_0FF5
.Lt_0FF8:
.Lt_0FF7:
.Lt_0FF6:
jmp .Lt_0FF4
.Lt_0FF5:
.Lt_0FF3:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret 28
.balign 16

.globl _MAP_LOAD@4
_MAP_LOAD@4:
push ebp
mov ebp, esp
sub esp, 1940
push ebx
.Lt_0FFE:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-320], eax
push offset _Lt_1105
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-324], eax
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 5
mov dword ptr [ebp-16], 10
mov dword ptr [ebp-20], 35
mov dword ptr [ebp-24], 15
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 161
mov eax, dword ptr [_CLV_BUFFER_PROGRESS]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-40], 0
push dword ptr [_PROGRESS_DELAY]
push dword ptr [_PROGRESS_DELAY+4]
pop dword ptr [ebp-44]
pop dword ptr [ebp-48]
call _fb_Timer@0
fsub qword ptr [ebp-48]
fstp qword ptr [ebp-56]
push 0
push 12
push offset _Lt_1000
push -1
lea eax, [ebp-68]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
call _fb_SPACE@4
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-88], 1
push 0
push -1
push 0
call _fb_SPACE@4
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
call _fb_SPACE@4
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
call _fb_SPACE@4
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
call _fb_SPACE@4
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-84], 4284489983
push dword ptr [ebp-44]
push dword ptr [ebp-48]
lea eax, [ebp-56]
push eax
lea eax, [ebp-80]
push eax
push 0
push dword ptr [ebp-84]
push dword ptr [ebp-88]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 12
push offset _Lt_1001
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign@20
lea eax, [ebp-148]
push eax
call _SYNC_NAMES@8
push eax
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign@20
lea eax, [ebp-148]
push eax
call _fb_StrDelete@4
push 0
push -1
push 2
push offset _Lt_009C
push -1
push -1
push offset _MAPNAME_STR
push -1
push 2
push offset _Lt_009C
push -1
push 2
push offset _Lt_0117
push -1
lea eax, [ebp-68]
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
push offset _DATA_TABLE
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 6
push offset _Lt_1007
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign@20
lea eax, [ebp-208]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_AA_SI]
lea eax, [ebp-208]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 6
push offset _Lt_1009
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign@20
lea eax, [ebp-220]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_DD_SI]
lea eax, [ebp-220]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [_AA_SI]
movsx ebx, word ptr [_DD_SI]
imul eax, ebx
imul eax, 23
add dword ptr [ebp-32], eax
push dword ptr [ebp-44]
push dword ptr [ebp-48]
lea eax, [ebp-56]
push eax
lea eax, [ebp-80]
push eax
push 3
push dword ptr [ebp-84]
push dword ptr [ebp-88]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
mov dword ptr [ebp-4], 0
.Lt_100E:
mov dword ptr [ebp-8], 1
.Lt_1012:
push offset _DATA_TABLE
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_1015
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
lea eax, [ebp-344]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
lea eax, [ebp-356]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
lea eax, [ebp-368]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
lea eax, [ebp-380]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-392]
push eax
call _fb_StrAssign@20
lea eax, [ebp-392]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-328], eax
push offset _Lt_00C1
push 4108
push 4
push dword ptr [ebp-328]
fstp qword ptr [ebp-400]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1107
jmp eax
.Lt_1107:
mov eax, dword ptr [ebp-328]
imul eax, 3
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-332], ebx
push offset _Lt_00C1
push 4108
push 2
push dword ptr [ebp-332]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1108
jmp eax
.Lt_1108:
add ebx, dword ptr [ebp-332]
fld qword ptr [ebp-400]
fistp word ptr [_D_SIA+ebx*2]
lea ebx, [ebp-392]
push ebx
call _fb_StrDelete@4
.Lt_1010:
inc dword ptr [ebp-8]
.Lt_100F:
cmp dword ptr [ebp-8], 2
jle .Lt_1012
.Lt_1011:
.Lt_100C:
inc dword ptr [ebp-4]
.Lt_100B:
cmp dword ptr [ebp-4], 4
jle .Lt_100E
.Lt_100D:
push dword ptr [ebp-44]
push dword ptr [ebp-48]
lea ebx, [ebp-56]
push ebx
lea ebx, [ebp-80]
push ebx
push 10
push dword ptr [ebp-84]
push dword ptr [ebp-88]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea ebx, [ebp-28]
push ebx
lea ebx, [ebp-68]
push ebx
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
push offset _DATA_TABLE
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 6
push offset _Lt_101D
push -1
lea ebx, [ebp-232]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-232]
push ebx
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_EX_SI]
lea eax, [ebp-232]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push 6
push offset _Lt_101F
push -1
lea eax, [ebp-244]
push eax
call _fb_StrAssign@20
lea eax, [ebp-244]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_DY_SI]
lea eax, [ebp-244]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push 7
push offset _Lt_1021
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign@20
lea eax, [ebp-256]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_MDX_SI]
lea eax, [ebp-256]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
push 0
push 7
push offset _Lt_1023
push -1
lea eax, [ebp-268]
push eax
call _fb_StrAssign@20
lea eax, [ebp-268]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_MDY_SI]
lea eax, [ebp-268]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push 13
push offset _Lt_1025
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign@20
lea eax, [ebp-280]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_TEXTCOLOR_SI]
lea eax, [ebp-280]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
push 0
push 13
push offset _Lt_1027
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign@20
lea eax, [ebp-292]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fstp dword ptr [_TEXTDELAY_SF]
lea eax, [ebp-292]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
push 0
push 7
push offset _Lt_1029
push -1
lea eax, [ebp-304]
push eax
call _fb_StrAssign@20
lea eax, [ebp-304]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_WIN_SI]
lea eax, [ebp-304]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-8], 0
.Lt_102E:
mov dword ptr [ebp-4], 1
.Lt_1032:
push offset _DATA_TABLE
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_1015
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
lea eax, [ebp-344]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
lea eax, [ebp-356]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
lea eax, [ebp-368]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
lea eax, [ebp-380]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-392]
push eax
call _fb_StrAssign@20
lea eax, [ebp-392]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-328], eax
push offset _Lt_00C1
push 4133
push 4
push dword ptr [ebp-328]
fstp qword ptr [ebp-400]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_110A
jmp eax
.Lt_110A:
mov eax, dword ptr [ebp-328]
imul eax, 3
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-332], ebx
push offset _Lt_00C1
push 4133
push 2
push dword ptr [ebp-332]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_110B
jmp eax
.Lt_110B:
add ebx, dword ptr [ebp-332]
fld qword ptr [ebp-400]
fistp word ptr [_D_SIA+ebx*2]
lea ebx, [ebp-392]
push ebx
call _fb_StrDelete@4
.Lt_1030:
inc dword ptr [ebp-4]
.Lt_102F:
cmp dword ptr [ebp-4], 2
jle .Lt_1032
.Lt_1031:
.Lt_102C:
inc dword ptr [ebp-8]
.Lt_102B:
cmp dword ptr [ebp-8], 4
jle .Lt_102E
.Lt_102D:
push dword ptr [ebp-44]
push dword ptr [ebp-48]
lea ebx, [ebp-56]
push ebx
lea ebx, [ebp-80]
push ebx
push 10
push dword ptr [ebp-84]
push dword ptr [ebp-88]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea ebx, [ebp-28]
push ebx
lea ebx, [ebp-68]
push ebx
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
mov dword ptr [ebp-4], 0
movsx ebx, word ptr [_WIN_SI]
mov dword ptr [ebp-328], ebx
jmp .Lt_103B
.Lt_103E:
mov dword ptr [ebp-8], 1
.Lt_1042:
push offset _DATA_TABLE
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 9
push offset _Lt_1044
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
lea eax, [ebp-344]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
lea eax, [ebp-356]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
lea eax, [ebp-368]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
lea eax, [ebp-380]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-392]
push eax
call _fb_StrAssign@20
lea eax, [ebp-392]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
mov eax, dword ptr [ebp-4]
sal eax, 1
add eax, dword ptr [ebp-8]
add eax, -2
mov dword ptr [ebp-332], eax
push offset _Lt_00C1
push 4140
mov eax, offset _WIN_SIA + 32
push dword ptr [eax]
mov eax, offset _WIN_SIA + 28
push dword ptr [eax]
push dword ptr [ebp-332]
fstp qword ptr [ebp-400]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_110D
jmp eax
.Lt_110D:
mov eax, dword ptr [ebp-332]
sal eax, 1
add eax, dword ptr [_WIN_SIA]
fld qword ptr [ebp-400]
fistp word ptr [eax]
lea eax, [ebp-392]
push eax
call _fb_StrDelete@4
.Lt_1040:
inc dword ptr [ebp-8]
.Lt_103F:
cmp dword ptr [ebp-8], 2
jle .Lt_1042
.Lt_1041:
.Lt_103C:
inc dword ptr [ebp-4]
.Lt_103B:
mov eax, dword ptr [ebp-328]
cmp dword ptr [ebp-4], eax
jle .Lt_103E
.Lt_103D:
movsx eax, word ptr [_WIN_SI]
sal eax, 1
add eax, dword ptr [ebp-32]
add eax, 2
mov dword ptr [ebp-32], eax
push dword ptr [ebp-44]
push dword ptr [ebp-48]
lea eax, [ebp-56]
push eax
lea eax, [ebp-80]
push eax
movsx eax, word ptr [_WIN_SI]
sal eax, 1
add eax, 2
push eax
push dword ptr [ebp-84]
push dword ptr [ebp-88]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
mov word ptr [_T_SI], 0
.Lt_104D:
mov dword ptr [ebp-4], 1
.Lt_1051:
push offset _DATA_TABLE
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_T_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 7
push offset _Lt_1053
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
lea eax, [ebp-340]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
lea eax, [ebp-352]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-364]
push eax
call _fb_StrAssign@20
lea eax, [ebp-364]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_T_SI]
mov dword ptr [ebp-328], eax
push offset _Lt_00C1
push 4149
push 64
push dword ptr [ebp-328]
fstp qword ptr [ebp-372]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_110F
jmp eax
.Lt_110F:
mov eax, dword ptr [ebp-328]
fld qword ptr [ebp-372]
fistp word ptr [_L_SIA+eax*2]
lea eax, [ebp-364]
push eax
call _fb_StrDelete@4
.Lt_104F:
inc dword ptr [ebp-4]
.Lt_104E:
cmp dword ptr [ebp-4], 2
jle .Lt_1051
.Lt_1050:
.Lt_104B:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_104A:
movsx eax, word ptr [_T_SI]
cmp eax, 64
jle .Lt_104D
.Lt_104C:
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push 9
push offset _Lt_1057
push -1
lea eax, [ebp-316]
push eax
call _fb_StrAssign@20
lea eax, [ebp-316]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _CTRL_STR
call _fb_StrAssign@20
lea eax, [ebp-316]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-44]
push dword ptr [ebp-48]
lea eax, [ebp-56]
push eax
lea eax, [ebp-80]
push eax
push 131
push dword ptr [ebp-84]
push dword ptr [ebp-88]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-328], ax
jmp .Lt_105A
.Lt_105D:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-332], ax
jmp .Lt_105F
.Lt_1062:
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1064
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
lea eax, [ebp-348]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
lea eax, [ebp-360]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
lea eax, [ebp-372]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
lea eax, [ebp-384]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-396]
push eax
call _fb_StrAssign@20
lea eax, [ebp-396]
push eax
call _SYNC_NAMES@8
push eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-336], eax
push offset _Lt_00C1
push 4158
push 65536
push dword ptr [ebp-336]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1111
jmp eax
.Lt_1111:
mov eax, dword ptr [ebp-336]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-396]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_106B
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
lea eax, [ebp-412]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
lea eax, [ebp-424]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-460]
push eax
call _fb_StrAssign@20
lea eax, [ebp-460]
push eax
call _SYNC_NAMES@8
push eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-400], eax
push offset _Lt_00C1
push 4159
push 65536
push dword ptr [ebp-400]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1112
jmp eax
.Lt_1112:
mov eax, dword ptr [ebp-400]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-460]
push ebx
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-524], 0
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1072
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
lea eax, [ebp-476]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
lea eax, [ebp-488]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
lea eax, [ebp-500]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-512], 0
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
lea eax, [ebp-512]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-524]
push eax
call _fb_StrAssign@20
lea eax, [ebp-524]
push eax
call _SYNC_NAMES@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-464], eax
push offset _Lt_00C1
push 4160
push 65536
push dword ptr [ebp-464]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1113
jmp eax
.Lt_1113:
mov eax, dword ptr [ebp-464]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
lea ebx, [ebp-524]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
mov dword ptr [ebp-580], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1079
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
mov dword ptr [ebp-532], 0
lea eax, [ebp-540]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
mov dword ptr [ebp-544], 0
lea eax, [ebp-552]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
mov dword ptr [ebp-556], 0
lea eax, [ebp-564]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
mov dword ptr [ebp-568], 0
lea eax, [ebp-576]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-588]
push eax
call _fb_StrAssign@20
lea eax, [ebp-588]
push eax
call _SYNC_NAMES@8
push eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-528], eax
push offset _Lt_00C1
push 4161
push 65536
push dword ptr [ebp-528]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1114
jmp eax
.Lt_1114:
mov eax, dword ptr [ebp-528]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-588]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-652], 0
mov dword ptr [ebp-648], 0
mov dword ptr [ebp-644], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 18
push offset _Lt_1080
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
lea eax, [ebp-604]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
lea eax, [ebp-616]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-628], 0
mov dword ptr [ebp-624], 0
mov dword ptr [ebp-620], 0
lea eax, [ebp-628]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-640], 0
mov dword ptr [ebp-636], 0
mov dword ptr [ebp-632], 0
lea eax, [ebp-640]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-652]
push eax
call _fb_StrAssign@20
lea eax, [ebp-652]
push eax
call _SYNC_NAMES@8
push eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-592], eax
push offset _Lt_00C1
push 4162
push 65536
push dword ptr [ebp-592]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1115
jmp eax
.Lt_1115:
mov eax, dword ptr [ebp-592]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-652]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-716], 0
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 16
push offset _Lt_1087
mov dword ptr [ebp-668], 0
mov dword ptr [ebp-664], 0
mov dword ptr [ebp-660], 0
lea eax, [ebp-668]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-680], 0
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
lea eax, [ebp-680]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-692], 0
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
lea eax, [ebp-692]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-704], 0
mov dword ptr [ebp-700], 0
mov dword ptr [ebp-696], 0
lea eax, [ebp-704]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-716]
push eax
call _fb_StrAssign@20
lea eax, [ebp-716]
push eax
call _SYNC_NAMES@8
push eax
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-656], eax
push offset _Lt_00C1
push 4163
push 65536
push dword ptr [ebp-656]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1116
jmp eax
.Lt_1116:
mov eax, dword ptr [ebp-656]
imul eax, 108
lea ebx, [_E_STRA+eax+60]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-716]
push ebx
call _fb_StrDelete@4
push dword ptr [ebp-44]
push dword ptr [ebp-48]
lea ebx, [ebp-56]
push ebx
lea ebx, [ebp-80]
push ebx
push 6
push dword ptr [ebp-84]
push dword ptr [ebp-88]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea ebx, [ebp-28]
push ebx
lea ebx, [ebp-68]
push ebx
push dword ptr [ebp-40]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
push offset _DATA_TABLE
mov dword ptr [ebp-780], 0
mov dword ptr [ebp-776], 0
mov dword ptr [ebp-772], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_108E
mov dword ptr [ebp-732], 0
mov dword ptr [ebp-728], 0
mov dword ptr [ebp-724], 0
lea eax, [ebp-732]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
mov dword ptr [ebp-736], 0
lea eax, [ebp-744]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
mov dword ptr [ebp-748], 0
lea eax, [ebp-756]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-768], 0
mov dword ptr [ebp-764], 0
mov dword ptr [ebp-760], 0
lea eax, [ebp-768]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-780]
push eax
call _fb_StrAssign@20
lea eax, [ebp-780]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-720], eax
push offset _Lt_00C1
push 4166
push 65536
push dword ptr [ebp-720]
fstp qword ptr [ebp-1812]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1117
jmp eax
.Lt_1117:
mov eax, dword ptr [ebp-720]
imul eax, 136
push dword ptr [ebp-1812]
push dword ptr [ebp-1808]
pop dword ptr [_G_DFA+eax+4]
pop dword ptr [_G_DFA+eax]
lea eax, [ebp-780]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-844], 0
mov dword ptr [ebp-840], 0
mov dword ptr [ebp-836], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_1095
mov dword ptr [ebp-796], 0
mov dword ptr [ebp-792], 0
mov dword ptr [ebp-788], 0
lea eax, [ebp-796]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-808], 0
mov dword ptr [ebp-804], 0
mov dword ptr [ebp-800], 0
lea eax, [ebp-808]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-820], 0
mov dword ptr [ebp-816], 0
mov dword ptr [ebp-812], 0
lea eax, [ebp-820]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-832], 0
mov dword ptr [ebp-828], 0
mov dword ptr [ebp-824], 0
lea eax, [ebp-832]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-844]
push eax
call _fb_StrAssign@20
lea eax, [ebp-844]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-784], eax
push offset _Lt_00C1
push 4167
push 65536
push dword ptr [ebp-784]
fstp qword ptr [ebp-1820]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1118
jmp eax
.Lt_1118:
mov eax, dword ptr [ebp-784]
imul eax, 136
push dword ptr [ebp-1820]
push dword ptr [ebp-1816]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
lea eax, [ebp-844]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-908], 0
mov dword ptr [ebp-904], 0
mov dword ptr [ebp-900], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_109C
mov dword ptr [ebp-860], 0
mov dword ptr [ebp-856], 0
mov dword ptr [ebp-852], 0
lea eax, [ebp-860]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-872], 0
mov dword ptr [ebp-868], 0
mov dword ptr [ebp-864], 0
lea eax, [ebp-872]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-884], 0
mov dword ptr [ebp-880], 0
mov dword ptr [ebp-876], 0
lea eax, [ebp-884]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-896], 0
mov dword ptr [ebp-892], 0
mov dword ptr [ebp-888], 0
lea eax, [ebp-896]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-908]
push eax
call _fb_StrAssign@20
lea eax, [ebp-908]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-848], eax
push offset _Lt_00C1
push 4168
push 65536
push dword ptr [ebp-848]
fstp qword ptr [ebp-1828]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1119
jmp eax
.Lt_1119:
mov eax, dword ptr [ebp-848]
imul eax, 136
push dword ptr [ebp-1828]
push dword ptr [ebp-1824]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
lea eax, [ebp-908]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-972], 0
mov dword ptr [ebp-968], 0
mov dword ptr [ebp-964], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10A3
mov dword ptr [ebp-924], 0
mov dword ptr [ebp-920], 0
mov dword ptr [ebp-916], 0
lea eax, [ebp-924]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-936], 0
mov dword ptr [ebp-932], 0
mov dword ptr [ebp-928], 0
lea eax, [ebp-936]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-948], 0
mov dword ptr [ebp-944], 0
mov dword ptr [ebp-940], 0
lea eax, [ebp-948]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-960], 0
mov dword ptr [ebp-956], 0
mov dword ptr [ebp-952], 0
lea eax, [ebp-960]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-972]
push eax
call _fb_StrAssign@20
lea eax, [ebp-972]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-912], eax
push offset _Lt_00C1
push 4169
push 65536
push dword ptr [ebp-912]
fstp qword ptr [ebp-1836]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111A
jmp eax
.Lt_111A:
mov eax, dword ptr [ebp-912]
imul eax, 136
push dword ptr [ebp-1836]
push dword ptr [ebp-1832]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
lea eax, [ebp-972]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1036], 0
mov dword ptr [ebp-1032], 0
mov dword ptr [ebp-1028], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10AA
mov dword ptr [ebp-988], 0
mov dword ptr [ebp-984], 0
mov dword ptr [ebp-980], 0
lea eax, [ebp-988]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1000], 0
mov dword ptr [ebp-996], 0
mov dword ptr [ebp-992], 0
lea eax, [ebp-1000]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1012], 0
mov dword ptr [ebp-1008], 0
mov dword ptr [ebp-1004], 0
lea eax, [ebp-1012]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1024], 0
mov dword ptr [ebp-1020], 0
mov dword ptr [ebp-1016], 0
lea eax, [ebp-1024]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1036]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1036]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-976], eax
push offset _Lt_00C1
push 4170
push 65536
push dword ptr [ebp-976]
fstp qword ptr [ebp-1844]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111B
jmp eax
.Lt_111B:
mov eax, dword ptr [ebp-976]
imul eax, 136
push dword ptr [ebp-1844]
push dword ptr [ebp-1840]
pop dword ptr [_G_DFA+eax+36]
pop dword ptr [_G_DFA+eax+32]
lea eax, [ebp-1036]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1100], 0
mov dword ptr [ebp-1096], 0
mov dword ptr [ebp-1092], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10B1
mov dword ptr [ebp-1052], 0
mov dword ptr [ebp-1048], 0
mov dword ptr [ebp-1044], 0
lea eax, [ebp-1052]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1064], 0
mov dword ptr [ebp-1060], 0
mov dword ptr [ebp-1056], 0
lea eax, [ebp-1064]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1076], 0
mov dword ptr [ebp-1072], 0
mov dword ptr [ebp-1068], 0
lea eax, [ebp-1076]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1088], 0
mov dword ptr [ebp-1084], 0
mov dword ptr [ebp-1080], 0
lea eax, [ebp-1088]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1100]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1100]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1040], eax
push offset _Lt_00C1
push 4171
push 65536
push dword ptr [ebp-1040]
fstp qword ptr [ebp-1852]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111C
jmp eax
.Lt_111C:
mov eax, dword ptr [ebp-1040]
imul eax, 136
push dword ptr [ebp-1852]
push dword ptr [ebp-1848]
pop dword ptr [_G_DFA+eax+44]
pop dword ptr [_G_DFA+eax+40]
lea eax, [ebp-1100]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
mov dword ptr [ebp-1156], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10B8
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
lea eax, [ebp-1116]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
lea eax, [ebp-1128]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
lea eax, [ebp-1140]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
mov dword ptr [ebp-1144], 0
lea eax, [ebp-1152]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1164]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1164]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1104], eax
push offset _Lt_00C1
push 4172
push 65536
push dword ptr [ebp-1104]
fstp qword ptr [ebp-1860]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111D
jmp eax
.Lt_111D:
mov eax, dword ptr [ebp-1104]
imul eax, 136
push dword ptr [ebp-1860]
push dword ptr [ebp-1856]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
lea eax, [ebp-1164]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1228], 0
mov dword ptr [ebp-1224], 0
mov dword ptr [ebp-1220], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10BF
mov dword ptr [ebp-1180], 0
mov dword ptr [ebp-1176], 0
mov dword ptr [ebp-1172], 0
lea eax, [ebp-1180]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1192], 0
mov dword ptr [ebp-1188], 0
mov dword ptr [ebp-1184], 0
lea eax, [ebp-1192]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1204], 0
mov dword ptr [ebp-1200], 0
mov dword ptr [ebp-1196], 0
lea eax, [ebp-1204]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1216], 0
mov dword ptr [ebp-1212], 0
mov dword ptr [ebp-1208], 0
lea eax, [ebp-1216]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1228]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1228]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1168], eax
push offset _Lt_00C1
push 4173
push 65536
push dword ptr [ebp-1168]
fstp qword ptr [ebp-1868]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111E
jmp eax
.Lt_111E:
mov eax, dword ptr [ebp-1168]
imul eax, 136
push dword ptr [ebp-1868]
push dword ptr [ebp-1864]
pop dword ptr [_G_DFA+eax+60]
pop dword ptr [_G_DFA+eax+56]
lea eax, [ebp-1228]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1292], 0
mov dword ptr [ebp-1288], 0
mov dword ptr [ebp-1284], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10C6
mov dword ptr [ebp-1244], 0
mov dword ptr [ebp-1240], 0
mov dword ptr [ebp-1236], 0
lea eax, [ebp-1244]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1256], 0
mov dword ptr [ebp-1252], 0
mov dword ptr [ebp-1248], 0
lea eax, [ebp-1256]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1268], 0
mov dword ptr [ebp-1264], 0
mov dword ptr [ebp-1260], 0
lea eax, [ebp-1268]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1280], 0
mov dword ptr [ebp-1276], 0
mov dword ptr [ebp-1272], 0
lea eax, [ebp-1280]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1292]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1292]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1232], eax
push offset _Lt_00C1
push 4174
push 65536
push dword ptr [ebp-1232]
fstp qword ptr [ebp-1876]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111F
jmp eax
.Lt_111F:
mov eax, dword ptr [ebp-1232]
imul eax, 136
push dword ptr [ebp-1876]
push dword ptr [ebp-1872]
pop dword ptr [_G_DFA+eax+68]
pop dword ptr [_G_DFA+eax+64]
lea eax, [ebp-1292]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1356], 0
mov dword ptr [ebp-1352], 0
mov dword ptr [ebp-1348], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10CD
mov dword ptr [ebp-1308], 0
mov dword ptr [ebp-1304], 0
mov dword ptr [ebp-1300], 0
lea eax, [ebp-1308]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1320], 0
mov dword ptr [ebp-1316], 0
mov dword ptr [ebp-1312], 0
lea eax, [ebp-1320]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1332], 0
mov dword ptr [ebp-1328], 0
mov dword ptr [ebp-1324], 0
lea eax, [ebp-1332]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1344], 0
mov dword ptr [ebp-1340], 0
mov dword ptr [ebp-1336], 0
lea eax, [ebp-1344]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1356]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1356]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1296], eax
push offset _Lt_00C1
push 4175
push 65536
push dword ptr [ebp-1296]
fstp qword ptr [ebp-1884]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1120
jmp eax
.Lt_1120:
mov eax, dword ptr [ebp-1296]
imul eax, 136
push dword ptr [ebp-1884]
push dword ptr [ebp-1880]
pop dword ptr [_G_DFA+eax+76]
pop dword ptr [_G_DFA+eax+72]
lea eax, [ebp-1356]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1420], 0
mov dword ptr [ebp-1416], 0
mov dword ptr [ebp-1412], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_10D4
mov dword ptr [ebp-1372], 0
mov dword ptr [ebp-1368], 0
mov dword ptr [ebp-1364], 0
lea eax, [ebp-1372]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1384], 0
mov dword ptr [ebp-1380], 0
mov dword ptr [ebp-1376], 0
lea eax, [ebp-1384]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1396], 0
mov dword ptr [ebp-1392], 0
mov dword ptr [ebp-1388], 0
lea eax, [ebp-1396]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1408], 0
mov dword ptr [ebp-1404], 0
mov dword ptr [ebp-1400], 0
lea eax, [ebp-1408]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1420]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1420]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1360], eax
push offset _Lt_00C1
push 4176
push 65536
push dword ptr [ebp-1360]
fstp qword ptr [ebp-1892]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1121
jmp eax
.Lt_1121:
mov eax, dword ptr [ebp-1360]
imul eax, 136
push dword ptr [ebp-1892]
push dword ptr [ebp-1888]
pop dword ptr [_G_DFA+eax+84]
pop dword ptr [_G_DFA+eax+80]
lea eax, [ebp-1420]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1484], 0
mov dword ptr [ebp-1480], 0
mov dword ptr [ebp-1476], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_10DB
mov dword ptr [ebp-1436], 0
mov dword ptr [ebp-1432], 0
mov dword ptr [ebp-1428], 0
lea eax, [ebp-1436]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1448], 0
mov dword ptr [ebp-1444], 0
mov dword ptr [ebp-1440], 0
lea eax, [ebp-1448]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1460], 0
mov dword ptr [ebp-1456], 0
mov dword ptr [ebp-1452], 0
lea eax, [ebp-1460]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1472], 0
mov dword ptr [ebp-1468], 0
mov dword ptr [ebp-1464], 0
lea eax, [ebp-1472]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1484]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1484]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1424], eax
push offset _Lt_00C1
push 4177
push 65536
push dword ptr [ebp-1424]
fstp qword ptr [ebp-1900]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1122
jmp eax
.Lt_1122:
mov eax, dword ptr [ebp-1424]
imul eax, 136
push dword ptr [ebp-1900]
push dword ptr [ebp-1896]
pop dword ptr [_G_DFA+eax+92]
pop dword ptr [_G_DFA+eax+88]
lea eax, [ebp-1484]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1548], 0
mov dword ptr [ebp-1544], 0
mov dword ptr [ebp-1540], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10E2
mov dword ptr [ebp-1500], 0
mov dword ptr [ebp-1496], 0
mov dword ptr [ebp-1492], 0
lea eax, [ebp-1500]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1512], 0
mov dword ptr [ebp-1508], 0
mov dword ptr [ebp-1504], 0
lea eax, [ebp-1512]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1524], 0
mov dword ptr [ebp-1520], 0
mov dword ptr [ebp-1516], 0
lea eax, [ebp-1524]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1536], 0
mov dword ptr [ebp-1532], 0
mov dword ptr [ebp-1528], 0
lea eax, [ebp-1536]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1548]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1548]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1488], eax
push offset _Lt_00C1
push 4178
push 65536
push dword ptr [ebp-1488]
fstp qword ptr [ebp-1908]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1123
jmp eax
.Lt_1123:
mov eax, dword ptr [ebp-1488]
imul eax, 136
push dword ptr [ebp-1908]
push dword ptr [ebp-1904]
pop dword ptr [_G_DFA+eax+100]
pop dword ptr [_G_DFA+eax+96]
lea eax, [ebp-1548]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1612], 0
mov dword ptr [ebp-1608], 0
mov dword ptr [ebp-1604], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10E9
mov dword ptr [ebp-1564], 0
mov dword ptr [ebp-1560], 0
mov dword ptr [ebp-1556], 0
lea eax, [ebp-1564]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1576], 0
mov dword ptr [ebp-1572], 0
mov dword ptr [ebp-1568], 0
lea eax, [ebp-1576]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1588], 0
mov dword ptr [ebp-1584], 0
mov dword ptr [ebp-1580], 0
lea eax, [ebp-1588]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1600], 0
mov dword ptr [ebp-1596], 0
mov dword ptr [ebp-1592], 0
lea eax, [ebp-1600]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1612]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1612]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1552], eax
push offset _Lt_00C1
push 4179
push 65536
push dword ptr [ebp-1552]
fstp qword ptr [ebp-1916]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1124
jmp eax
.Lt_1124:
mov eax, dword ptr [ebp-1552]
imul eax, 136
push dword ptr [ebp-1916]
push dword ptr [ebp-1912]
pop dword ptr [_G_DFA+eax+108]
pop dword ptr [_G_DFA+eax+104]
lea eax, [ebp-1612]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1676], 0
mov dword ptr [ebp-1672], 0
mov dword ptr [ebp-1668], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10F0
mov dword ptr [ebp-1628], 0
mov dword ptr [ebp-1624], 0
mov dword ptr [ebp-1620], 0
lea eax, [ebp-1628]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1640], 0
mov dword ptr [ebp-1636], 0
mov dword ptr [ebp-1632], 0
lea eax, [ebp-1640]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1652], 0
mov dword ptr [ebp-1648], 0
mov dword ptr [ebp-1644], 0
lea eax, [ebp-1652]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1664], 0
mov dword ptr [ebp-1660], 0
mov dword ptr [ebp-1656], 0
lea eax, [ebp-1664]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1676]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1676]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1616], eax
push offset _Lt_00C1
push 4180
push 65536
push dword ptr [ebp-1616]
fstp qword ptr [ebp-1924]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1125
jmp eax
.Lt_1125:
mov eax, dword ptr [ebp-1616]
imul eax, 136
push dword ptr [ebp-1924]
push dword ptr [ebp-1920]
pop dword ptr [_G_DFA+eax+116]
pop dword ptr [_G_DFA+eax+112]
lea eax, [ebp-1676]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1740], 0
mov dword ptr [ebp-1736], 0
mov dword ptr [ebp-1732], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10F7
mov dword ptr [ebp-1692], 0
mov dword ptr [ebp-1688], 0
mov dword ptr [ebp-1684], 0
lea eax, [ebp-1692]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1704], 0
mov dword ptr [ebp-1700], 0
mov dword ptr [ebp-1696], 0
lea eax, [ebp-1704]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1716], 0
mov dword ptr [ebp-1712], 0
mov dword ptr [ebp-1708], 0
lea eax, [ebp-1716]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1728], 0
mov dword ptr [ebp-1724], 0
mov dword ptr [ebp-1720], 0
lea eax, [ebp-1728]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1740]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1740]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1680], eax
push offset _Lt_00C1
push 4181
push 65536
push dword ptr [ebp-1680]
fstp qword ptr [ebp-1932]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1126
jmp eax
.Lt_1126:
mov eax, dword ptr [ebp-1680]
imul eax, 136
push dword ptr [ebp-1932]
push dword ptr [ebp-1928]
pop dword ptr [_G_DFA+eax+124]
pop dword ptr [_G_DFA+eax+120]
lea eax, [ebp-1740]
push eax
call _fb_StrDelete@4
push offset _DATA_TABLE
mov dword ptr [ebp-1804], 0
mov dword ptr [ebp-1800], 0
mov dword ptr [ebp-1796], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10FE
mov dword ptr [ebp-1756], 0
mov dword ptr [ebp-1752], 0
mov dword ptr [ebp-1748], 0
lea eax, [ebp-1756]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1768], 0
mov dword ptr [ebp-1764], 0
mov dword ptr [ebp-1760], 0
lea eax, [ebp-1768]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1780], 0
mov dword ptr [ebp-1776], 0
mov dword ptr [ebp-1772], 0
lea eax, [ebp-1780]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1792], 0
mov dword ptr [ebp-1788], 0
mov dword ptr [ebp-1784], 0
lea eax, [ebp-1792]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1804]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1804]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1744], eax
push offset _Lt_00C1
push 4182
push 65536
push dword ptr [ebp-1744]
fstp qword ptr [ebp-1940]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1127
jmp eax
.Lt_1127:
mov eax, dword ptr [ebp-1744]
imul eax, 136
push dword ptr [ebp-1940]
push dword ptr [ebp-1936]
pop dword ptr [_G_DFA+eax+132]
pop dword ptr [_G_DFA+eax+128]
lea eax, [ebp-1804]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-44]
push dword ptr [ebp-48]
lea eax, [ebp-56]
push eax
lea eax, [ebp-80]
push eax
push 17
push dword ptr [ebp-84]
push dword ptr [ebp-88]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
.Lt_1060:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_105F:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-332]
cmp eax, ebx
jle .Lt_1062
.Lt_1061:
.Lt_105B:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_105A:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-328]
cmp ebx, eax
jle .Lt_105D
.Lt_105C:
push dword ptr [_Lt_0298+4]
push dword ptr [_Lt_0298]
lea eax, [ebp-56]
push eax
lea eax, [ebp-80]
push eax
push 0
push dword ptr [ebp-84]
push dword ptr [ebp-88]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
push 1
call _fb_Sleep@4
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
lea eax, [ebp-136]
push eax
call _fb_StrDelete@4
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
.Lt_0FFF:
push dword ptr [ebp-324]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-320]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _MAP_SAVE@4
_MAP_SAVE@4:
push ebp
mov ebp, esp
sub esp, 2120
push ebx
.Lt_1139:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-420], eax
push offset _Lt_123A
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-424], eax
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 5
mov dword ptr [ebp-16], 10
mov dword ptr [ebp-20], 35
mov dword ptr [ebp-24], 15
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 161
mov eax, dword ptr [_CLV_BUFFER_PROGRESS]
mov dword ptr [ebp-36], eax
push dword ptr [_PROGRESS_DELAY]
push dword ptr [_PROGRESS_DELAY+4]
pop dword ptr [ebp-40]
pop dword ptr [ebp-44]
call _fb_Timer@0
fsub qword ptr [ebp-44]
fstp qword ptr [ebp-52]
mov dword ptr [ebp-56], 0
push 0
push -1
push 2
push offset _Lt_009C
push -1
push -1
push offset _MAPNAME_STR
push 13
push offset _Lt_113C
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
call _fb_SPACE@4
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 1
mov dword ptr [ebp-108], 4284489983
push dword ptr [ebp-40]
push dword ptr [ebp-44]
lea eax, [ebp-52]
push eax
lea eax, [ebp-104]
push eax
push 0
push dword ptr [ebp-108]
push dword ptr [ebp-112]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
push offset _QUEUE_TABLE
call _WIPE_TABLE@4
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-128], 0
push 0
push -1
push 0
call _fb_SPACE@4
push eax
push -1
lea eax, [ebp-140]
push eax
call _fb_StrInit@20
push offset _NAMES_BUFFER
push offset _MAPNAME_STR
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 12
push offset _Lt_1001
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign@20
lea eax, [ebp-152]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-152]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
movzx eax, word ptr [_AA_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign@20
lea eax, [ebp-176]
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push 6
push offset _Lt_1007
push -1
lea eax, [ebp-164]
push eax
call _fb_StrAssign@20
lea eax, [ebp-164]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-176]
push eax
call _fb_StrDelete@4
lea eax, [ebp-164]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
movzx eax, word ptr [_DD_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign@20
lea eax, [ebp-200]
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push 6
push offset _Lt_1009
push -1
lea eax, [ebp-188]
push eax
call _fb_StrAssign@20
lea eax, [ebp-188]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-200]
push eax
call _fb_StrDelete@4
lea eax, [ebp-188]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [_AA_SI]
movsx ebx, word ptr [_DD_SI]
imul eax, ebx
imul eax, 23
add dword ptr [ebp-32], eax
push dword ptr [ebp-40]
push dword ptr [ebp-44]
lea eax, [ebp-52]
push eax
lea eax, [ebp-104]
push eax
push 3
push dword ptr [ebp-108]
push dword ptr [ebp-112]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
mov dword ptr [ebp-4], 0
.Lt_1147:
mov dword ptr [ebp-8], 1
.Lt_114B:
push offset _NAMES_BUFFER
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
push 0
push -1
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-488], eax
push offset _Lt_00C1
push 4215
push 4
push dword ptr [ebp-488]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_123C
jmp eax
.Lt_123C:
mov eax, dword ptr [ebp-488]
imul eax, 3
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-492], ebx
push offset _Lt_00C1
push 4215
push 2
push dword ptr [ebp-492]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_123D
jmp eax
.Lt_123D:
add ebx, dword ptr [ebp-492]
movzx eax, word ptr [_D_SIA+ebx*2]
push eax
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-504]
push eax
call _fb_StrAssign@20
lea eax, [ebp-504]
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_1015
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-484]
push eax
call _fb_StrAssign@20
lea eax, [ebp-484]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-504]
push eax
call _fb_StrDelete@4
lea eax, [ebp-484]
push eax
call _fb_StrDelete@4
.Lt_1149:
inc dword ptr [ebp-8]
.Lt_1148:
cmp dword ptr [ebp-8], 2
jle .Lt_114B
.Lt_114A:
.Lt_1145:
inc dword ptr [ebp-4]
.Lt_1144:
cmp dword ptr [ebp-4], 4
jle .Lt_1147
.Lt_1146:
push dword ptr [ebp-40]
push dword ptr [ebp-44]
lea eax, [ebp-52]
push eax
lea eax, [ebp-104]
push eax
push 10
push dword ptr [ebp-108]
push dword ptr [ebp-112]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
push offset _NAMES_BUFFER
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
push 0
push -1
movzx eax, word ptr [_EX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-224]
push eax
call _fb_StrAssign@20
lea eax, [ebp-224]
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
push 0
push 6
push offset _Lt_101D
push -1
lea eax, [ebp-212]
push eax
call _fb_StrAssign@20
lea eax, [ebp-212]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-224]
push eax
call _fb_StrDelete@4
lea eax, [ebp-212]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
push 0
push -1
movzx eax, word ptr [_DY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-248]
push eax
call _fb_StrAssign@20
lea eax, [ebp-248]
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
push 0
push 6
push offset _Lt_101F
push -1
lea eax, [ebp-236]
push eax
call _fb_StrAssign@20
lea eax, [ebp-236]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-248]
push eax
call _fb_StrDelete@4
lea eax, [ebp-236]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
push 0
push -1
movzx eax, word ptr [_MDX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-272]
push eax
call _fb_StrAssign@20
lea eax, [ebp-272]
push eax
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
push 0
push 7
push offset _Lt_1021
push -1
lea eax, [ebp-260]
push eax
call _fb_StrAssign@20
lea eax, [ebp-260]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-272]
push eax
call _fb_StrDelete@4
lea eax, [ebp-260]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
push 0
push -1
movzx eax, word ptr [_MDY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-296]
push eax
call _fb_StrAssign@20
lea eax, [ebp-296]
push eax
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push 7
push offset _Lt_1023
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign@20
lea eax, [ebp-284]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-296]
push eax
call _fb_StrDelete@4
lea eax, [ebp-284]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
push 0
push -1
movzx eax, word ptr [_TEXTCOLOR_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-320]
push eax
call _fb_StrAssign@20
lea eax, [ebp-320]
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
push 0
push 13
push offset _Lt_1025
push -1
lea eax, [ebp-308]
push eax
call _fb_StrAssign@20
lea eax, [ebp-308]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-320]
push eax
call _fb_StrDelete@4
lea eax, [ebp-308]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
push 0
push -1
push dword ptr [_TEXTDELAY_SF]
call __Z7TRIMINTf@4
push eax
push -1
lea eax, [ebp-344]
push eax
call _fb_StrAssign@20
lea eax, [ebp-344]
push eax
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
push 0
push 13
push offset _Lt_1027
push -1
lea eax, [ebp-332]
push eax
call _fb_StrAssign@20
lea eax, [ebp-332]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-344]
push eax
call _fb_StrDelete@4
lea eax, [ebp-332]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-368], 0
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
push 0
push -1
movzx eax, word ptr [_WIN_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-368]
push eax
call _fb_StrAssign@20
lea eax, [ebp-368]
push eax
mov dword ptr [ebp-356], 0
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
push 0
push 7
push offset _Lt_1029
push -1
lea eax, [ebp-356]
push eax
call _fb_StrAssign@20
lea eax, [ebp-356]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-368]
push eax
call _fb_StrDelete@4
lea eax, [ebp-356]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [_WIN_SI]
sal eax, 1
add eax, dword ptr [ebp-32]
add eax, 2
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 24
mov dword ptr [ebp-388], 1
mov dword ptr [ebp-384], 17
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
.Lt_1163:
push dword ptr [ebp-56]
push 0
push 1
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push 24
lea eax, [ebp-404]
push eax
call _fb_ArrayRedimPresvObj
add esp, 28
test eax, eax
je .Lt_1164
lea eax, [.Lt_1164]
push eax
lea eax, [.Lt_1163]
push eax
push offset _Lt_00C1
push 4231
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_1164:
push dword ptr [ebp-40]
push dword ptr [ebp-44]
lea eax, [ebp-52]
push eax
lea eax, [ebp-104]
push eax
push 7
push dword ptr [ebp-108]
push dword ptr [ebp-112]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
mov dword ptr [ebp-8], 0
.Lt_1168:
mov dword ptr [ebp-4], 1
.Lt_116C:
push offset _NAMES_BUFFER
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
push 0
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-488], eax
push offset _Lt_00C1
push 4236
push 4
push dword ptr [ebp-488]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_123E
jmp eax
.Lt_123E:
mov eax, dword ptr [ebp-488]
imul eax, 3
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-492], ebx
push offset _Lt_00C1
push 4236
push 2
push dword ptr [ebp-492]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_123F
jmp eax
.Lt_123F:
add ebx, dword ptr [ebp-492]
movzx eax, word ptr [_D_SIA+ebx*2]
push eax
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-504]
push eax
call _fb_StrAssign@20
lea eax, [ebp-504]
push eax
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_1015
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
lea eax, [ebp-460]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
lea eax, [ebp-472]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-484]
push eax
call _fb_StrAssign@20
lea eax, [ebp-484]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-504]
push eax
call _fb_StrDelete@4
lea eax, [ebp-484]
push eax
call _fb_StrDelete@4
.Lt_116A:
inc dword ptr [ebp-4]
.Lt_1169:
cmp dword ptr [ebp-4], 2
jle .Lt_116C
.Lt_116B:
.Lt_1166:
inc dword ptr [ebp-8]
.Lt_1165:
cmp dword ptr [ebp-8], 4
jle .Lt_1168
.Lt_1167:
push dword ptr [ebp-40]
push dword ptr [ebp-44]
lea eax, [ebp-52]
push eax
lea eax, [ebp-104]
push eax
push 10
push dword ptr [ebp-108]
push dword ptr [ebp-112]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
mov dword ptr [ebp-4], 0
movsx eax, word ptr [_WIN_SI]
mov dword ptr [ebp-428], eax
jmp .Lt_1176
.Lt_1179:
mov dword ptr [ebp-8], 1
.Lt_117D:
push offset _NAMES_BUFFER
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
push 0
push -1
mov eax, dword ptr [ebp-4]
sal eax, 1
add eax, dword ptr [ebp-8]
add eax, -2
mov dword ptr [ebp-492], eax
push offset _Lt_00C1
push 4243
mov eax, offset _WIN_SIA + 32
push dword ptr [eax]
mov eax, offset _WIN_SIA + 28
push dword ptr [eax]
push dword ptr [ebp-492]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_1240
jmp eax
.Lt_1240:
mov eax, dword ptr [ebp-492]
sal eax, 1
add eax, dword ptr [_WIN_SIA]
movzx ebx, word ptr [eax]
push ebx
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-504]
push eax
call _fb_StrAssign@20
lea eax, [ebp-504]
push eax
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 9
push offset _Lt_1044
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
lea eax, [ebp-440]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
lea eax, [ebp-452]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
lea eax, [ebp-464]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
lea eax, [ebp-476]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-488]
push eax
call _fb_StrAssign@20
lea eax, [ebp-488]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-504]
push eax
call _fb_StrDelete@4
lea eax, [ebp-488]
push eax
call _fb_StrDelete@4
.Lt_117B:
inc dword ptr [ebp-8]
.Lt_117A:
cmp dword ptr [ebp-8], 2
jle .Lt_117D
.Lt_117C:
.Lt_1177:
inc dword ptr [ebp-4]
.Lt_1176:
mov eax, dword ptr [ebp-428]
cmp dword ptr [ebp-4], eax
jle .Lt_1179
.Lt_1178:
push dword ptr [ebp-40]
push dword ptr [ebp-44]
lea eax, [ebp-52]
push eax
lea eax, [ebp-104]
push eax
movsx eax, word ptr [_WIN_SI]
sal eax, 1
add eax, 2
push eax
push dword ptr [ebp-108]
push dword ptr [ebp-112]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
mov word ptr [_T_SI], 0
.Lt_1188:
mov dword ptr [ebp-4], 1
.Lt_118C:
push offset _NAMES_BUFFER
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
push 0
push -1
movsx eax, word ptr [_T_SI]
mov dword ptr [ebp-464], eax
push offset _Lt_00C1
push 4251
push 64
push dword ptr [ebp-464]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1241
jmp eax
.Lt_1241:
mov eax, dword ptr [ebp-464]
movzx ebx, word ptr [_L_SIA+eax*2]
push ebx
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-476]
push eax
call _fb_StrAssign@20
lea eax, [ebp-476]
push eax
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_T_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 7
push offset _Lt_1053
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
lea eax, [ebp-436]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
lea eax, [ebp-448]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-460]
push eax
call _fb_StrAssign@20
lea eax, [ebp-460]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-476]
push eax
call _fb_StrDelete@4
lea eax, [ebp-460]
push eax
call _fb_StrDelete@4
.Lt_118A:
inc dword ptr [ebp-4]
.Lt_1189:
cmp dword ptr [ebp-4], 2
jle .Lt_118C
.Lt_118B:
.Lt_1186:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_1185:
movsx eax, word ptr [_T_SI]
cmp eax, 64
jle .Lt_1188
.Lt_1187:
push offset _NAMES_BUFFER
push offset _CTRL_STR
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
push 0
push 9
push offset _Lt_1057
push -1
lea eax, [ebp-416]
push eax
call _fb_StrAssign@20
lea eax, [ebp-416]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-416]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-40]
push dword ptr [ebp-44]
lea eax, [ebp-52]
push eax
lea eax, [ebp-104]
push eax
push 131
push dword ptr [ebp-108]
push dword ptr [ebp-112]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-428], ax
jmp .Lt_1194
.Lt_1197:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-432], ax
jmp .Lt_1199
.Lt_119C:
push offset _NAMES_BUFFER
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-496], eax
push offset _Lt_00C1
push 4260
push 65536
push dword ptr [ebp-496]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1242
jmp eax
.Lt_1242:
mov eax, dword ptr [ebp-496]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1064
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
lea eax, [ebp-444]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-456], 0
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
lea eax, [ebp-456]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-468], 0
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
lea eax, [ebp-468]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
lea eax, [ebp-480]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-492]
push eax
call _fb_StrAssign@20
lea eax, [ebp-492]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-492]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-560], eax
push offset _Lt_00C1
push 4261
push 65536
push dword ptr [ebp-560]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1243
jmp eax
.Lt_1243:
mov eax, dword ptr [ebp-560]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_106B
mov dword ptr [ebp-508], 0
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
lea eax, [ebp-508]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
lea eax, [ebp-520]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
lea eax, [ebp-532]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
lea eax, [ebp-544]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-556]
push eax
call _fb_StrAssign@20
lea eax, [ebp-556]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-556]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-636], 0
mov dword ptr [ebp-632], 0
mov dword ptr [ebp-628], 0
push 0
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-624], eax
push offset _Lt_00C1
push 4262
push 65536
push dword ptr [ebp-624]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1244
jmp eax
.Lt_1244:
mov eax, dword ptr [ebp-624]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-636]
push eax
call _fb_StrAssign@20
lea eax, [ebp-636]
push eax
mov dword ptr [ebp-620], 0
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1072
mov dword ptr [ebp-572], 0
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
lea eax, [ebp-572]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-584], 0
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
lea eax, [ebp-584]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-596], 0
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
lea eax, [ebp-596]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-608], 0
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
lea eax, [ebp-608]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-620]
push eax
call _fb_StrAssign@20
lea eax, [ebp-620]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-636]
push eax
call _fb_StrDelete@4
lea eax, [ebp-620]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-700], eax
push offset _Lt_00C1
push 4263
push 65536
push dword ptr [ebp-700]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1245
jmp eax
.Lt_1245:
mov eax, dword ptr [ebp-700]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
mov dword ptr [ebp-688], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1079
mov dword ptr [ebp-648], 0
mov dword ptr [ebp-644], 0
mov dword ptr [ebp-640], 0
lea eax, [ebp-648]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-660], 0
mov dword ptr [ebp-656], 0
mov dword ptr [ebp-652], 0
lea eax, [ebp-660]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
mov dword ptr [ebp-664], 0
lea eax, [ebp-672]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
mov dword ptr [ebp-676], 0
lea eax, [ebp-684]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-696]
push eax
call _fb_StrAssign@20
lea eax, [ebp-696]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-696]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-764], eax
push offset _Lt_00C1
push 4264
push 65536
push dword ptr [ebp-764]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1246
jmp eax
.Lt_1246:
mov eax, dword ptr [ebp-764]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
mov dword ptr [ebp-760], 0
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 18
push offset _Lt_1080
mov dword ptr [ebp-712], 0
mov dword ptr [ebp-708], 0
mov dword ptr [ebp-704], 0
lea eax, [ebp-712]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-724], 0
mov dword ptr [ebp-720], 0
mov dword ptr [ebp-716], 0
lea eax, [ebp-724]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-736], 0
mov dword ptr [ebp-732], 0
mov dword ptr [ebp-728], 0
lea eax, [ebp-736]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
lea eax, [ebp-748]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-760]
push eax
call _fb_StrAssign@20
lea eax, [ebp-760]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-760]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-828], eax
push offset _Lt_00C1
push 4265
push 65536
push dword ptr [ebp-828]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1247
jmp eax
.Lt_1247:
mov eax, dword ptr [ebp-828]
imul eax, 108
lea ebx, [_E_STRA+eax+60]
push ebx
mov dword ptr [ebp-824], 0
mov dword ptr [ebp-820], 0
mov dword ptr [ebp-816], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 16
push offset _Lt_1087
mov dword ptr [ebp-776], 0
mov dword ptr [ebp-772], 0
mov dword ptr [ebp-768], 0
lea eax, [ebp-776]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-788], 0
mov dword ptr [ebp-784], 0
mov dword ptr [ebp-780], 0
lea eax, [ebp-788]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-800], 0
mov dword ptr [ebp-796], 0
mov dword ptr [ebp-792], 0
lea eax, [ebp-800]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-812], 0
mov dword ptr [ebp-808], 0
mov dword ptr [ebp-804], 0
lea eax, [ebp-812]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-824]
push eax
call _fb_StrAssign@20
lea eax, [ebp-824]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-824]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-40]
push dword ptr [ebp-44]
lea eax, [ebp-52]
push eax
lea eax, [ebp-104]
push eax
push 6
push dword ptr [ebp-108]
push dword ptr [ebp-112]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
push offset _NAMES_BUFFER
mov dword ptr [ebp-904], 0
mov dword ptr [ebp-900], 0
mov dword ptr [ebp-896], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-892], eax
push offset _Lt_00C1
push 4268
push 65536
push dword ptr [ebp-892]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1248
jmp eax
.Lt_1248:
mov eax, dword ptr [ebp-892]
imul eax, 136
push dword ptr [_G_DFA+eax+4]
push dword ptr [_G_DFA+eax]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-904]
push eax
call _fb_StrAssign@20
lea eax, [ebp-904]
push eax
mov dword ptr [ebp-888], 0
mov dword ptr [ebp-884], 0
mov dword ptr [ebp-880], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_108E
mov dword ptr [ebp-840], 0
mov dword ptr [ebp-836], 0
mov dword ptr [ebp-832], 0
lea eax, [ebp-840]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-852], 0
mov dword ptr [ebp-848], 0
mov dword ptr [ebp-844], 0
lea eax, [ebp-852]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-864], 0
mov dword ptr [ebp-860], 0
mov dword ptr [ebp-856], 0
lea eax, [ebp-864]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-876], 0
mov dword ptr [ebp-872], 0
mov dword ptr [ebp-868], 0
lea eax, [ebp-876]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-888]
push eax
call _fb_StrAssign@20
lea eax, [ebp-888]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-904]
push eax
call _fb_StrDelete@4
lea eax, [ebp-888]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-980], 0
mov dword ptr [ebp-976], 0
mov dword ptr [ebp-972], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-968], eax
push offset _Lt_00C1
push 4269
push 65536
push dword ptr [ebp-968]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1249
jmp eax
.Lt_1249:
mov eax, dword ptr [ebp-968]
imul eax, 136
push dword ptr [_G_DFA+eax+12]
push dword ptr [_G_DFA+eax+8]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-980]
push eax
call _fb_StrAssign@20
lea eax, [ebp-980]
push eax
mov dword ptr [ebp-964], 0
mov dword ptr [ebp-960], 0
mov dword ptr [ebp-956], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_1095
mov dword ptr [ebp-916], 0
mov dword ptr [ebp-912], 0
mov dword ptr [ebp-908], 0
lea eax, [ebp-916]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-928], 0
mov dword ptr [ebp-924], 0
mov dword ptr [ebp-920], 0
lea eax, [ebp-928]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-940], 0
mov dword ptr [ebp-936], 0
mov dword ptr [ebp-932], 0
lea eax, [ebp-940]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-952], 0
mov dword ptr [ebp-948], 0
mov dword ptr [ebp-944], 0
lea eax, [ebp-952]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-964]
push eax
call _fb_StrAssign@20
lea eax, [ebp-964]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-980]
push eax
call _fb_StrDelete@4
lea eax, [ebp-964]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1056], 0
mov dword ptr [ebp-1052], 0
mov dword ptr [ebp-1048], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1044], eax
push offset _Lt_00C1
push 4270
push 65536
push dword ptr [ebp-1044]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124A
jmp eax
.Lt_124A:
mov eax, dword ptr [ebp-1044]
imul eax, 136
push dword ptr [_G_DFA+eax+20]
push dword ptr [_G_DFA+eax+16]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1056]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1056]
push eax
mov dword ptr [ebp-1040], 0
mov dword ptr [ebp-1036], 0
mov dword ptr [ebp-1032], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_109C
mov dword ptr [ebp-992], 0
mov dword ptr [ebp-988], 0
mov dword ptr [ebp-984], 0
lea eax, [ebp-992]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1004], 0
mov dword ptr [ebp-1000], 0
mov dword ptr [ebp-996], 0
lea eax, [ebp-1004]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1016], 0
mov dword ptr [ebp-1012], 0
mov dword ptr [ebp-1008], 0
lea eax, [ebp-1016]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1028], 0
mov dword ptr [ebp-1024], 0
mov dword ptr [ebp-1020], 0
lea eax, [ebp-1028]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1040]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1040]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1056]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1040]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1120], eax
push offset _Lt_00C1
push 4271
push 65536
push dword ptr [ebp-1120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124B
jmp eax
.Lt_124B:
mov eax, dword ptr [ebp-1120]
imul eax, 136
push dword ptr [_G_DFA+eax+28]
push dword ptr [_G_DFA+eax+24]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1132]
push eax
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
mov dword ptr [ebp-1108], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10A3
mov dword ptr [ebp-1068], 0
mov dword ptr [ebp-1064], 0
mov dword ptr [ebp-1060], 0
lea eax, [ebp-1068]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1080], 0
mov dword ptr [ebp-1076], 0
mov dword ptr [ebp-1072], 0
lea eax, [ebp-1080]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1092], 0
mov dword ptr [ebp-1088], 0
mov dword ptr [ebp-1084], 0
lea eax, [ebp-1092]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1104], 0
mov dword ptr [ebp-1100], 0
mov dword ptr [ebp-1096], 0
lea eax, [ebp-1104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1116]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1116]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1132]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1116]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1208], 0
mov dword ptr [ebp-1204], 0
mov dword ptr [ebp-1200], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1196], eax
push offset _Lt_00C1
push 4272
push 65536
push dword ptr [ebp-1196]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124C
jmp eax
.Lt_124C:
mov eax, dword ptr [ebp-1196]
imul eax, 136
push dword ptr [_G_DFA+eax+36]
push dword ptr [_G_DFA+eax+32]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1208]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1208]
push eax
mov dword ptr [ebp-1192], 0
mov dword ptr [ebp-1188], 0
mov dword ptr [ebp-1184], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10AA
mov dword ptr [ebp-1144], 0
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
lea eax, [ebp-1144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1156], 0
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
lea eax, [ebp-1156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1168], 0
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
lea eax, [ebp-1168]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1180], 0
mov dword ptr [ebp-1176], 0
mov dword ptr [ebp-1172], 0
lea eax, [ebp-1180]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1192]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1192]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1208]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1192]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1284], 0
mov dword ptr [ebp-1280], 0
mov dword ptr [ebp-1276], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1272], eax
push offset _Lt_00C1
push 4273
push 65536
push dword ptr [ebp-1272]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124D
jmp eax
.Lt_124D:
mov eax, dword ptr [ebp-1272]
imul eax, 136
push dword ptr [_G_DFA+eax+44]
push dword ptr [_G_DFA+eax+40]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1284]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1284]
push eax
mov dword ptr [ebp-1268], 0
mov dword ptr [ebp-1264], 0
mov dword ptr [ebp-1260], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10B1
mov dword ptr [ebp-1220], 0
mov dword ptr [ebp-1216], 0
mov dword ptr [ebp-1212], 0
lea eax, [ebp-1220]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1232], 0
mov dword ptr [ebp-1228], 0
mov dword ptr [ebp-1224], 0
lea eax, [ebp-1232]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1244], 0
mov dword ptr [ebp-1240], 0
mov dword ptr [ebp-1236], 0
lea eax, [ebp-1244]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1256], 0
mov dword ptr [ebp-1252], 0
mov dword ptr [ebp-1248], 0
lea eax, [ebp-1256]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1268]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1268]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1284]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1268]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1360], 0
mov dword ptr [ebp-1356], 0
mov dword ptr [ebp-1352], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1348], eax
push offset _Lt_00C1
push 4274
push 65536
push dword ptr [ebp-1348]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124E
jmp eax
.Lt_124E:
mov eax, dword ptr [ebp-1348]
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1360]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1360]
push eax
mov dword ptr [ebp-1344], 0
mov dword ptr [ebp-1340], 0
mov dword ptr [ebp-1336], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10B8
mov dword ptr [ebp-1296], 0
mov dword ptr [ebp-1292], 0
mov dword ptr [ebp-1288], 0
lea eax, [ebp-1296]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1308], 0
mov dword ptr [ebp-1304], 0
mov dword ptr [ebp-1300], 0
lea eax, [ebp-1308]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1320], 0
mov dword ptr [ebp-1316], 0
mov dword ptr [ebp-1312], 0
lea eax, [ebp-1320]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1332], 0
mov dword ptr [ebp-1328], 0
mov dword ptr [ebp-1324], 0
lea eax, [ebp-1332]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1344]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1344]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1360]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1344]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1436], 0
mov dword ptr [ebp-1432], 0
mov dword ptr [ebp-1428], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1424], eax
push offset _Lt_00C1
push 4275
push 65536
push dword ptr [ebp-1424]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124F
jmp eax
.Lt_124F:
mov eax, dword ptr [ebp-1424]
imul eax, 136
push dword ptr [_G_DFA+eax+60]
push dword ptr [_G_DFA+eax+56]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1436]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1436]
push eax
mov dword ptr [ebp-1420], 0
mov dword ptr [ebp-1416], 0
mov dword ptr [ebp-1412], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10BF
mov dword ptr [ebp-1372], 0
mov dword ptr [ebp-1368], 0
mov dword ptr [ebp-1364], 0
lea eax, [ebp-1372]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1384], 0
mov dword ptr [ebp-1380], 0
mov dword ptr [ebp-1376], 0
lea eax, [ebp-1384]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1396], 0
mov dword ptr [ebp-1392], 0
mov dword ptr [ebp-1388], 0
lea eax, [ebp-1396]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1408], 0
mov dword ptr [ebp-1404], 0
mov dword ptr [ebp-1400], 0
lea eax, [ebp-1408]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1420]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1420]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1436]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1420]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1512], 0
mov dword ptr [ebp-1508], 0
mov dword ptr [ebp-1504], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1500], eax
push offset _Lt_00C1
push 4276
push 65536
push dword ptr [ebp-1500]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1250
jmp eax
.Lt_1250:
mov eax, dword ptr [ebp-1500]
imul eax, 136
push dword ptr [_G_DFA+eax+68]
push dword ptr [_G_DFA+eax+64]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1512]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1512]
push eax
mov dword ptr [ebp-1496], 0
mov dword ptr [ebp-1492], 0
mov dword ptr [ebp-1488], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10C6
mov dword ptr [ebp-1448], 0
mov dword ptr [ebp-1444], 0
mov dword ptr [ebp-1440], 0
lea eax, [ebp-1448]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1460], 0
mov dword ptr [ebp-1456], 0
mov dword ptr [ebp-1452], 0
lea eax, [ebp-1460]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1472], 0
mov dword ptr [ebp-1468], 0
mov dword ptr [ebp-1464], 0
lea eax, [ebp-1472]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1484], 0
mov dword ptr [ebp-1480], 0
mov dword ptr [ebp-1476], 0
lea eax, [ebp-1484]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1496]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1496]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1512]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1496]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1588], 0
mov dword ptr [ebp-1584], 0
mov dword ptr [ebp-1580], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1576], eax
push offset _Lt_00C1
push 4277
push 65536
push dword ptr [ebp-1576]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1251
jmp eax
.Lt_1251:
mov eax, dword ptr [ebp-1576]
imul eax, 136
push dword ptr [_G_DFA+eax+76]
push dword ptr [_G_DFA+eax+72]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1588]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1588]
push eax
mov dword ptr [ebp-1572], 0
mov dword ptr [ebp-1568], 0
mov dword ptr [ebp-1564], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10CD
mov dword ptr [ebp-1524], 0
mov dword ptr [ebp-1520], 0
mov dword ptr [ebp-1516], 0
lea eax, [ebp-1524]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1536], 0
mov dword ptr [ebp-1532], 0
mov dword ptr [ebp-1528], 0
lea eax, [ebp-1536]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1548], 0
mov dword ptr [ebp-1544], 0
mov dword ptr [ebp-1540], 0
lea eax, [ebp-1548]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1560], 0
mov dword ptr [ebp-1556], 0
mov dword ptr [ebp-1552], 0
lea eax, [ebp-1560]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1572]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1572]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1588]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1572]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1664], 0
mov dword ptr [ebp-1660], 0
mov dword ptr [ebp-1656], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1652], eax
push offset _Lt_00C1
push 4278
push 65536
push dword ptr [ebp-1652]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1252
jmp eax
.Lt_1252:
mov eax, dword ptr [ebp-1652]
imul eax, 136
push dword ptr [_G_DFA+eax+84]
push dword ptr [_G_DFA+eax+80]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1664]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1664]
push eax
mov dword ptr [ebp-1648], 0
mov dword ptr [ebp-1644], 0
mov dword ptr [ebp-1640], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_10D4
mov dword ptr [ebp-1600], 0
mov dword ptr [ebp-1596], 0
mov dword ptr [ebp-1592], 0
lea eax, [ebp-1600]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1612], 0
mov dword ptr [ebp-1608], 0
mov dword ptr [ebp-1604], 0
lea eax, [ebp-1612]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1624], 0
mov dword ptr [ebp-1620], 0
mov dword ptr [ebp-1616], 0
lea eax, [ebp-1624]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1636], 0
mov dword ptr [ebp-1632], 0
mov dword ptr [ebp-1628], 0
lea eax, [ebp-1636]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1648]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1648]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1664]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1648]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1740], 0
mov dword ptr [ebp-1736], 0
mov dword ptr [ebp-1732], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1728], eax
push offset _Lt_00C1
push 4279
push 65536
push dword ptr [ebp-1728]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1253
jmp eax
.Lt_1253:
mov eax, dword ptr [ebp-1728]
imul eax, 136
push dword ptr [_G_DFA+eax+92]
push dword ptr [_G_DFA+eax+88]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1740]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1740]
push eax
mov dword ptr [ebp-1724], 0
mov dword ptr [ebp-1720], 0
mov dword ptr [ebp-1716], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_10DB
mov dword ptr [ebp-1676], 0
mov dword ptr [ebp-1672], 0
mov dword ptr [ebp-1668], 0
lea eax, [ebp-1676]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1688], 0
mov dword ptr [ebp-1684], 0
mov dword ptr [ebp-1680], 0
lea eax, [ebp-1688]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1700], 0
mov dword ptr [ebp-1696], 0
mov dword ptr [ebp-1692], 0
lea eax, [ebp-1700]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1712], 0
mov dword ptr [ebp-1708], 0
mov dword ptr [ebp-1704], 0
lea eax, [ebp-1712]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1724]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1724]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1740]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1724]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1816], 0
mov dword ptr [ebp-1812], 0
mov dword ptr [ebp-1808], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1804], eax
push offset _Lt_00C1
push 4280
push 65536
push dword ptr [ebp-1804]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1254
jmp eax
.Lt_1254:
mov eax, dword ptr [ebp-1804]
imul eax, 136
push dword ptr [_G_DFA+eax+100]
push dword ptr [_G_DFA+eax+96]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1816]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1816]
push eax
mov dword ptr [ebp-1800], 0
mov dword ptr [ebp-1796], 0
mov dword ptr [ebp-1792], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10E2
mov dword ptr [ebp-1752], 0
mov dword ptr [ebp-1748], 0
mov dword ptr [ebp-1744], 0
lea eax, [ebp-1752]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1764], 0
mov dword ptr [ebp-1760], 0
mov dword ptr [ebp-1756], 0
lea eax, [ebp-1764]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1776], 0
mov dword ptr [ebp-1772], 0
mov dword ptr [ebp-1768], 0
lea eax, [ebp-1776]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1788], 0
mov dword ptr [ebp-1784], 0
mov dword ptr [ebp-1780], 0
lea eax, [ebp-1788]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1800]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1800]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1816]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1800]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1892], 0
mov dword ptr [ebp-1888], 0
mov dword ptr [ebp-1884], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1880], eax
push offset _Lt_00C1
push 4281
push 65536
push dword ptr [ebp-1880]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1255
jmp eax
.Lt_1255:
mov eax, dword ptr [ebp-1880]
imul eax, 136
push dword ptr [_G_DFA+eax+108]
push dword ptr [_G_DFA+eax+104]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1892]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1892]
push eax
mov dword ptr [ebp-1876], 0
mov dword ptr [ebp-1872], 0
mov dword ptr [ebp-1868], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10E9
mov dword ptr [ebp-1828], 0
mov dword ptr [ebp-1824], 0
mov dword ptr [ebp-1820], 0
lea eax, [ebp-1828]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1840], 0
mov dword ptr [ebp-1836], 0
mov dword ptr [ebp-1832], 0
lea eax, [ebp-1840]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1852], 0
mov dword ptr [ebp-1848], 0
mov dword ptr [ebp-1844], 0
lea eax, [ebp-1852]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1864], 0
mov dword ptr [ebp-1860], 0
mov dword ptr [ebp-1856], 0
lea eax, [ebp-1864]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1876]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1876]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1892]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1876]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-1968], 0
mov dword ptr [ebp-1964], 0
mov dword ptr [ebp-1960], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-1956], eax
push offset _Lt_00C1
push 4282
push 65536
push dword ptr [ebp-1956]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1256
jmp eax
.Lt_1256:
mov eax, dword ptr [ebp-1956]
imul eax, 136
push dword ptr [_G_DFA+eax+116]
push dword ptr [_G_DFA+eax+112]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1968]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1968]
push eax
mov dword ptr [ebp-1952], 0
mov dword ptr [ebp-1948], 0
mov dword ptr [ebp-1944], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10F0
mov dword ptr [ebp-1904], 0
mov dword ptr [ebp-1900], 0
mov dword ptr [ebp-1896], 0
lea eax, [ebp-1904]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1916], 0
mov dword ptr [ebp-1912], 0
mov dword ptr [ebp-1908], 0
lea eax, [ebp-1916]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1928], 0
mov dword ptr [ebp-1924], 0
mov dword ptr [ebp-1920], 0
lea eax, [ebp-1928]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1940], 0
mov dword ptr [ebp-1936], 0
mov dword ptr [ebp-1932], 0
lea eax, [ebp-1940]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1952]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1952]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1968]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1952]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-2044], 0
mov dword ptr [ebp-2040], 0
mov dword ptr [ebp-2036], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-2032], eax
push offset _Lt_00C1
push 4283
push 65536
push dword ptr [ebp-2032]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1257
jmp eax
.Lt_1257:
mov eax, dword ptr [ebp-2032]
imul eax, 136
push dword ptr [_G_DFA+eax+124]
push dword ptr [_G_DFA+eax+120]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-2044]
push eax
call _fb_StrAssign@20
lea eax, [ebp-2044]
push eax
mov dword ptr [ebp-2028], 0
mov dword ptr [ebp-2024], 0
mov dword ptr [ebp-2020], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10F7
mov dword ptr [ebp-1980], 0
mov dword ptr [ebp-1976], 0
mov dword ptr [ebp-1972], 0
lea eax, [ebp-1980]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1992], 0
mov dword ptr [ebp-1988], 0
mov dword ptr [ebp-1984], 0
lea eax, [ebp-1992]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-2004], 0
mov dword ptr [ebp-2000], 0
mov dword ptr [ebp-1996], 0
lea eax, [ebp-2004]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-2016], 0
mov dword ptr [ebp-2012], 0
mov dword ptr [ebp-2008], 0
lea eax, [ebp-2016]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-2028]
push eax
call _fb_StrAssign@20
lea eax, [ebp-2028]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-2044]
push eax
call _fb_StrDelete@4
lea eax, [ebp-2028]
push eax
call _fb_StrDelete@4
push offset _NAMES_BUFFER
mov dword ptr [ebp-2120], 0
mov dword ptr [ebp-2116], 0
mov dword ptr [ebp-2112], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-2108], eax
push offset _Lt_00C1
push 4284
push 65536
push dword ptr [ebp-2108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1258
jmp eax
.Lt_1258:
mov eax, dword ptr [ebp-2108]
imul eax, 136
push dword ptr [_G_DFA+eax+132]
push dword ptr [_G_DFA+eax+128]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-2120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-2120]
push eax
mov dword ptr [ebp-2104], 0
mov dword ptr [ebp-2100], 0
mov dword ptr [ebp-2096], 0
push 0
push -1
push 2
push offset _Lt_1017
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10FE
mov dword ptr [ebp-2056], 0
mov dword ptr [ebp-2052], 0
mov dword ptr [ebp-2048], 0
lea eax, [ebp-2056]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-2068], 0
mov dword ptr [ebp-2064], 0
mov dword ptr [ebp-2060], 0
lea eax, [ebp-2068]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-2080], 0
mov dword ptr [ebp-2076], 0
mov dword ptr [ebp-2072], 0
lea eax, [ebp-2080]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-2092], 0
mov dword ptr [ebp-2088], 0
mov dword ptr [ebp-2084], 0
lea eax, [ebp-2092]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-2104]
push eax
call _fb_StrAssign@20
lea eax, [ebp-2104]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-2120]
push eax
call _fb_StrDelete@4
lea eax, [ebp-2104]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-40]
push dword ptr [ebp-44]
lea eax, [ebp-52]
push eax
lea eax, [ebp-104]
push eax
push 17
push dword ptr [ebp-108]
push dword ptr [ebp-112]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
.Lt_119A:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_1199:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-432]
cmp eax, ebx
jle .Lt_119C
.Lt_119B:
.Lt_1195:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_1194:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-428]
cmp ebx, eax
jle .Lt_1197
.Lt_1196:
push dword ptr [_Lt_0298+4]
push dword ptr [_Lt_0298]
lea eax, [ebp-52]
push eax
lea eax, [ebp-104]
push eax
push 0
push dword ptr [ebp-108]
push dword ptr [ebp-112]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
lea eax, [ebp-68]
push eax
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _PROGRESS_PUT@64
push 1
call _fb_Sleep@4
push dword ptr [ebp-36]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
lea eax, [ebp-404]
push eax
call _fb_ArrayEraseObj@12
lea eax, [ebp-140]
push eax
call _fb_StrDelete@4
lea eax, [ebp-104]
push eax
call _fb_StrDelete@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
.Lt_113A:
push dword ptr [ebp-424]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-420]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SAVEGAME_SAVE@8
_SAVEGAME_SAVE@8:
push ebp
mov ebp, esp
sub esp, 44
.Lt_1259:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-40], eax
push offset _Lt_1261
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-44], eax
push dword ptr [ebp+12]
call _MAP_SAVE@4
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_125C
push -1
push -1
push dword ptr [ebp+8]
push 8
push offset _Lt_125B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _SAVE_NAMES@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_125A:
push dword ptr [ebp-44]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-40]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SAVEGAME_LOAD@8
_SAVEGAME_LOAD@8:
push ebp
mov ebp, esp
sub esp, 44
.Lt_1263:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-40], eax
push offset _Lt_1269
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-44], eax
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_125C
push -1
push -1
push dword ptr [ebp+8]
push 8
push offset _Lt_125B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _LOAD_NAMES_FROM_FILE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
call _MAP_LOAD@4
.Lt_1264:
push dword ptr [ebp-44]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-40]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _main
_main:
push ebp
mov ebp, esp
and esp, 0xFFFFFFF0
sub esp, 20
mov dword ptr [ebp-4], 0
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
call ___main
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_Init@12
push offset _.Lt_00C7
call _fb_DataRestore@4
call _fb_InitSignals@0
call _fb_CpuDetect
shr eax, 28
cmp eax, 4
jae .Lt_0004
push 1
push 44
push offset _Lt_0005
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
call _fb_End@4
.Lt_0004:
.Lt_0002:
.Lt_00B1:
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
test eax, eax
je .Lt_00B2
push offset .Lt_00B2
push offset .Lt_00B1
push offset _Lt_00B3
push 29
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B2:
.Lt_00B4:
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
test eax, eax
je .Lt_00B5
push offset .Lt_00B5
push offset .Lt_00B4
push offset _Lt_00B3
push 31
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B5:
.Lt_00B6:
push 255
push 0
push 1
push 0
push -1
push 4
push offset _CLV_FONT
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_00B7
push offset .Lt_00B7
push offset .Lt_00B6
push offset _Lt_00B3
push 32
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B7:
.Lt_00B8:
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
test eax, eax
je .Lt_00B9
push offset .Lt_00B9
push offset .Lt_00B8
push offset _Lt_00B3
push 32
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B9:
.Lt_00BF:
movsx eax, word ptr [_WIN_SI]
sal eax, 1
push eax
movsx eax, word ptr [_WIN_SI]
neg eax
push eax
push 1
push 0
push -1
push 2
push offset _WIN_SIA
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_00C0
push offset .Lt_00C0
push offset .Lt_00BF
push offset _Lt_00C1
push 227
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00C0:
.Lt_00C2:
push 255
push 0
push 1
push 0
push -1
push 4
push offset _FONTSHEETS
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_00C3
push offset .Lt_00C3
push offset .Lt_00C2
push offset _Lt_00C1
push 228
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00C3:
mov dword ptr [_CLV_BUFFER_FOCUS], 0
call _LN_ROE@0
push 0
call _fb_End@4
.Lt_0003:
push dword ptr [ebp-12]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-8]
call _fb_ErrorSetModName@4
push 0
call _fb_End@4
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10NAMES_TYPEC1Ev:
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
push offset _Lt_00A2
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_00A0:
.Lt_00A1:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10NAMES_TYPEaSERKS_:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00A5:
push offset _Lt_00A2
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
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
.Lt_00A6:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10NAMES_TYPED1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00AD:
push offset _Lt_00A2
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_00AE:
mov eax, dword ptr [ebp+8]
add eax, 12
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__GLOBAL__D:
push ebp
mov ebp, esp
sub esp, 8
.Lt_126E:
push offset _Lt_00C1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_1272
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _MAP_BUFFER
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _QUEUE_TABLE
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _DATA_TABLE
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _NAMES_BUFFER
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _DB_QUEUE
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _DB_MAP
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _DB_INPUT
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _DB_NAMES
call _fb_ArrayEraseObj@12
.Lt_126F:
push dword ptr [ebp-8]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-4]
call _fb_ErrorSetModName@4
mov esp, ebp
pop ebp
ret

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
_DB_MAP:
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

.section .data
.balign 8
_PROGRESS_DELAY:
.quad 0x3FC999999999999A

.section .bss
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
_CLV_BUFFER_PORTAL:
.int 2
.balign 4
_CLV_BUFFER_STATUS:
.int 3
.balign 4
_CLV_BUFFER_PLAYBYPLAY:
.int 4
.balign 4
_CLV_BUFFER_EXPSHOP:
.int 5
.balign 4
_CLV_BUFFER_MERCHANT:
.int 6
.balign 4
_CLV_BUFFER_MENU:
.int 7
.balign 4
_CLV_BUFFER_TITLE:
.int 8
.balign 4
_CLV_BUFFER_HELP:
.int 9
.balign 4
_CLV_BUFFER_CURSOR:
.int 10
.balign 4
_CLV_BUFFER_SPLASH:
.int 11
.balign 4
_CLV_BUFFER_BAR:
.int 12
.balign 4
_CLV_BUFFER_PROGRESS:
.int 13
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
_Lt_0131:	.ascii	".\\dict\\names.txt\0"
.balign 4
_Lt_0149:	.ascii	"pndximp_\0"
.balign 4
_Lt_014C:	.ascii	"dust\0"
.balign 4
_Lt_0158:	.ascii	"____\0"
.balign 4
_Lt_015B:	.ascii	"________\0"
.balign 4
_Lt_0160:	.ascii	"spdr\0"
.balign 4
_Lt_0162:	.ascii	"Spider\0"
.balign 4
_Lt_0163:	.ascii	"movebiteweb_\0"
.balign 4
_Lt_0166:	.ascii	"0001\0"
.balign 4
_Lt_016A:	.ascii	"vnom\0"
.balign 4
_Lt_016C:	.ascii	"wall\0"
.balign 4
_Lt_016F:	.ascii	"web_\0"
.balign 4
_Lt_0171:	.ascii	"Web\0"
.balign 4
_Lt_0173:	.ascii	"grml\0"
.balign 4
_Lt_0175:	.ascii	"Gremlin\0"
.balign 4
_Lt_0176:	.ascii	"movebitepnch\0"
.balign 4
_Lt_0179:	.ascii	"dggr\0"
.balign 4
_Lt_017B:	.ascii	"pndx\0"
.balign 4
_Lt_017D:	.ascii	"Poindexter\0"
.balign 4
_Lt_017E:	.ascii	"wstf\0"
.balign 4
_Lt_0180:	.ascii	"dtby\0"
.balign 4
_Lt_0182:	.ascii	"Dust Bunny\0"
.balign 4
_Lt_0183:	.ascii	"movebitekickdtbydust\0"
.balign 4
_Lt_0185:	.ascii	"shkt\0"
.balign 4
_Lt_0187:	.ascii	"Shiny Knight\0"
.balign 4
_Lt_0188:	.ascii	"movepnchdggr\0"
.balign 4
_Lt_018A:	.ascii	"emgd\0"
.balign 4
_Lt_018C:	.ascii	"Emerald Guard\0"
.balign 4
_Lt_0191:	.ascii	"pike\0"
.balign 4
_Lt_0193:	.ascii	"door\0"
.balign 4
_Lt_0195:	.ascii	"Door\0"
.balign 4
_Lt_0199:	.ascii	"loc1\0"
.balign 4
_Lt_019C:	.ascii	"loc2\0"
.balign 4
_Lt_019F:	.ascii	"loc3\0"
.balign 4
_Lt_01A1:	.ascii	"imp_\0"
.balign 4
_Lt_01A3:	.ascii	"Little Imp\0"
.balign 4
_Lt_01A4:	.ascii	"movewingfire\0"
.balign 4
_Lt_01A7:	.ascii	"Merchant\0"
.balign 4
_Lt_01A8:	.ascii	"dggrgrplseed\0"
.balign 4
_Lt_01AD:	.ascii	"chst\0"
.balign 4
_Lt_01AF:	.ascii	"Treasure chest\0"
.balign 4
_Lt_01B2:	.ascii	"key1\0"
.balign 4
_Lt_01B3:	.ascii	"key2\0"
.balign 4
_Lt_01B5:	.ascii	"bldr\0"
.balign 4
_Lt_01B7:	.ascii	"Big boulder\0"
.balign 4
_Lt_01BB:	.ascii	"LN_STARTUP\0"
.balign 8
_Lt_01BD:	.quad	0x4000000000000000
.balign 4
_Lt_01BE:	.long	0x40200000
.balign 4
_Lt_01C2:	.long	0x3F800000
.balign 8
_Lt_01C3:	.quad	0x3FF0000000000000
.balign 4
_Lt_01CA:	.long	0x41200000
.balign 4
_Lt_01CB:	.long	0x41A00000
.balign 4
_Lt_01CC:	.long	0x40A00000
.balign 4
_Lt_01CD:	.long	0x43BE0000
.balign 4
_Lt_01CE:	.long	0x40400000
.balign 4
_Lt_01CF:	.long	0x40000000
.balign 4
_Lt_01D0:	.long	0x42200000
.balign 4
_Lt_01D1:	.long	0x42480000
.balign 8
_Lt_01D2:	.quad	0x3FC999999999999A
.balign 4
_Lt_01D3:	.long	0x41C80000
.balign 4
_Lt_01D4:	.long	0x42B40000
.balign 4
_Lt_01D5:	.long	0x41F00000
.balign 4
_Lt_01D6:	.long	0x00000000
.balign 4
_Lt_01D7:	.long	0x41700000
.balign 4
_Lt_01D8:	.long	0x3DCCCCCD
.balign 4
_Lt_01D9:	.long	0x3D8F5C29
.balign 4
_Lt_01DA:	.long	0x3F99999A
.balign 4
_Lt_01DB:	.long	0x438C0000
.balign 4
_Lt_01DC:	.long	0x42340000
.balign 4
_Lt_01DD:	.long	0x42DC0000
.balign 4
_Lt_01DE:	.long	0x40800000
.balign 4
_Lt_01DF:	.long	0x41880000
.balign 4
_Lt_01E0:	.long	0x41400000
.balign 4
_Lt_01E1:	.long	0x3DF5C28F
.balign 8
_Lt_01E2:	.quad	0x3FB999999999999A
.balign 8
_Lt_01E3:	.quad	0x3FD999999999999A
.balign 4
_Lt_01E4:	.long	0x430C0000
.balign 4
_Lt_01E5:	.long	0x3E4CCCCD
.balign 4
_Lt_01E6:	.long	0x41C00000
.balign 4
_Lt_01E7:	.long	0x3E99999A
.balign 4
_Lt_01E8:	.long	0x42C80000
.balign 4
_Lt_01E9:	.long	0x447A0000
.balign 4
_Lt_01F3:	.ascii	"Puzzlum : Realm of Existence\0"
.balign 4
_Lt_01F4:	.ascii	"Build: puzzlum-fbc068.200908170813\0"
.balign 4
_Lt_01F5:	.ascii	"Created 1989-2009 Timothy Robert Keal\0"
.balign 4
_Lt_01F6:	.ascii	"Released under Gnu Public License 2.0\0"
.balign 4
_Lt_01F7:	.ascii	"http://www.gnu.org/copyleft/gpl.html\0"
.balign 4
_Lt_01F8:	.ascii	"http://puzzlum.retromachineshop.com/\0"
.balign 4
_Lt_01F9:	.ascii	"irc://chat.freenode.net/puzzlum\0"
.balign 4
_Lt_01FA:	.ascii	"mailto:jargon@juno.com\0"
.balign 4
_Lt_01FB:	.ascii	" (H)elp\0"
.balign 4
_Lt_01FC:	.ascii	" (C)ontinue\0"
.balign 4
_Lt_01FD:	.ascii	" (R)estart\0"
.balign 4
_Lt_01FE:	.ascii	" (Q)uit\0"
.balign 4
_Lt_01FF:	.ascii	"r\0"
.balign 4
_Lt_0200:	.ascii	"R\0"
.balign 4
_Lt_0203:	.ascii	"q\0"
.balign 4
_Lt_0204:	.ascii	"Q\0"
.balign 4
_Lt_0207:	.ascii	"h\0"
.balign 4
_Lt_0208:	.ascii	"H\0"
.balign 4
_Lt_020B:	.ascii	"c\0"
.balign 4
_Lt_020C:	.ascii	"C\0"
.balign 4
_Lt_020E:	.ascii	"LN_STARTTITLE\0"
.balign 4
_Lt_022C:	.ascii	"\376 page start\0"
.balign 4
_Lt_022F:	.ascii	"\376 page end\0"
.balign 4
_Lt_0232:	.ascii	" (T)itle\0"
.balign 4
_Lt_0236:	.ascii	"T\0"
.balign 4
_Lt_023B:	.ascii	"\376 end\0"
.balign 4
_Lt_0240:	.ascii	"\376 COLOR\0"
.balign 4
_Lt_024A:	.ascii	"LN_STARTHELP\0"
.balign 4
_Lt_0267:	.ascii	"zzzz\0"
.balign 4
_Lt_027E:	.ascii	"fire\0"
.balign 4
_Lt_0283:	.ascii	"ccts\0"
.balign 4
_Lt_0295:	.ascii	"LN_MAIN\0"
.balign 8
_Lt_0298:	.quad	0x0000000000000000
.balign 4
_Lt_02A2:	.ascii	"LN_COMMAND\0"
.balign 4
_Lt_02A9:	.ascii	"LN_COMMAND2\0"
.balign 4
_Lt_02AD:	.ascii	"0002\0"
.balign 4
_Lt_02BA:	.ascii	"&HFF3B\0"
.balign 4
_Lt_02BD:	.ascii	"&HFF3C\0"
.balign 4
_Lt_02C1:	.ascii	"&HFF3D\0"
.balign 4
_Lt_02C4:	.ascii	"L\0"
.balign 4
_Lt_02C7:	.ascii	"&H20\0"
.balign 4
_Lt_02CA:	.ascii	"&HFF48\0"
.balign 4
_Lt_02CD:	.ascii	"&HFF4D\0"
.balign 4
_Lt_02D0:	.ascii	"&HFF50\0"
.balign 4
_Lt_02D3:	.ascii	"&HFF4B\0"
.balign 4
_Lt_02EB:	.ascii	"||\0"
.balign 4
_Lt_02FA:	.ascii	"&HFF47\0"
.balign 4
_Lt_02FD:	.ascii	"&HFF4F\0"
.balign 4
_Lt_0300:	.ascii	"&HFF49\0"
.balign 4
_Lt_0305:	.ascii	"&HFF51\0"
.balign 4
_Lt_031C:	.ascii	"LN_COMMAND3\0"
.balign 8
_Lt_0320:	.quad	0x4008000000000000
.balign 8
_Lt_0322:	.quad	0x4010000000000000
.balign 8
_Lt_0326:	.quad	0x4014000000000000
.balign 8
_Lt_0329:	.quad	0xC008000000000000
.balign 4
_Lt_035A:	.ascii	"LN_NAMES\0"
.balign 4
_Lt_0385:	.ascii	"LN_SWAPDATA\0"
.balign 4
_Lt_03AD:	.ascii	"bite\0"
.balign 4
_Lt_03B0:	.ascii	"pnch\0"
.balign 4
_Lt_03B3:	.ascii	"kick\0"
.balign 4
_Lt_03BC:	.ascii	"cure\0"
.balign 4
_Lt_03C4:	.ascii	"LN_ATTACK\0"
.balign 4
_Lt_03ED:	.ascii	"LN_BATTLE\0"
.balign 4
_Lt_0413:	.ascii	"LN_ATTKBITE\0"
.balign 4
_Lt_041B:	.ascii	"LN_ATTKPNCH\0"
.balign 8
_Lt_041E:	.quad	0x4018000000000000
.balign 8
_Lt_0420:	.quad	0x4020000000000000
.balign 4
_Lt_0426:	.ascii	"LN_ATTKWSTF\0"
.balign 4
_Lt_042F:	.ascii	"LN_ATTKKICK\0"
.balign 8
_Lt_0433:	.quad	0x401C000000000000
.balign 4
_Lt_0439:	.ascii	"LN_ATTKVNOM\0"
.balign 8
_Lt_043D:	.quad	0x4024000000000000
.balign 4
_Lt_0443:	.ascii	"LN_ATTKDGGR\0"
.balign 4
_Lt_044C:	.ascii	"LN_ATTKPIKE\0"
.balign 8
_Lt_044F:	.quad	0x4028000000000000
.balign 4
_Lt_0453:	.ascii	"burn\0"
.balign 4
_Lt_045A:	.ascii	"LN_ATTKBURN\0"
.balign 8
_Lt_045E:	.quad	0x402E000000000000
.balign 4
_Lt_0465:	.ascii	"LN_ATTKFIRE\0"
.balign 8
_Lt_0469:	.quad	0x4034000000000000
.balign 4
_Lt_046E:	.ascii	"LN_ATTKWEB\0"
.balign 4
_Lt_0473:	.ascii	"tngl\0"
.balign 4
_Lt_0476:	.ascii	"LN_ATTKTNGL\0"
.balign 4
_Lt_047B:	.ascii	"lash\0"
.balign 4
_Lt_047F:	.ascii	"LN_ATTKLASH\0"
.balign 4
_Lt_04AE:	.ascii	"LN_USECURE\0"
.balign 8
_Lt_04B4:	.quad	0xC020000000000000
.balign 4
_Lt_04DB:	.ascii	"slep\0"
.balign 4
_Lt_0501:	.ascii	"LN_USESLEP\0"
.balign 8
_Lt_0515:	.quad	0xC02E000000000000
.balign 4
_Lt_0527:	.ascii	"pouch\0"
.balign 4
_Lt_052B:	.ascii	"pwch\0"
.balign 4
_Lt_053C:	.ascii	"LN_VICTORY\0"
.balign 4
_Lt_0550:	.long	0x47C34F80
.balign 4
_Lt_0561:	.ascii	"LN_PILLAGE\0"
.balign 4
_Lt_0578:	.ascii	"lvup\0"
.balign 4
_Lt_0583:	.ascii	"ispt\0"
.balign 4
_Lt_058B:	.ascii	"move\0"
.balign 4
_Lt_05B3:	.ascii	"cncl\0"
.balign 4
_Lt_05BD:	.ascii	"\372\0"
.balign 4
_Lt_05BE:	.ascii	"-\0"
.balign 4
_Lt_05BF:	.ascii	"----\0"
.balign 4
_Lt_05C0:	.ascii	"$\0"
.balign 4
_Lt_05E0:	.ascii	"LN_PAYLEVELUP\0"
.balign 4
_Lt_0600:	.ascii	"grpl\0"
.balign 4
_Lt_0605:	.ascii	"seed\0"
.balign 4
_Lt_0611:	.ascii	"Wha'du like?\0"
.balign 4
_Lt_0618:	.ascii	"____.24\0"
.balign 4
_Lt_0647:	.ascii	"LN_MERCHANT\0"
.balign 4
_Lt_065E:	.ascii	"bye_\0"
.balign 4
_Lt_0661:	.ascii	"Poindexter:\0"
.balign 4
_Lt_0663:	.ascii	"Hi. How are you. My\0"
.balign 4
_Lt_0665:	.ascii	"name is Poindexter. I\0"
.balign 4
_Lt_0667:	.ascii	"am the greatest thief\0"
.balign 4
_Lt_0669:	.ascii	"in the entire world!!!\0"
.balign 4
_Lt_0679:	.ascii	" =\0"
.balign 4
_Lt_068F:	.ascii	"LN_TALK0001\0"
.balign 4
_Lt_06A0:	.ascii	"gained\0"
.balign 4
_Lt_06A3:	.ascii	"LN_ABILITYGAIN\0"
.balign 4
_Lt_06CC:	.ascii	"      level up!\0"
.balign 4
_Lt_06CE:	.ascii	"HPmax +\0"
.balign 4
_Lt_06D2:	.ascii	"STRmax +\0"
.balign 4
_Lt_06D6:	.ascii	"ESSmax +\0"
.balign 4
_Lt_06DA:	.ascii	"STRspd up!\0"
.balign 4
_Lt_06DC:	.ascii	"ESSspd up!\0"
.balign 4
_Lt_06E5:	.ascii	"reached LV!\0"
.balign 4
_Lt_06EF:	.ascii	"next:\0"
.balign 4
_Lt_0703:	.ascii	"LN_LEVELUP\0"
.balign 4
_Lt_0726:	.long	0x43470000
.balign 4
_Lt_0727:	.long	0x439F8000
.balign 4
_Lt_0728:	.long	0x43400000
.balign 8
_Lt_072B:	.quad	0x4050000000000000
.balign 4
_Lt_0745:	.ascii	"LN_GAIN\0"
.balign 4
_Lt_0753:	.ascii	"from\0"
.balign 4
_Lt_0758:	.ascii	"!\0"
.balign 4
_Lt_075C:	.ascii	"LN_GETIT\0"
.balign 4
_Lt_076B:	.ascii	"used\0"
.balign 4
_Lt_076D:	.ascii	"on\0"
.balign 4
_Lt_0773:	.ascii	"LN_ATTACKUSING\0"
.balign 4
_Lt_0785:	.ascii	"HP -\0"
.balign 4
_Lt_0789:	.ascii	"STR-\0"
.balign 4
_Lt_078E:	.ascii	"LN_BATTLEATTACK\0"
.balign 4
_Lt_079C:	.ascii	"pillaged\0"
.balign 4
_Lt_07A1:	.ascii	"EXP+\0"
.balign 4
_Lt_07A6:	.ascii	"EXP:\0"
.balign 4
_Lt_07AC:	.ascii	"STR+\0"
.balign 4
_Lt_07B0:	.ascii	"STR:\0"
.balign 4
_Lt_07B6:	.ascii	"LN_DEFEATED\0"
.balign 4
_Lt_07E7:	.ascii	".24\0"
.balign 4
_Lt_080C:	.ascii	"zzzz____.24\0"
.balign 4
_Lt_0818:	.ascii	"rapl\0"
.balign 4
_Lt_0830:	.ascii	"LN_PORTAL\0"
.balign 8
_Lt_0832:	.quad	0xBFF0000000000000
.balign 4
_Lt_083B:	.long	0x41000000
.balign 4
_Lt_083E:	.long	0xBF800000
.balign 4
_Lt_0844:	.ascii	"A RetroMachineShop Featured Project!\0"
.balign 4
_Lt_0847:	.ascii	"LN_TITLE\0"
.balign 4
_Lt_084C:	.ascii	"LN_STATUS\0"
.balign 4
_Lt_0851:	.ascii	"LN_FRAMSTTS\0"
.balign 4
_Lt_0856:	.ascii	"LN_FRAMSTTSITMS\0"
.balign 4
_Lt_0858:	.long	0x41600000
.balign 4
_Lt_0859:	.long	0x41B80000
.balign 4
_Lt_085D:	.ascii	"LV\0"
.balign 4
_Lt_0861:	.ascii	"     \0"
.balign 4
_Lt_0867:	.ascii	"HP\0"
.balign 4
_Lt_086B:	.ascii	"/\0"
.balign 4
_Lt_086F:	.ascii	"STR\0"
.balign 4
_Lt_0876:	.ascii	"ESS\0"
.balign 4
_Lt_087E:	.ascii	"LN_STTS\0"
.balign 8
_Lt_0882:	.quad	0x4059000000000000
.balign 8
_Lt_0885:	.quad	0x40C3880000000000
.balign 4
_Lt_088E:	.ascii	"LN_STTSGPIC\0"
.balign 4
_Lt_0893:	.ascii	"LN_STTSITMS\0"
.balign 4
_Lt_0899:	.ascii	"____pwch\0"
.balign 4
_Lt_089D:	.ascii	"watr\0"
.balign 4
_Lt_08A2:	.ascii	"hole\0"
.balign 4
_Lt_08A3:	.ascii	"holestpsstp2\0"
.balign 4
_Lt_08B1:	.ascii	"LN_MOVE\0"
.balign 4
_Lt_08D3:	.ascii	"LN_WINGMOVE\0"
.balign 4
_Lt_08F3:	.ascii	"LN_FIREMOVE\0"
.balign 4
_Lt_090C:	.ascii	"LN_WEBMOVE\0"
.balign 4
_Lt_0920:	.ascii	"Flame\0"
.balign 4
_Lt_0921:	.ascii	"moveburn\0"
.balign 4
_Lt_0923:	.ascii	"LN_CASTFIRE\0"
.balign 8
_Lt_0929:	.quad	0xC034000000000000
.balign 4
_Lt_092B:	.long	0x42F00000
.balign 4
_Lt_0936:	.ascii	"Sleepy dust\0"
.balign 4
_Lt_0938:	.ascii	"LN_CASTDUST\0"
.balign 4
_Lt_0948:	.ascii	"LN_CASTWEB\0"
.balign 8
_Lt_094B:	.quad	0x406B800000000000
.balign 8
_Lt_094D:	.quad	0xC06B800000000000
.balign 4
_Lt_0958:	.ascii	"LN_CASTSPDR\0"
.balign 8
_Lt_095B:	.quad	0x4074000000000000
.balign 8
_Lt_095D:	.quad	0xC074000000000000
.balign 4
_Lt_0962:	.ascii	"Cactus\0"
.balign 4
_Lt_0964:	.ascii	"LN_CASTCCTS\0"
.balign 4
_Lt_0966:	.long	0x41500000
.balign 4
_Lt_096E:	.ascii	"bitekick\0"
.balign 4
_Lt_0970:	.ascii	"LN_CASTDTBY\0"
.balign 8
_Lt_0973:	.quad	0x4064000000000000
.balign 8
_Lt_0975:	.quad	0xC064000000000000
.balign 4
_Lt_0977:	.long	0x40C00000
.balign 4
_Lt_097C:	.ascii	"LN_GONE\0"
.balign 4
_Lt_0981:	.ascii	"LN_DELETE2\0"
.balign 4
_Lt_0988:	.ascii	"LN_AUTOLEVELUP\0"
.balign 4
_Lt_0993:	.ascii	"LN_STATGAIN\0"
.balign 4
_Lt_09B2:	.ascii	"LN_STATMAX\0"
.balign 4
_Lt_09C7:	.ascii	"LN_NEXTACTION\0"
.balign 4
_Lt_09CE:	.ascii	"LN_NEWACTION\0"
.balign 4
_Lt_09D9:	.ascii	"LN_RANDOMACTION\0"
.balign 4
_Lt_09E3:	.ascii	"LN_GETACTION\0"
.balign 4
_Lt_09EE:	.ascii	"LN_PUTACTION\0"
.balign 4
_Lt_09F9:	.ascii	"LN_TEMPGET\0"
.balign 4
_Lt_0A04:	.ascii	"LN_TEMPPUT\0"
.balign 4
_Lt_0A12:	.ascii	"LN_INBOUNDS\0"
.balign 4
_Lt_0A27:	.ascii	"LN_HAVEIT\0"
.balign 4
_Lt_0A37:	.ascii	"LN_HASIT\0"
.balign 4
_Lt_0A49:	.ascii	"LN_HAVEHADIT\0"
.balign 4
_Lt_0A5E:	.ascii	"LN_HASHADIT\0"
.balign 4
_Lt_0A6B:	.ascii	"LN_HAVEGOTIT\0"
.balign 4
_Lt_0A79:	.ascii	"LN_HASGOTIT\0"
.balign 4
_Lt_0A8B:	.ascii	" EXP\0"
.balign 4
_Lt_0A92:	.ascii	"LN_WINEXP\0"
.balign 4
_Lt_0AA0:	.ascii	"LN_WINDGGR\0"
.balign 4
_Lt_0AA5:	.ascii	"LN_WINPIKE\0"
.balign 4
_Lt_0AAA:	.ascii	"LN_WINGRPL\0"
.balign 4
_Lt_0AAF:	.ascii	"LN_WINSEED\0"
.balign 4
_Lt_0AB4:	.ascii	"LN_WINKEY1\0"
.balign 4
_Lt_0AB9:	.ascii	"LN_WINKEY2\0"
.balign 4
_Lt_0AC2:	.ascii	"LN_WINIT\0"
.balign 4
_Lt_0ACF:	.ascii	"LN_AM\0"
.balign 4
_Lt_0ADF:	.ascii	"LN_ARE\0"
.balign 4
_Lt_0AEF:	.ascii	"LN_HERE\0"
.balign 4
_Lt_0AFF:	.ascii	"LN_THERE\0"
.balign 4
_Lt_0B09:	.ascii	"LN_BLANKCHECK\0"
.balign 4
_Lt_0B0D:	.ascii	"\372Ok\0"
.balign 4
_Lt_0B10:	.ascii	"LN_OKBUTTON\0"
.balign 4
_Lt_0B17:	.ascii	"&H0D\0"
.balign 4
_Lt_0B19:	.ascii	"LN_WWAIT\0"
.balign 4
_Lt_0B22:	.ascii	"LN_BUTTONWAIT\0"
.balign 4
_Lt_0B26:	.ascii	"%%\0"
.balign 4
_Lt_0B2A:	.ascii	"LN_COMMANDWAIT\0"
.balign 4
_Lt_0B31:	.ascii	"LN_FRAMEPUT\0"
.balign 4
_Lt_0B33:	.long	0xC1000000
.balign 4
_Lt_0B34:	.long	0xC1300000
.balign 4
_Lt_0B35:	.long	0xC1100000
.balign 4
_Lt_0B36:	.long	0xC1200000
.balign 4
_Lt_0B37:	.long	0xC0E00000
.balign 4
_Lt_0B38:	.long	0xC0000000
.balign 4
_Lt_0B3C:	.ascii	"LN_AVGFRAME\0"
.balign 4
_Lt_0B41:	.ascii	"LN_SCREENSET\0"
.balign 4
_Lt_0B46:	.ascii	"LN_FINDCRSR\0"
.balign 4
_Lt_0B4B:	.ascii	"LN_SHOWTEXT\0"
.balign 4
_Lt_0B50:	.ascii	"LN_PRFLBLNK\0"
.balign 4
_Lt_0B6C:	.ascii	"LN_PRFLSET\0"
.balign 4
_Lt_0BCD:	.ascii	"LN_PRFLMAKE\0"
.balign 4
_Lt_0C1A:	.ascii	"pndxspdrgrmldtbyemgdshktimp_\0"
.balign 4
_Lt_0C1E:	.ascii	"LN_ACTNCURE\0"
.balign 4
_Lt_0C29:	.ascii	"LN_ACTNBITE\0"
.balign 4
_Lt_0C34:	.ascii	"LN_ACTNPNCH\0"
.balign 4
_Lt_0C3F:	.ascii	"LN_ACTNKICK\0"
.balign 4
_Lt_0C4A:	.ascii	"LN_ACTNDGGR\0"
.balign 4
_Lt_0C55:	.ascii	"LN_ACTNPIKE\0"
.balign 4
_Lt_0C60:	.ascii	"LN_ACTNVNOM\0"
.balign 4
_Lt_0C6B:	.ascii	"LN_ACTNFIRE\0"
.balign 4
_Lt_0C76:	.ascii	"LN_ACTNDUST\0"
.balign 4
_Lt_0C81:	.ascii	"LN_ACTNWEB\0"
.balign 4
_Lt_0C8A:	.ascii	"LN_ACTNSPDR\0"
.balign 4
_Lt_0C93:	.ascii	"LN_ACTNCCTS\0"
.balign 4
_Lt_0C9C:	.ascii	"LN_ACTNDTBY\0"
.balign 4
_Lt_0CA3:	.ascii	"LN_ACTNMOVE\0"
.balign 4
_Lt_0CAA:	.ascii	"LN_ACTNWING\0"
.balign 4
_Lt_0CB7:	.ascii	"LN_ACTNWSTF\0"
.balign 4
_Lt_0CC2:	.ascii	"LN_ACTNKEY1\0"
.balign 4
_Lt_0CCB:	.ascii	"LN_ACTNKEY2\0"
.balign 4
_Lt_0CDB:	.ascii	"pwchchst\0"
.balign 4
_Lt_0CF8:	.ascii	"LN_ACTNISPT\0"
.balign 4
_Lt_0D11:	.ascii	"LN_ACTNFIREMOVE\0"
.balign 4
_Lt_0D1C:	.ascii	"LN_ACTNDUSTMOVE\0"
.balign 4
_Lt_0D27:	.ascii	"LN_ACTNWEBMOVE\0"
.balign 4
_Lt_0D40:	.ascii	"bldrchst\0"
.balign 4
_Lt_0D46:	.ascii	"LN_ACTNGRPL\0"
.balign 8
_Lt_0D4A:	.quad	0xC024000000000000
.balign 4
_Lt_0D76:	.ascii	"LN_ACTNRAPL\0"
.balign 4
_Lt_0D84:	.ascii	"pndxgrmlspdrdtbyweb_emgdshkt\0"
.balign 4
_Lt_0D91:	.ascii	"LN_CRTNIMP\0"
.balign 4
_Lt_0D95:	.ascii	"pndxgrmlspdrdtbyweb_shktemgd\0"
.balign 4
_Lt_0D9B:	.ascii	"LN_CRTNFIRE\0"
.balign 4
_Lt_0D9F:	.ascii	"pndxgrmlspdrshktemgdimp_\0"
.balign 4
_Lt_0DA5:	.ascii	"LN_CRTNDUST\0"
.balign 4
_Lt_0DA9:	.ascii	"pndxgrmlspdrdtbyweb_imp_\0"
.balign 4
_Lt_0DBB:	.ascii	"LN_CRTNSHKT\0"
.balign 4
_Lt_0DD0:	.ascii	"LN_CRTNEMGD\0"
.balign 4
_Lt_0DD4:	.ascii	"pndxdtbyspdrimp_emgdshktgrml\0"
.balign 4
_Lt_0DE0:	.ascii	"LN_CRTNSPDR\0"
.balign 4
_Lt_0DE6:	.ascii	"pndxgrmldtbyweb_shktemgdimp_\0"
.balign 4
_Lt_0DEE:	.ascii	"LN_CRTNWEB\0"
.balign 4
_Lt_0DF2:	.ascii	"pndxgrmlspdrimp_emgdshkt\0"
.balign 4
_Lt_0E02:	.ascii	"LN_CRTNDTBY\0"
.balign 4
_Lt_0E06:	.ascii	"pndxdtbyspdrimp_emgdshktweb_\0"
.balign 4
_Lt_0E18:	.ascii	"LN_CRTNGRML\0"
.balign 4
_Lt_0E1C:	.ascii	"pndxdtbyspdrimp_emgdshktweb_grmlccts\0"
.balign 4
_Lt_0E46:	.ascii	"LN_CRTNPNDX\0"
.balign 4
_Lt_0E4D:	.ascii	"stpw\0"
.balign 4
_Lt_0E51:	.ascii	"stps\0"
.balign 4
_Lt_0E57:	.ascii	"LN_CRTNCCTS\0"
.balign 4
_Lt_0E61:	.ascii	"dirt\0"
.balign 4
_Lt_0E67:	.ascii	"LN_CRTNBLDR\0"
.balign 4
_Lt_0E71:	.ascii	"\377""\0"
.balign 4
_Lt_0E74:	.ascii	"&HFF\0"
.balign 4
_Lt_0E75:	.ascii	"0\0"
.balign 4
_Lt_0E7A:	.ascii	"&H\0"
.balign 4
_Lt_0E82:	.ascii	"CINPUT\0"
.balign 4
_Lt_0E90:	.ascii	"%\0"
.balign 4
_Lt_0E99:	.ascii	"CURSORPUT\0"
.balign 4
_Lt_0EA2:	.ascii	".\0"
.balign 4
_Lt_0EAA:	.ascii	"PROGRESS_PUT\0"
.balign 4
_Lt_0EB0:	.ascii	"________.24\0"
.balign 4
_Lt_0EB3:	.ascii	"y\0"
.balign 4
_Lt_0EB5:	.ascii	".png\0"
.balign 4
_Lt_0EBA:	.ascii	"x\0"
.balign 4
_Lt_0EC3:	.ascii	"GRAPHICPUT\0"
.balign 4
_Lt_0ECD:	.ascii	"SUSPEND\0"
.balign 4
_Lt_0ED4:	.ascii	"CLS2\0"
.balign 4
_Lt_0ED6:	.long	0x436F0000
.balign 4
_Lt_0EE0:	.ascii	"FILE_PUT_CONTENTS\0"
.balign 4
_Lt_0EEF:	.ascii	"FILE_GET_CONTENTS\0"
.balign 4
_Lt_0EFB:	.ascii	"PAL_LOAD\0"
.balign 4
_Lt_0F03:	.ascii	"MOUSESTATUS\0"
.balign 4
_Lt_0F1B:	.ascii	"CLV_BUFFER_STACK\0"
.balign 4
_Lt_0F3E:	.ascii	"bttnself.24\0"
.balign 4
_Lt_0F43:	.ascii	"bttnnrth.24\0"
.balign 4
_Lt_0F48:	.ascii	"bttneast.24\0"
.balign 4
_Lt_0F4D:	.ascii	"bttnsuth.24\0"
.balign 4
_Lt_0F52:	.ascii	"bttnwest.24\0"
.balign 4
_Lt_0F65:	.ascii	"FRAME_STATUS\0"
.balign 4
_Lt_0F85:	.ascii	"FRAME_INVENTORY\0"
.balign 4
_Lt_0F8F:	.ascii	"Puzzlum\0"
.balign 4
_Lt_0F93:	.ascii	"(T)itle\0"
.balign 4
_Lt_0F96:	.ascii	"FRAME_TITLE\0"
.balign 4
_Lt_0FB8:	.ascii	"FRAME_PUT\0"
.balign 4
_Lt_0FE4:	.ascii	"CLV_GLYPH_INI\0"
.balign 4
_Lt_0FF9:	.ascii	"&HFF0D\0"
.balign 4
_Lt_0FFC:	.ascii	"INPUT_TEXT\0"
.balign 4
_Lt_1000:	.ascii	"Loading Map\0"
.balign 4
_Lt_1001:	.ascii	"mapname_str\0"
.balign 4
_Lt_1007:	.ascii	"AA_si\0"
.balign 4
_Lt_1009:	.ascii	"DD_si\0"
.balign 4
_Lt_1015:	.ascii	"d_sia[\0"
.balign 4
_Lt_1016:	.ascii	"][\0"
.balign 4
_Lt_1017:	.ascii	"]\0"
.balign 4
_Lt_101D:	.ascii	"ex_si\0"
.balign 4
_Lt_101F:	.ascii	"dy_si\0"
.balign 4
_Lt_1021:	.ascii	"mdx_si\0"
.balign 4
_Lt_1023:	.ascii	"mdy_si\0"
.balign 4
_Lt_1025:	.ascii	"textcolor_si\0"
.balign 4
_Lt_1027:	.ascii	"textdelay_sf\0"
.balign 4
_Lt_1029:	.ascii	"win_si\0"
.balign 4
_Lt_1044:	.ascii	"win_sia[\0"
.balign 4
_Lt_1053:	.ascii	"l_sia[\0"
.balign 4
_Lt_1057:	.ascii	"ctrl_str\0"
.balign 4
_Lt_1064:	.ascii	"prflidty_str[\0"
.balign 4
_Lt_106B:	.ascii	"prflactn_str[\0"
.balign 4
_Lt_1072:	.ascii	"prflgpic_str[\0"
.balign 4
_Lt_1079:	.ascii	"prflcmnd_str[\0"
.balign 4
_Lt_1080:	.ascii	"prflgpicactn_str[\0"
.balign 4
_Lt_1087:	.ascii	"prflactnct_str[\0"
.balign 4
_Lt_108E:	.ascii	"prflidty_sf[\0"
.balign 4
_Lt_1095:	.ascii	"prflhp_sf[\0"
.balign 4
_Lt_109C:	.ascii	"prflstr_sf[\0"
.balign 4
_Lt_10A3:	.ascii	"prfless_sf[\0"
.balign 4
_Lt_10AA:	.ascii	"prflspd_sf[\0"
.balign 4
_Lt_10B1:	.ascii	"prflarmr_sf[\0"
.balign 4
_Lt_10B8:	.ascii	"prflexp_sf[\0"
.balign 4
_Lt_10BF:	.ascii	"prflvalu_sf[\0"
.balign 4
_Lt_10C6:	.ascii	"prflpirc_sf[\0"
.balign 4
_Lt_10CD:	.ascii	"prflchck_sf[\0"
.balign 4
_Lt_10D4:	.ascii	"prfllv_sf[\0"
.balign 4
_Lt_10DB:	.ascii	"prflhpmax_sf[\0"
.balign 4
_Lt_10E2:	.ascii	"prflstrmax_sf[\0"
.balign 4
_Lt_10E9:	.ascii	"prflessmax_sf[\0"
.balign 4
_Lt_10F0:	.ascii	"prflessspd_sf[\0"
.balign 4
_Lt_10F7:	.ascii	"prflevad_sf[\0"
.balign 4
_Lt_10FE:	.ascii	"prflblnk_sf[\0"
.balign 4
_Lt_1105:	.ascii	"MAP_LOAD\0"
.balign 4
_Lt_113C:	.ascii	"Saving Map \"\0"
.balign 4
_Lt_123A:	.ascii	"MAP_SAVE\0"
.balign 4
_Lt_125B:	.ascii	".\\save\\\0"
.balign 4
_Lt_125C:	.ascii	".dat\0"
.balign 4
_Lt_1261:	.ascii	"SAVEGAME_SAVE\0"
.balign 4
_Lt_1269:	.ascii	"SAVEGAME_LOAD\0"
.balign 4
_Lt_1272:	.ascii	".LT_126D\0"

.section .dtors
.int __GLOBAL__D
