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
push 69
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
push 69
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
push 69
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
push 69
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
push 97
push dword ptr [ebp-68]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_005D
jmp eax
.Lt_005D:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-64], eax
push offset _Lt_0021
push 97
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
push 97
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
push 97
push dword ptr [ebp-84]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0060
jmp eax
.Lt_0060:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-76], eax
push offset _Lt_0021
push 97
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
push 97
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
push 97
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
push 97
push dword ptr [ebp-100]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0064
jmp eax
.Lt_0064:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-92], eax
push offset _Lt_0021
push 97
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
push 97
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
push 97
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
push 97
push dword ptr [ebp-112]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0068
jmp eax
.Lt_0068:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-108], eax
push offset _Lt_0021
push 97
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
push 97
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
push 100
push dword ptr [ebp-64]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_006B
jmp eax
.Lt_006B:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-60], eax
push offset _Lt_0021
push 100
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
push 100
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
push 100
push dword ptr [ebp-80]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_006E
jmp eax
.Lt_006E:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-72], eax
push offset _Lt_0021
push 100
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
push 100
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
push 100
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
push 100
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
push 101
push dword ptr [ebp-100]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0073
jmp eax
.Lt_0073:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-92], eax
push offset _Lt_0021
push 101
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
push 101
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
push 101
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
push 101
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
push 118
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
push 118
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
push 118
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
push 120
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
push 120
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
push 122
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
push 123
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
.Lt_00D9:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-132], eax
push offset _Lt_0121
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-136], eax
mov word ptr [_MOUSE_WIDTH], 320
mov word ptr [_MOUSE_HEIGHT], 240
mov word ptr [_SCREEN_WIDTH], 320
mov word ptr [_SCREEN_HEIGHT], 240
mov word ptr [_DISPLAY_WIDTH], 640
mov word ptr [_DISPLAY_HEIGHT], 480
.Lt_00DB:
push 0
push 0
push 16
push 32
push 17
call _fb_GfxScreen@20
test eax, eax
je .Lt_00DC
lea eax, [.Lt_00DC]
push eax
lea eax, [.Lt_00DB]
push eax
push offset _Lt_00C0
push 331
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00DC:
.Lt_00DD:
push 30
push 40
call _fb_Width@8
test eax, eax
je .Lt_00DE
lea eax, [.Lt_00DE]
push eax
lea eax, [.Lt_00DD]
push eax
push offset _Lt_00C0
push 332
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00DE:
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
push offset _Lt_00DF
push -1
push offset _THISPATH_STR
call _fb_StrAssign@20
push 0
push 7
push offset _Lt_00E0
push -1
push offset _FONTPATH_STR
call _fb_StrAssign@20
push 0
push 7
push offset _Lt_00E1
push -1
push offset _LOGOPATH_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_00E2
push -1
push offset _SPRITEPATH_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00E3
push -1
push offset _PALPATH_STR
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_00E4
push -1
push offset _MAPPATH_STR
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_00E5
push -1
push offset _HELPPATH_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_00E6
push -1
push offset _HELPFILENAME_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_00E7
push -1
push offset _MAP_STR
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_00E8
push -1
push offset _LVUPPATH_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_00E9
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
push offset _Lt_00EA
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
push offset _Lt_00C3
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 13
push offset _Lt_00EC
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
push offset _Lt_00F0
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
push offset _Lt_00F2
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
push 1
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 15
push offset _Lt_00F4
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
call _png_load
add esp, 8
mov dword ptr [_GTMP], eax
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
push -2147483648
push 0
push 0
mov eax, dword ptr [_GTMP]
mov dword ptr [ebp-116], eax
push offset _Lt_00C0
push 372
push dword ptr [ebp-116]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0123
jmp eax
.Lt_0123:
mov eax, dword ptr [ebp-116]
push dword ptr [eax+12]
mov eax, dword ptr [_GTMP]
mov dword ptr [ebp-112], eax
push offset _Lt_00C0
push 372
push dword ptr [ebp-112]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0124
jmp eax
.Lt_0124:
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
call _png_destroy
add esp, 4
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
push offset _Lt_00FA
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
.Lt_00FC:
mov dword ptr [_RESTART_ROE], 0
mov eax, dword ptr [_CLV_BUFFER_SPLASH]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_00FF:
push -1
call _fb_Inkey@0
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_0100
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_00FF
.Lt_0100:
call _LN_STARTUP@0
.Lt_0101:
push -1
call _fb_Inkey@0
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_0102
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_0101
.Lt_0102:
push 0
push -1
push 0
push 1
push offset _Lt_0103
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_StrLcase2@8
push eax
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0104:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_0108
jmp .Lt_0105
.Lt_0108:
push 2
push offset _Lt_0103
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
je .Lt_010A
mov ebx, dword ptr [_CLV_BUFFER_TITLE]
mov dword ptr [_CLV_BUFFER_FOCUS], ebx
call _LN_STARTTITLE@0
.Lt_010A:
.Lt_0109:
mov dword ptr [_EXITCOMMAND], 0
.Lt_010B:
call _LN_COMMAND@0
mov dword ptr [_EXITCOMMAND3], 0
.Lt_010E:
call _LN_COMMAND3@0
push 2
push offset _Lt_0103
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
je .Lt_0112
mov dword ptr [_EXITCOMMAND3], -1
mov dword ptr [_EXITCOMMAND], -1
.Lt_0112:
.Lt_0111:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_0114
jmp .Lt_010F
.Lt_0114:
.Lt_0110:
push 1
push -1
push offset _C_STR
push 2
push offset _Lt_0116
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
push offset _Lt_0115
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
jne .Lt_010E
.Lt_010F:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_0119
jmp .Lt_010C
.Lt_0119:
.Lt_010D:
push 1
push -1
push offset _C_STR
push 2
push offset _Lt_0116
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
push offset _Lt_011A
call _fb_StrAllocTempDescZEx@8
push eax
push 1
call _fb_StrInstr@12
test eax, eax
jg .Lt_010B
.Lt_010C:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_011D
jmp .Lt_0105
.Lt_011D:
call _LN_MAIN@0
cmp dword ptr [_RESTART_ROE], 0
je .Lt_011F
jmp .Lt_0105
.Lt_011F:
.Lt_0106:
jmp .Lt_0104
.Lt_0105:
.Lt_00FE:
jmp .Lt_00FC
.Lt_00FD:
.Lt_00DA:
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
.Lt_012E:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-64], eax
push offset _Lt_01BA
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
push offset _Lt_0130
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
.Lt_0134:
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
je .Lt_0135
lea eax, [.Lt_0135]
push eax
lea eax, [.Lt_0134]
push eax
push offset _Lt_00C0
push 431
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0135:
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
fdiv qword ptr [_Lt_01BC]
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
fdiv qword ptr [_Lt_01BC]
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
push dword ptr [_Lt_01BD]
pop dword ptr [_TEXTDELAY_SF]
mov word ptr [_WIN_SI], 4
push 0
call _fb_Timer@0
sub esp,8
fstp qword ptr [esp]
call _fb_Randomize@12
push offset _.Lt_00C6
call _fb_DataRestore@4
mov word ptr [_TTT_SI], 0
mov ax, word ptr [_WIN_SI]
mov word ptr [ebp-72], ax
jmp .Lt_0137
.Lt_013A:
movsx eax, word ptr [_TTT_SI]
sal eax, 1
dec eax
mov dword ptr [ebp-76], eax
push offset _Lt_00C0
push 469
mov eax, offset _WIN_SIA + 32
push dword ptr [eax]
mov eax, offset _WIN_SIA + 28
push dword ptr [eax]
push dword ptr [ebp-76]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_01BE
jmp eax
.Lt_01BE:
mov eax, dword ptr [ebp-76]
sal eax, 1
add eax, dword ptr [_WIN_SIA]
lea ebx, [eax]
push ebx
call _fb_DataReadShort@4
movsx ebx, word ptr [_TTT_SI]
sal ebx, 1
mov dword ptr [ebp-80], ebx
push offset _Lt_00C0
push 470
mov ebx, offset _WIN_SIA + 32
push dword ptr [ebx]
mov ebx, offset _WIN_SIA + 28
push dword ptr [ebx]
push dword ptr [ebp-80]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_01BF
jmp eax
.Lt_01BF:
mov eax, dword ptr [ebp-80]
sal eax, 1
add eax, dword ptr [_WIN_SIA]
lea ebx, [eax]
push ebx
call _fb_DataReadShort@4
.Lt_0138:
movsx ebx, word ptr [_TTT_SI]
inc ebx
mov word ptr [_TTT_SI], bx
.Lt_0137:
movsx ebx, word ptr [_TTT_SI]
movsx eax, word ptr [ebp-72]
cmp ebx, eax
jle .Lt_013A
.Lt_0139:
.Lt_013F:
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
je .Lt_0140
lea eax, [.Lt_0140]
push eax
lea eax, [.Lt_013F]
push eax
push offset _Lt_00C0
push 485
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0140:
mov word ptr [_T_SI], 0
.Lt_0144:
push 2
call _fb_FileInput@4
movsx eax, word ptr [_T_SI]
mov dword ptr [ebp-72], eax
push offset _Lt_00C0
push 487
push 64
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C0
jmp eax
.Lt_01C0:
mov eax, dword ptr [ebp-72]
lea ebx, [_L_SIA+eax*2]
push ebx
call _fb_InputShort@4
.Lt_0142:
movsx ebx, word ptr [_T_SI]
inc ebx
mov word ptr [_T_SI], bx
.Lt_0141:
movsx ebx, word ptr [_T_SI]
cmp ebx, 64
jle .Lt_0144
.Lt_0143:
.Lt_0146:
push 2
call _fb_FileClose@4
test eax, eax
je .Lt_0147
lea eax, [.Lt_0147]
push eax
lea eax, [.Lt_0146]
push eax
push offset _Lt_00C0
push 489
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0147:
push 0
push 9
push offset _Lt_0148
push -1
push offset _CTRL_STR
call _fb_StrAssign@20
push dword ptr [_Lt_01C1]
call _fb_Rnd@4
fmul qword ptr [_Lt_01BC]
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
fadd qword ptr [_Lt_01C2]
fcomp qword ptr [_Lt_01BC]
fnstsw ax
test ah, 0b01000000
jz .Lt_014A
push 0
push 5
push offset _Lt_014B
push -1
push offset _CTRL_STR
call _fb_StrConcatAssign@20
.Lt_014A:
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-72], ax
jmp .Lt_014D
.Lt_0150:
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
jmp .Lt_0152
.Lt_0155:
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
push offset _Lt_0157
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-80], eax
push offset _Lt_00C0
push 502
push 65536
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C3
jmp eax
.Lt_01C3:
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
push offset _Lt_00C0
push 502
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
push offset _Lt_00C0
push 503
push 65536
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C5
jmp eax
.Lt_01C5:
mov eax, dword ptr [ebp-84]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0157
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-84], ebx
push offset _Lt_00C0
push 503
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
push offset _Lt_00C0
push 503
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
push 9
push offset _Lt_015A
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-88], ebx
push offset _Lt_00C0
push 504
push 65536
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_01C8
jmp eax
.Lt_01C8:
mov eax, dword ptr [ebp-88]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssign@20
push 5
push offset _Lt_0157
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_015C
.Lt_015D:
call _LN_PRFLBLNK@0
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_015C:
push 5
push offset _Lt_015F
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_015E
.Lt_0160:
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_0161
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0162
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
push offset _Lt_015F
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01C9]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01C9]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLESSSPD_SF]
push 5
push offset _Lt_0165
push -1
push offset _MAPNAME_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0164
.Lt_0166:
fld dword ptr [_PRFLIDTY_SF]
fcomp dword ptr [_Lt_01C1]
fnstsw ax
test ah, 0b01000000
jz .Lt_0168
push 0
push 5
push offset _Lt_0169
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
.Lt_0168:
.Lt_0167:
.Lt_0164:
.Lt_0163:
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_015E:
push 5
push offset _Lt_016B
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_016A
.Lt_016C:
call _LN_PRFLBLNK@0
push 0
push 5
push offset _Lt_016B
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_016B
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLIDTY_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_016A:
push 5
push offset _Lt_016E
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_016D
.Lt_016F:
call _LN_PRFLBLNK@0
push 0
push 4
push offset _Lt_0170
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_015F
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
push offset _Lt_016E
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_016D:
push 5
push offset _Lt_0172
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0171
.Lt_0173:
call _LN_PRFLBLNK@0
push 0
push 8
push offset _Lt_0174
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0175
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
push dword ptr [_Lt_01C1]
call _fb_Rnd@4
fcomp qword ptr [_Lt_01D1]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0177
push 0
push 5
push offset _Lt_0178
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
.Lt_0177:
.Lt_0176:
push 0
push 5
push offset _Lt_0172
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D2]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D3]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D2]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D3]
pop dword ptr [_PRFLSTRMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_0171:
push 5
push offset _Lt_017A
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0179
.Lt_017B:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_017C
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_017D
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_017A
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D3]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01C9]
pop dword ptr [_PRFLEXP_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D3]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01D7]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_01D8]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_0179:
push 5
push offset _Lt_017F
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_017E
.Lt_0180:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_0181
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 21
push offset _Lt_0182
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_017F
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01D9]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01DA]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_017E:
push 5
push offset _Lt_0184
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0183
.Lt_0185:
call _LN_PRFLBLNK@0
push 0
push 13
push offset _Lt_0186
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0187
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
push offset _Lt_0184
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01DB]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01DC]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01DD]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01DE]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01DB]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01DC]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01DF]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01E0]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_0183:
push 5
push offset _Lt_0189
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0188
.Lt_018A:
call _LN_PRFLBLNK@0
push 0
push 14
push offset _Lt_018B
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0187
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
push dword ptr [_Lt_01C1]
call _fb_Rnd@4
fstp dword ptr [_RR_SF]
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_01E1]
fnstsw ax
test ah, 0b01000001
setz al
shr eax, 1
sbb eax, eax
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_01E2]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_018D
push 0
push 5
push offset _Lt_0178
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
.Lt_018D:
.Lt_018C:
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_01E2]
fnstsw ax
test ah, 0b01000001
setz al
shr eax, 1
sbb eax, eax
fld dword ptr [_RR_SF]
fcomp dword ptr [_Lt_01C1]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_018F
push 0
push 5
push offset _Lt_0190
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
.Lt_018F:
.Lt_018E:
push 0
push 5
push offset _Lt_0189
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01E3]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01DE]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01E3]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01E4]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_0188:
push 5
push offset _Lt_0192
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0191
.Lt_0193:
call _LN_PRFLBLNK@0
push 0
push 5
push offset _Lt_0194
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0192
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_01C1]
fnstsw ax
test ah, 0b01000000
jz .Lt_0196
.Lt_0197:
push 0
push 5
push offset _Lt_0198
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
jmp .Lt_0195
.Lt_0196:
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_01CE]
fnstsw ax
test ah, 0b01000000
jz .Lt_0199
.Lt_019A:
push 0
push 5
push offset _Lt_019B
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
jmp .Lt_0195
.Lt_0199:
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_01CD]
fnstsw ax
test ah, 0b01000000
jz .Lt_019C
.Lt_019D:
push 0
push 5
push offset _Lt_019E
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
.Lt_019C:
.Lt_0195:
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01E3]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01E3]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01E3]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01E3]
pop dword ptr [_PRFLSTRMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_0191:
push 5
push offset _Lt_01A0
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_019F
.Lt_01A1:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_01A2
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_01A3
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
push dword ptr [_Lt_01C1]
call _fb_Rnd@4
fmul qword ptr [_Lt_01BC]
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
fadd qword ptr [_Lt_01C2]
fcomp qword ptr [_Lt_01BC]
fnstsw ax
test ah, 0b01000000
jz .Lt_01A5
push 0
push 9
push offset _Lt_01A6
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_01A7
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
.Lt_01A5:
.Lt_01A4:
push 0
push 5
push offset _Lt_01A0
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01E5]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D4]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01D3]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_01E6]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_019F:
push 5
push offset _Lt_01AC
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_01AB
.Lt_01AD:
call _LN_PRFLBLNK@0
push 0
push 15
push offset _Lt_01AE
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push dword ptr [_Lt_01C1]
call _fb_Rnd@4
fmul qword ptr [_Lt_01BC]
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
fcomp qword ptr [_Lt_01C2]
fnstsw ax
test ah, 0b01000000
jz .Lt_01B0
push 0
push 5
push offset _Lt_01B1
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
jmp .Lt_01AF
.Lt_01B0:
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
.Lt_01AF:
push 0
push 5
push offset _Lt_01AC
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01E7]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01E7]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_015B
.Lt_01AB:
push 5
push offset _Lt_01B4
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_01B3
.Lt_01B5:
call _LN_PRFLBLNK@0
push 0
push 12
push offset _Lt_01B6
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
push offset _Lt_01B4
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01E8]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01C9]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01E8]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLSET@0
.Lt_01B3:
.Lt_015B:
.Lt_0153:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_0152:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-76]
cmp eax, ebx
jle .Lt_0155
.Lt_0154:
.Lt_014E:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_014D:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-72]
cmp ebx, eax
jle .Lt_0150
.Lt_014F:
.Lt_01B7:
push 1
call _fb_FileClose@4
test eax, eax
je .Lt_01B8
lea eax, [.Lt_01B8]
push eax
lea eax, [.Lt_01B7]
push eax
push offset _Lt_00C0
push 744
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_01B8:
.Lt_012F:
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
.Lt_01ED:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_020D
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_01EF:
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
push offset _Lt_01F2
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
push offset _Lt_01F3
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
push offset _Lt_01F4
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
push 37
push offset _Lt_01F6
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
push offset _Lt_01F7
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
push 23
push offset _Lt_01F9
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
push offset _Lt_01FA
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
push 11
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
push 8
push offset _Lt_01FD
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
push offset _Lt_01FE
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_01FF
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
je .Lt_0201
call _LN_SCREENSET@0
mov dword ptr [_RESTART_ROE], 1
jmp .Lt_01F0
.Lt_0201:
.Lt_0200:
push 2
push offset _Lt_0202
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0203
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
je .Lt_0205
call _LN_SCREENSET@0
push 0
call _fb_End@4
.Lt_0205:
.Lt_0204:
push 2
push offset _Lt_0206
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0207
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
je .Lt_0209
call _LN_STARTHELP@0
.Lt_0209:
.Lt_0208:
.Lt_01F1:
push 2
push offset _Lt_020A
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_020B
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
jne .Lt_01EF
.Lt_01F0:
.Lt_01EE:
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
.Lt_0223:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_0249
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
mov eax, dword ptr [_CLV_BUFFER_HELP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_0227:
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
je .Lt_0228
lea eax, [.Lt_0228]
push eax
lea eax, [.Lt_0227]
push eax
push offset _Lt_00C0
push 810
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0228:
.Lt_0229:
push 63
call _fb_FileEof@4
not eax
test eax, eax
je .Lt_022A
push 0
push -1
push offset _R_STR
push 63
call _fb_FileLineInput@16
push 13
push offset _Lt_022B
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_022D
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
.Lt_022D:
.Lt_022C:
push 11
push offset _Lt_022E
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0230
push 0
push 0
push -1
push 1
push 22
call _fb_Locate@20
mov word ptr [_COLR_SI], 9
push 0
push 12
push offset _Lt_01FB
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
push offset _Lt_0231
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
.Lt_0232:
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _LN_COMMANDWAIT@0
push 2
push offset _Lt_0103
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0235
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
je .Lt_0237
.Lt_0238:
push 63
call _fb_FileClose@4
test eax, eax
je .Lt_0239
lea eax, [.Lt_0239]
push eax
lea eax, [.Lt_0238]
push eax
push offset _Lt_00C0
push 830
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0239:
jmp .Lt_0224
.Lt_0237:
.Lt_0236:
.Lt_0234:
push 2
push offset _Lt_020A
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_020B
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
jne .Lt_0232
.Lt_0233:
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
.Lt_0230:
.Lt_022F:
push 6
push offset _Lt_023A
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_023C
.Lt_023D:
push 63
call _fb_FileClose@4
test eax, eax
je .Lt_023E
lea eax, [.Lt_023E]
push eax
lea eax, [.Lt_023D]
push eax
push offset _Lt_00C0
push 837
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_023E:
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
jmp .Lt_0224
.Lt_023C:
.Lt_023B:
push 8
push offset _Lt_023F
push -1
push 7
push offset _R_STR
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0241
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
.Lt_0241:
.Lt_0240:
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
je .Lt_0243
push -1
push 0
call _fb_SPACE@4
push eax
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0245
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
jmp .Lt_0244
.Lt_0245:
push 1
push 0
call _fb_PrintVoid@8
.Lt_0244:
.Lt_0243:
.Lt_0242:
jmp .Lt_0229
.Lt_022A:
.Lt_0246:
push 63
call _fb_FileClose@4
test eax, eax
je .Lt_0247
lea eax, [.Lt_0247]
push eax
lea eax, [.Lt_0246]
push eax
push offset _Lt_00C0
push 855
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0247:
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _CINPUT@0
.Lt_0224:
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
.Lt_0255:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0294
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-12], ax
jmp .Lt_0258
.Lt_025B:
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-16], ax
jmp .Lt_025D
.Lt_0260:
mov word ptr [_A_SI], 0
mov word ptr [_D_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 867
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0296
jmp eax
.Lt_0296:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_G_DFA+eax+72]
fcomp qword ptr [_Lt_0297]
fnstsw ax
test ah, 0b01000000
jz .Lt_0263
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C0
push 868
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0298
jmp eax
.Lt_0298:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [_Lt_01C2]
push dword ptr [_Lt_01C2+4]
pop dword ptr [_G_DFA+eax+76]
pop dword ptr [_G_DFA+eax+72]
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 869
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0299
jmp eax
.Lt_0299:
mov eax, dword ptr [ebp-28]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_GETACTION@0
push 5
push offset _Lt_0266
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
je .Lt_0268
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_0268:
.Lt_0267:
push 4
push 1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-32], ebx
push offset _Lt_00C0
push 875
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_029A
jmp eax
.Lt_029A:
mov eax, dword ptr [ebp-32]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 1819042167
jne .Lt_026C
.Lt_026D:
jmp .Lt_026A
.Lt_026C:
cmp dword ptr [ebp-36], 1919185011
jne .Lt_026E
.Lt_026F:
call _LN_CRTNSPDR@0
jmp .Lt_026A
.Lt_026E:
cmp dword ptr [ebp-36], 1600284023
jne .Lt_0270
.Lt_0271:
call _LN_CRTNWEB@0
jmp .Lt_026A
.Lt_0270:
cmp dword ptr [ebp-36], 2036495460
jne .Lt_0272
.Lt_0273:
call _LN_CRTNDTBY@0
jmp .Lt_026A
.Lt_0272:
cmp dword ptr [ebp-36], 1819112039
jne .Lt_0274
.Lt_0275:
call _LN_CRTNGRML@0
jmp .Lt_026A
.Lt_0274:
cmp dword ptr [ebp-36], 1953196147
jne .Lt_0276
.Lt_0277:
call _LN_CRTNSHKT@0
jmp .Lt_026A
.Lt_0276:
cmp dword ptr [ebp-36], 1684499813
jne .Lt_0278
.Lt_0279:
call _LN_CRTNEMGD@0
jmp .Lt_026A
.Lt_0278:
cmp dword ptr [ebp-36], 1601203561
jne .Lt_027A
.Lt_027B:
call _LN_CRTNIMP@0
jmp .Lt_026A
.Lt_027A:
cmp dword ptr [ebp-36], 1701996902
jne .Lt_027C
.Lt_027E:
call _LN_CRTNFIRE@0
jmp .Lt_026A
.Lt_027C:
cmp dword ptr [ebp-36], 2019847792
jne .Lt_027F
.Lt_0280:
call _LN_CRTNPNDX@0
jmp .Lt_026A
.Lt_027F:
cmp dword ptr [ebp-36], 1937007459
jne .Lt_0281
.Lt_0283:
call _LN_CRTNCCTS@0
jmp .Lt_026A
.Lt_0281:
cmp dword ptr [ebp-36], 1919183970
jne .Lt_0284
.Lt_0285:
call _LN_CRTNBLDR@0
jmp .Lt_026A
.Lt_0284:
cmp dword ptr [ebp-36], 1953723748
jne .Lt_0286
.Lt_0287:
call _LN_CRTNDUST@0
.Lt_0286:
.Lt_026A:
.Lt_0263:
.Lt_0262:
.Lt_025E:
movsx eax, word ptr [_TY_SI]
inc eax
mov word ptr [_TY_SI], ax
.Lt_025D:
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [ebp-16]
cmp eax, ebx
jle .Lt_0260
.Lt_025F:
.Lt_0259:
movsx ebx, word ptr [_TX_SI]
inc ebx
mov word ptr [_TX_SI], bx
.Lt_0258:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [ebp-12]
cmp ebx, eax
jle .Lt_025B
.Lt_025A:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-12], ax
jmp .Lt_0289
.Lt_028C:
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-16], ax
jmp .Lt_028E
.Lt_0291:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 907
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_029B
jmp eax
.Lt_029B:
mov eax, dword ptr [ebp-20]
imul eax, 136
push dword ptr [_Lt_0297]
push dword ptr [_Lt_0297+4]
pop dword ptr [_G_DFA+eax+76]
pop dword ptr [_G_DFA+eax+72]
.Lt_028F:
movsx eax, word ptr [_TY_SI]
inc eax
mov word ptr [_TY_SI], ax
.Lt_028E:
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [ebp-16]
cmp eax, ebx
jle .Lt_0291
.Lt_0290:
.Lt_028A:
movsx ebx, word ptr [_TX_SI]
inc ebx
mov word ptr [_TX_SI], bx
.Lt_0289:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [ebp-12]
cmp ebx, eax
jle .Lt_028C
.Lt_028B:
.Lt_0256:
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
.Lt_029E:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_02A1
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
.Lt_029F:
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
.Lt_02A3:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_02A8
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
jle .Lt_02A6
mov eax, dword ptr [_CLV_BUFFER_STATUS]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
mov word ptr [_STATX_SI], 24
call _LN_STATUS@0
.Lt_02A6:
.Lt_02A5:
.Lt_02A4:
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
.Lt_02AA:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-180], eax
push offset _Lt_031B
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
push offset _Lt_02AC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_02AE:
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
je .Lt_02AF
lea eax, [.Lt_02AF]
push eax
lea eax, [.Lt_02AE]
push eax
push offset _Lt_00C0
push 942
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_02AF:
push 0
push 1
push offset _Lt_0000
push -1
mov dword ptr [ebp-16], 0
push offset _Lt_00C0
push 942
mov eax, offset _NAMES_BUFFER + 32
push dword ptr [eax]
mov eax, offset _NAMES_BUFFER + 28
push dword ptr [eax]
push dword ptr [ebp-16]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_031D
jmp eax
.Lt_031D:
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
push offset _Lt_00C0
push 942
mov ebx, offset _NAMES_BUFFER + 32
push dword ptr [ebx]
mov ebx, offset _NAMES_BUFFER + 28
push dword ptr [ebx]
push dword ptr [ebp-20]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_031E
jmp eax
.Lt_031E:
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
.Lt_02B2:
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
je .Lt_02B3
lea eax, [.Lt_02B3]
push eax
lea eax, [.Lt_02B2]
push eax
push offset _Lt_00C0
push 943
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_02B3:
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
je .Lt_02B6
mov word ptr [_TITLED_SI], 1
call _LN_COMMAND2@0
jmp .Lt_02B5
.Lt_02B6:
mov word ptr [_TITLED_SI], 0
call _LN_COMMAND2@0
.Lt_02B5:
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
push 7
push offset _Lt_02B9
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02B8
.Lt_02BA:
push offset _MAP_BUFFER
lea eax, [ebp-12]
push eax
call _SAVEGAME_SAVE@8
push 0
push 2
push offset _Lt_0103
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
jmp .Lt_02AB
jmp .Lt_02B7
.Lt_02B8:
push 7
push offset _Lt_02BC
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02BB
.Lt_02BD:
push offset _MAP_BUFFER
lea eax, [ebp-12]
push eax
call _SAVEGAME_LOAD@8
push 0
push 2
push offset _Lt_0103
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
jmp .Lt_02AB
.Lt_02BB:
.Lt_02B7:
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_02BF
mov word ptr [_STATX_SI], 24
call _LN_GETACTION@0
push 7
push offset _Lt_02C0
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
je .Lt_02C2
push 0
push 2
push offset _Lt_02C3
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
jmp .Lt_02AB
.Lt_02C2:
.Lt_02C1:
push 5
push offset _Lt_02C6
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02C5
.Lt_02C7:
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
jmp .Lt_02AB
jmp .Lt_02C4
.Lt_02C5:
push 7
push offset _Lt_02C9
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02C8
.Lt_02CA:
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
jmp .Lt_02AB
jmp .Lt_02C4
.Lt_02C8:
push 7
push offset _Lt_02CC
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02CB
.Lt_02CD:
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
jmp .Lt_02AB
jmp .Lt_02C4
.Lt_02CB:
push 7
push offset _Lt_02CF
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02CE
.Lt_02D0:
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
jmp .Lt_02AB
jmp .Lt_02C4
.Lt_02CE:
push 7
push offset _Lt_02D2
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02D1
.Lt_02D3:
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
jmp .Lt_02AB
.Lt_02D1:
.Lt_02C4:
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
je .Lt_02D5
mov word ptr [_D_SI], 0
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_02D5:
.Lt_02D4:
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
je .Lt_02D7
mov word ptr [_D_SI], 1
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_02D7:
.Lt_02D6:
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
je .Lt_02D9
mov word ptr [_D_SI], 2
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_02D9:
.Lt_02D8:
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
je .Lt_02DB
mov word ptr [_D_SI], 3
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_02DB:
.Lt_02DA:
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
je .Lt_02DD
mov word ptr [_D_SI], 4
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_02DD:
.Lt_02DC:
push 5
push offset _Lt_0266
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
je .Lt_02DF
movsx eax, word ptr [_LB_SI]
cmp eax, -1
jne .Lt_02E1
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
je .Lt_02E3
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_STATX_SI]
sub ebx, eax
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_031F]
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
fdiv qword ptr [_Lt_031F]
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
push offset _Lt_00C0
push 1049
push 65536
push dword ptr [ebp-188]
fstp qword ptr [ebp-196]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0320
jmp eax
.Lt_0320:
mov eax, dword ptr [ebp-188]
imul eax, 108
lea ecx, [_E_STRA+eax+12]
push ecx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0321]
fld qword ptr [ebp-196]
fcompp
fnstsw ax
test ah, 0b01000001
setnz al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_02E6
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
push offset _Lt_00C0
push 1050
push 65536
push dword ptr [ebp-200]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0323
jmp eax
.Lt_0323:
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
je .Lt_02E9
push 0
push -1
push offset _AA_STR
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
jmp .Lt_02E8
.Lt_02E9:
push 0
push 5
push offset _Lt_0157
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
.Lt_02E8:
push 0
push 3
push offset _Lt_02EA
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_02E6:
.Lt_02E5:
.Lt_02E3:
.Lt_02E2:
jmp .Lt_02E0
.Lt_02E1:
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
push offset _Lt_00C0
push 1063
push 65536
push dword ptr [ebp-188]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0324
jmp eax
.Lt_0324:
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
fdiv qword ptr [_Lt_0321]
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
jle .Lt_02ED
mov word ptr [ebp-80], 1
lea eax, [ebp-104]
push eax
call _fb_CVL@4
mov word ptr [ebp-192], ax
jmp .Lt_02EF
.Lt_02F2:
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
jne .Lt_02F4
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
.Lt_02F4:
.Lt_02F3:
.Lt_02F0:
movsx eax, word ptr [ebp-80]
inc eax
mov word ptr [ebp-80], ax
.Lt_02EF:
movsx eax, word ptr [ebp-80]
movsx ebx, word ptr [ebp-192]
cmp eax, ebx
jle .Lt_02F2
.Lt_02F1:
lea ebx, [ebp-128]
push ebx
call _fb_CVL@4
test eax, eax
jle .Lt_02F6
push 7
push offset _Lt_02F9
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02F8
.Lt_02FA:
push 0
push -1
lea eax, [ebp-128]
push eax
call _fb_CVL@4
dec eax
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0325]
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
fmul qword ptr [_Lt_0325]
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
fadd qword ptr [_Lt_01C2]
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
jmp .Lt_02F7
.Lt_02F8:
push 7
push offset _Lt_02FC
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02FB
.Lt_02FD:
push 0
push -1
lea eax, [ebp-128]
push eax
call _fb_CVL@4
dec eax
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0325]
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
fmul qword ptr [_Lt_0325]
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
fadd qword ptr [_Lt_01C2]
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
jmp .Lt_02F7
.Lt_02FB:
push 7
push offset _Lt_02FF
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_02FE
.Lt_0300:
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
jge .Lt_0302
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
.Lt_0302:
.Lt_0301:
jmp .Lt_02F7
.Lt_02FE:
push 7
push offset _Lt_0304
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0303
.Lt_0305:
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
jle .Lt_0307
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
.Lt_0307:
.Lt_0306:
.Lt_0303:
.Lt_02F7:
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
.Lt_02F6:
.Lt_02F5:
.Lt_02ED:
.Lt_02EC:
.Lt_02E0:
.Lt_02DF:
.Lt_02DE:
call _LN_PUTACTION@0
call _fb_Timer@0
fstp dword ptr [_ST_SF]
.Lt_02BF:
.Lt_02BE:
mov word ptr [_STATX_SI], 24
push 2
push offset _Lt_0103
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
je .Lt_0309
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
jmp .Lt_02AB
.Lt_0309:
.Lt_0308:
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
je .Lt_030B
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
je .Lt_030D
movsx ebx, word ptr [_YM_SI]
add ebx, -2
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_031F]
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
fadd qword ptr [_Lt_0328]
fistp word ptr [_TEMPY_SI]
movsx ebx, word ptr [_XM_SI]
add ebx, -2
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_031F]
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
fadd qword ptr [_Lt_0328]
fistp word ptr [_TEMPX_SI]
mov bx, word ptr [_TEMPY_SI]
mov word ptr [_DY_SI], bx
mov bx, word ptr [_TEMPX_SI]
mov word ptr [_EX_SI], bx
push 0
push 3
push offset _Lt_02EA
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_030D:
.Lt_030C:
.Lt_030B:
.Lt_030A:
movsx ebx, word ptr [_EX_SI]
cmp ebx, 1
jge .Lt_030F
.Lt_0310:
mov word ptr [_EX_SI], 1
jmp .Lt_030E
.Lt_030F:
movsx ebx, word ptr [_EX_SI]
movsx eax, word ptr [_AA_SI]
cmp ebx, eax
jle .Lt_0311
.Lt_0312:
mov ax, word ptr [_AA_SI]
mov word ptr [_EX_SI], ax
.Lt_0311:
.Lt_030E:
movsx eax, word ptr [_DY_SI]
cmp eax, 1
jge .Lt_0314
.Lt_0315:
mov word ptr [_DY_SI], 1
jmp .Lt_0313
.Lt_0314:
movsx eax, word ptr [_DY_SI]
movsx ebx, word ptr [_DD_SI]
cmp eax, ebx
jle .Lt_0316
.Lt_0317:
mov bx, word ptr [_DD_SI]
mov word ptr [_DY_SI], bx
.Lt_0316:
.Lt_0313:
movsx ebx, word ptr [_RB_SI]
cmp ebx, -1
jne .Lt_0319
push 0
push 2
push offset _Lt_0116
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0319:
.Lt_0318:
lea ebx, [ebp-176]
push ebx
call _fb_ArrayDestructStr@4
lea ebx, [ebp-68]
push ebx
call _fb_ArrayStrErase@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_02AB:
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
.Lt_0356:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0359
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_0357:
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
.Lt_035B:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_0384
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-40], eax
mov word ptr [_T_SI], 0
.Lt_0360:
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-52], ebx
push offset _Lt_00C0
push 1137
push 4
push dword ptr [ebp-52]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0386
jmp eax
.Lt_0386:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C0
push 1137
push 4
push dword ptr [ebp-56]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0387
jmp eax
.Lt_0387:
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
push offset _Lt_00C0
push 1137
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0388
jmp eax
.Lt_0388:
mov eax, dword ptr [ebp-60]
imul eax, 9
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-64], ebx
push offset _Lt_00C0
push 1137
push 8
push dword ptr [ebp-64]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0389
jmp eax
.Lt_0389:
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
push offset _Lt_00C0
push 1137
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038A
jmp eax
.Lt_038A:
mov eax, dword ptr [ebp-44]
imul eax, 9
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-48], ebx
push offset _Lt_00C0
push 1137
push 8
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038B
jmp eax
.Lt_038B:
add ebx, dword ptr [ebp-48]
imul ebx, 12
lea eax, [_E_STRA+ebx]
push eax
call _fb_StrSwap@24
.Lt_035E:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_035D:
movsx eax, word ptr [_T_SI]
cmp eax, 1
jle .Lt_0360
.Lt_035F:
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
push offset _Lt_00C0
push 1139
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038C
jmp eax
.Lt_038C:
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
push offset _Lt_00C0
push 1140
push 4
push dword ptr [ebp-8]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038D
jmp eax
.Lt_038D:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-12], eax
push offset _Lt_00C0
push 1140
push 4
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038E
jmp eax
.Lt_038E:
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
push offset _Lt_00C0
push 1140
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_038F
jmp eax
.Lt_038F:
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
push offset _Lt_00C0
push 1142
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0390
jmp eax
.Lt_0390:
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
push offset _Lt_00C0
push 1143
push 4
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0391
jmp eax
.Lt_0391:
mov eax, dword ptr [ebp-24]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-28], eax
push offset _Lt_00C0
push 1143
push 4
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0392
jmp eax
.Lt_0392:
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
push offset _Lt_00C0
push 1143
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0393
jmp eax
.Lt_0393:
mov eax, dword ptr [ebp-32]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
mov word ptr [_T_SI], 3
.Lt_0372:
push 0
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-52], eax
push offset _Lt_00C0
push 1145
push 4
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0394
jmp eax
.Lt_0394:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C0
push 1145
push 4
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0395
jmp eax
.Lt_0395:
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
push offset _Lt_00C0
push 1145
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0396
jmp eax
.Lt_0396:
mov eax, dword ptr [ebp-60]
imul eax, 9
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-64], ebx
push offset _Lt_00C0
push 1145
push 8
push dword ptr [ebp-64]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0397
jmp eax
.Lt_0397:
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
push offset _Lt_00C0
push 1145
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0398
jmp eax
.Lt_0398:
mov eax, dword ptr [ebp-44]
imul eax, 9
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-48], ebx
push offset _Lt_00C0
push 1145
push 8
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0399
jmp eax
.Lt_0399:
add ebx, dword ptr [ebp-48]
imul ebx, 12
lea eax, [_E_STRA+ebx]
push eax
call _fb_StrSwap@24
.Lt_0370:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_036F:
movsx eax, word ptr [_T_SI]
cmp eax, 4
jle .Lt_0372
.Lt_0371:
mov word ptr [_T_SI], 0
.Lt_037C:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-44], eax
push offset _Lt_00C0
push 1148
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039A
jmp eax
.Lt_039A:
mov eax, dword ptr [ebp-44]
imul eax, 17
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-48], ebx
push offset _Lt_00C0
push 1148
push 16
push dword ptr [ebp-48]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039B
jmp eax
.Lt_039B:
add ebx, dword ptr [ebp-48]
push dword ptr [_G_DFA+ebx*8+4]
push dword ptr [_G_DFA+ebx*8]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-52], eax
push offset _Lt_00C0
push 1148
push 4
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039C
jmp eax
.Lt_039C:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C0
push 1148
push 4
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039D
jmp eax
.Lt_039D:
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
push offset _Lt_00C0
push 1148
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039E
jmp eax
.Lt_039E:
mov eax, dword ptr [ebp-60]
imul eax, 17
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-64], ebx
push offset _Lt_00C0
push 1148
push 16
push dword ptr [ebp-64]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_039F
jmp eax
.Lt_039F:
add ebx, dword ptr [ebp-64]
movsx eax, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add eax, esi
mov dword ptr [ebp-44], eax
push offset _Lt_00C0
push 1148
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A0
jmp eax
.Lt_03A0:
mov eax, dword ptr [ebp-44]
imul eax, 17
movsx esi, word ptr [_T_SI]
mov dword ptr [ebp-48], esi
push offset _Lt_00C0
push 1148
push 16
push dword ptr [ebp-48]
mov esi, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A1
jmp eax
.Lt_03A1:
add esi, dword ptr [ebp-48]
push dword ptr [_G_DFA+ebx*8]
push dword ptr [_G_DFA+ebx*8+4]
pop dword ptr [_G_DFA+esi*8+4]
pop dword ptr [_G_DFA+esi*8]
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
mov dword ptr [ebp-52], esi
push offset _Lt_00C0
push 1148
push 4
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A2
jmp eax
.Lt_03A2:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C0
push 1148
push 4
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A3
jmp eax
.Lt_03A3:
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
push offset _Lt_00C0
push 1148
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A4
jmp eax
.Lt_03A4:
mov eax, dword ptr [ebp-60]
imul eax, 17
movsx ebx, word ptr [_T_SI]
mov dword ptr [ebp-64], ebx
push offset _Lt_00C0
push 1148
push 16
push dword ptr [ebp-64]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03A5
jmp eax
.Lt_03A5:
add ebx, dword ptr [ebp-64]
pop dword ptr [_G_DFA+ebx*8]
pop dword ptr [_G_DFA+ebx*8+4]
.Lt_037A:
movsx ebx, word ptr [_T_SI]
inc ebx
mov word ptr [_T_SI], bx
.Lt_0379:
movsx ebx, word ptr [_T_SI]
cmp ebx, 16
jle .Lt_037C
.Lt_037B:
.Lt_035C:
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
.Lt_03A6:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_03C3
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
push offset _Lt_00C0
push 1154
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03C5
jmp eax
.Lt_03C5:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 1702127970
jne .Lt_03AB
.Lt_03AD:
call _LN_ATTKBITE@0
jmp .Lt_03A9
.Lt_03AB:
cmp dword ptr [ebp-16], 1751346800
jne .Lt_03AE
.Lt_03B0:
call _LN_ATTKPNCH@0
jmp .Lt_03A9
.Lt_03AE:
cmp dword ptr [ebp-16], 1801677163
jne .Lt_03B1
.Lt_03B3:
call _LN_ATTKKICK@0
jmp .Lt_03A9
.Lt_03B1:
cmp dword ptr [ebp-16], 1836019318
jne .Lt_03B4
.Lt_03B5:
call _LN_ATTKVNOM@0
jmp .Lt_03A9
.Lt_03B4:
cmp dword ptr [ebp-16], 1919379300
jne .Lt_03B6
.Lt_03B7:
call _LN_ATTKDGGR@0
jmp .Lt_03A9
.Lt_03B6:
cmp dword ptr [ebp-16], 1701538160
jne .Lt_03B8
.Lt_03B9:
call _LN_ATTKPIKE@0
jmp .Lt_03A9
.Lt_03B8:
cmp dword ptr [ebp-16], 1701999971
jne .Lt_03BA
.Lt_03BC:
call _LN_USECURE@0
jmp .Lt_03A9
.Lt_03BA:
cmp dword ptr [ebp-16], 1701996902
jne .Lt_03BD
.Lt_03BE:
call _LN_ATTKFIRE@0
jmp .Lt_03A9
.Lt_03BD:
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 1172
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03C6
jmp eax
.Lt_03C6:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 1173
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03C7
jmp eax
.Lt_03C7:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_03BF:
.Lt_03A9:
.Lt_03A7:
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
.Lt_03C8:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_03EC
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 1179
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03EE
jmp eax
.Lt_03EE:
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
push offset _Lt_00C0
push 1179
push 65536
push dword ptr [ebp-8]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03EF
jmp eax
.Lt_03EF:
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
je .Lt_03CD
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
push offset _Lt_00C0
push 1181
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F0
jmp eax
.Lt_03F0:
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
push offset _Lt_00C0
push 1182
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F1
jmp eax
.Lt_03F1:
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
push offset _Lt_00C0
push 1183
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F2
jmp eax
.Lt_03F2:
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
push offset _Lt_00C0
push 1183
push 65536
push dword ptr [ebp-28]
fstp qword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F3
jmp eax
.Lt_03F3:
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
push offset _Lt_00C0
push 1184
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F4
jmp eax
.Lt_03F4:
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
push offset _Lt_00C0
push 1184
push 65536
push dword ptr [ebp-36]
fstp qword ptr [ebp-116]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F5
jmp eax
.Lt_03F5:
mov eax, dword ptr [ebp-36]
imul eax, 136
push dword ptr [ebp-116]
push dword ptr [ebp-112]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-44], ebx
push offset _Lt_00C0
push 1185
push 4
push dword ptr [ebp-44]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F6
jmp eax
.Lt_03F6:
mov eax, dword ptr [ebp-44]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-48], eax
push offset _Lt_00C0
push 1185
push 4
push dword ptr [ebp-48]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F7
jmp eax
.Lt_03F7:
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
push offset _Lt_00C0
push 1185
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F8
jmp eax
.Lt_03F8:
mov eax, dword ptr [ebp-52]
imul eax, 136
fld qword ptr [_G_DFA+eax+120]
fistp word ptr [_EVADEATTACK]
movsx eax, word ptr [_EVADEATTACK]
push eax
fild dword ptr [esp]
add esp, 4
push dword ptr [_Lt_01C1]
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
push offset _Lt_00C0
push 1187
push 4
push dword ptr [ebp-56]
mov ebx, eax
fstp qword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03F9
jmp eax
.Lt_03F9:
mov eax, dword ptr [ebp-56]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-60], eax
push offset _Lt_00C0
push 1187
push 4
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03FA
jmp eax
.Lt_03FA:
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
push offset _Lt_00C0
push 1187
push 65536
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_03FB
jmp eax
.Lt_03FB:
mov eax, dword ptr [ebp-64]
imul eax, 136
fld qword ptr [ebp-132]
fsub qword ptr [_G_DFA+eax+40]
fistp word ptr [_ATTACKBLOCKED]
movsx eax, word ptr [_ATTACKBLOCKED]
test eax, eax
jge .Lt_03DD
mov word ptr [_ATTACKBLOCKED], 0
.Lt_03DD:
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
push offset _Lt_00C0
push 1190
push 4
push dword ptr [ebp-80]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0400
jmp eax
.Lt_0400:
mov eax, dword ptr [ebp-80]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-84], eax
push offset _Lt_00C0
push 1190
push 4
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0401
jmp eax
.Lt_0401:
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
push offset _Lt_00C0
push 1190
push 65536
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0402
jmp eax
.Lt_0402:
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
push offset _Lt_00C0
push 1190
push 4
push dword ptr [ebp-68]
mov ebx, eax
fstp qword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0403
jmp eax
.Lt_0403:
mov eax, dword ptr [ebp-68]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-72], eax
push offset _Lt_00C0
push 1190
push 4
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0404
jmp eax
.Lt_0404:
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
push offset _Lt_00C0
push 1190
push 65536
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0405
jmp eax
.Lt_0405:
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
push offset _Lt_00C0
push 1192
push 4
push dword ptr [ebp-92]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0406
jmp eax
.Lt_0406:
mov eax, dword ptr [ebp-92]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-96], eax
push offset _Lt_00C0
push 1192
push 4
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0407
jmp eax
.Lt_0407:
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
push offset _Lt_00C0
push 1192
push 65536
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0408
jmp eax
.Lt_0408:
mov eax, dword ptr [ebp-100]
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
fcomp qword ptr [_Lt_0297]
fnstsw ax
test ah, 0b01000001
jz .Lt_03E8
call _LN_VICTORY@0
.Lt_03E8:
.Lt_03E7:
.Lt_03CF:
.Lt_03CE:
jmp .Lt_03CC
.Lt_03CD:
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 1197
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_040A
jmp eax
.Lt_040A:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 1198
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_040B
jmp eax
.Lt_040B:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_03CC:
.Lt_03C9:
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
.Lt_040E:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0412
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
push 0
push 5
push offset _Lt_03AC
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_03AC
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
push offset _Lt_00C0
push 1208
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0414
jmp eax
.Lt_0414:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0321]
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
fadd qword ptr [_Lt_0325]
fistp word ptr [_ATTACKDAMAGE]
mov word ptr [_STRDAMAGE_SI], 2
call _LN_BATTLE@0
.Lt_040F:
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
.Lt_0415:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_041A
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_03AF
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_03AF
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
push offset _Lt_00C0
push 1219
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_041C
jmp eax
.Lt_041C:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_041D]
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
fadd qword ptr [_Lt_031F]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1220
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_041E
jmp eax
.Lt_041E:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_041F]
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
fadd qword ptr [_Lt_01BC]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0416:
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
.Lt_0420:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0425
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_017D
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_017D
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
push offset _Lt_00C0
push 1230
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0427
jmp eax
.Lt_0427:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0321]
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
fadd qword ptr [_Lt_0325]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1231
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0428
jmp eax
.Lt_0428:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_041D]
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
fadd qword ptr [_Lt_0321]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0421:
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
.Lt_0429:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_042E
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_03B2
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_03B2
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
push offset _Lt_00C0
push 1241
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0430
jmp eax
.Lt_0430:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0325]
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
fadd qword ptr [_Lt_0321]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1242
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0431
jmp eax
.Lt_0431:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0432]
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
fadd qword ptr [_Lt_031F]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_042A:
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
.Lt_0433:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0438
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_0169
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0169
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
push offset _Lt_00C0
push 1252
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_043A
jmp eax
.Lt_043A:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0321]
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
fadd qword ptr [_Lt_0432]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1253
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_043B
jmp eax
.Lt_043B:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0321]
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
fadd qword ptr [_Lt_043C]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0434:
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
.Lt_043D:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0442
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_0178
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0178
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
push offset _Lt_00C0
push 1263
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0444
jmp eax
.Lt_0444:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0321]
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
fadd qword ptr [_Lt_041F]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1264
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0445
jmp eax
.Lt_0445:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_043C]
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
fadd qword ptr [_Lt_01C2]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_043E:
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
.Lt_0446:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_044B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_0190
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0190
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
push offset _Lt_00C0
push 1274
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_044D
jmp eax
.Lt_044D:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_031F]
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
fadd qword ptr [_Lt_044E]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1275
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_044F
jmp eax
.Lt_044F:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0325]
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
fadd qword ptr [_Lt_041F]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0447:
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
.Lt_0450:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0459
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
push 0
push 5
push offset _Lt_0157
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0452
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
push offset _Lt_00C0
push 1285
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_045B
jmp eax
.Lt_045B:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_01BC]
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
fadd qword ptr [_Lt_044E]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1286
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_045C
jmp eax
.Lt_045C:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0321]
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
fadd qword ptr [_Lt_045D]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
push 5
push offset _Lt_027D
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
push offset _Lt_00C0
push 1288
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_045E
jmp eax
.Lt_045E:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0457
call _LN_GONE@0
.Lt_0457:
.Lt_0456:
.Lt_0451:
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
.Lt_045F:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0464
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_0157
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_027D
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
push offset _Lt_00C0
push 1299
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0466
jmp eax
.Lt_0466:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_01BC]
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
fadd qword ptr [_Lt_045D]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1300
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0467
jmp eax
.Lt_0467:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0321]
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
fadd qword ptr [_Lt_0468]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0460:
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
.Lt_0469:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_046D
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
push 0
push 5
push offset _Lt_0157
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_016E
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
push offset _Lt_00C0
push 1311
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_046F
jmp eax
.Lt_046F:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0325]
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
fadd qword ptr [_Lt_045D]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_046A:
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
.Lt_0470:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0475
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
push 0
push 5
push offset _Lt_0157
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0472
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
push offset _Lt_00C0
push 1322
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0477
jmp eax
.Lt_0477:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_041D]
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
fadd qword ptr [_Lt_043C]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0471:
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
.Lt_0478:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_047E
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 0
push 5
push offset _Lt_0157
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_047A
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
push offset _Lt_00C0
push 1332
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0480
jmp eax
.Lt_0480:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0325]
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
fadd qword ptr [_Lt_0325]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1333
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0481
jmp eax
.Lt_0481:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0432]
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
fadd qword ptr [_Lt_041F]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0479:
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
.Lt_0482:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_04AD
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 1339
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04AF
jmp eax
.Lt_04AF:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_041F]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0486
push 4
push offset _Lt_03BB
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
push offset _Lt_00C0
push 1341
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B0
jmp eax
.Lt_04B0:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_03BB
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
push offset _Lt_00C0
push 1342
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B1
jmp eax
.Lt_04B1:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 5
push offset _Lt_03BB
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
push offset _Lt_00C0
push 1345
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B2
jmp eax
.Lt_04B2:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_04B3]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C0
push 1345
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-116]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B4
jmp eax
.Lt_04B4:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-116]
push dword ptr [ebp-112]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-44], ebx
push offset _Lt_00C0
push 1346
push 4
push dword ptr [ebp-44]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B5
jmp eax
.Lt_04B5:
mov eax, dword ptr [ebp-44]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-48], eax
push offset _Lt_00C0
push 1346
push 4
push dword ptr [ebp-48]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B6
jmp eax
.Lt_04B6:
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
push offset _Lt_00C0
push 1346
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B7
jmp eax
.Lt_04B7:
mov eax, dword ptr [ebp-52]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-56], ebx
push offset _Lt_00C0
push 1346
push 65536
push dword ptr [ebp-56]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B8
jmp eax
.Lt_04B8:
mov eax, dword ptr [ebp-56]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fadd qword ptr [_G_DFA+ebx+8]
fadd qword ptr [_Lt_044E]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C0
push 1346
push 4
push dword ptr [ebp-32]
fstp qword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04B9
jmp eax
.Lt_04B9:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-36], eax
push offset _Lt_00C0
push 1346
push 4
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BA
jmp eax
.Lt_04BA:
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
push offset _Lt_00C0
push 1346
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BB
jmp eax
.Lt_04BB:
mov eax, dword ptr [ebp-40]
imul eax, 136
push dword ptr [ebp-124]
push dword ptr [ebp-120]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-72], ebx
push offset _Lt_00C0
push 1347
push 4
push dword ptr [ebp-72]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BC
jmp eax
.Lt_04BC:
mov eax, dword ptr [ebp-72]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-76], eax
push offset _Lt_00C0
push 1347
push 4
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BD
jmp eax
.Lt_04BD:
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
push offset _Lt_00C0
push 1347
push 65536
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BE
jmp eax
.Lt_04BE:
mov eax, dword ptr [ebp-80]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
mov dword ptr [ebp-84], ebx
push offset _Lt_00C0
push 1347
push 65536
push dword ptr [ebp-84]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04BF
jmp eax
.Lt_04BF:
mov eax, dword ptr [ebp-84]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fadd qword ptr [_G_DFA+ebx+16]
fadd qword ptr [_Lt_045D]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-60], eax
push offset _Lt_00C0
push 1347
push 4
push dword ptr [ebp-60]
fstp qword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C0
jmp eax
.Lt_04C0:
mov eax, dword ptr [ebp-60]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-64], eax
push offset _Lt_00C0
push 1347
push 4
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C1
jmp eax
.Lt_04C1:
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
push offset _Lt_00C0
push 1347
push 65536
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C2
jmp eax
.Lt_04C2:
mov eax, dword ptr [ebp-68]
imul eax, 136
push dword ptr [ebp-132]
push dword ptr [ebp-128]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-88], ebx
push offset _Lt_00C0
push 1348
push 4
push dword ptr [ebp-88]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C3
jmp eax
.Lt_04C3:
mov eax, dword ptr [ebp-88]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-92], eax
push offset _Lt_00C0
push 1348
push 4
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C4
jmp eax
.Lt_04C4:
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
push offset _Lt_00C0
push 1348
push 65536
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C5
jmp eax
.Lt_04C5:
mov eax, dword ptr [ebp-96]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_0297]
fnstsw ax
test ah, 0b01000001
jz .Lt_049F
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-136], ebx
push offset _Lt_00C0
push 1349
push 4
push dword ptr [ebp-136]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04C9
jmp eax
.Lt_04C9:
mov eax, dword ptr [ebp-136]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-140], eax
push offset _Lt_00C0
push 1349
push 4
push dword ptr [ebp-140]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CA
jmp eax
.Lt_04CA:
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
push offset _Lt_00C0
push 1349
push 65536
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CB
jmp eax
.Lt_04CB:
mov eax, dword ptr [ebp-144]
imul eax, 136
push dword ptr [_Lt_0297]
push dword ptr [_Lt_0297+4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_049F:
.Lt_049E:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-100], ebx
push offset _Lt_00C0
push 1351
push 4
push dword ptr [ebp-100]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CC
jmp eax
.Lt_04CC:
mov eax, dword ptr [ebp-100]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-104], eax
push offset _Lt_00C0
push 1351
push 4
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CD
jmp eax
.Lt_04CD:
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
push offset _Lt_00C0
push 1351
push 65536
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CE
jmp eax
.Lt_04CE:
mov eax, dword ptr [ebp-108]
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
fcomp qword ptr [_Lt_0297]
fnstsw ax
test ah, 0b01000001
jz .Lt_04A7
call _LN_VICTORY@0
.Lt_04A7:
.Lt_04A6:
.Lt_0488:
.Lt_0487:
jmp .Lt_0485
.Lt_0486:
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 1357
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04CF
jmp eax
.Lt_04CF:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 1358
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_04D0
jmp eax
.Lt_04D0:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_04A9:
.Lt_04A8:
.Lt_0485:
.Lt_0483:
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
.Lt_04D1:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0500
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 1365
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0502
jmp eax
.Lt_0502:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_041F]
fnstsw ax
test ah, 0b00000001
jnz .Lt_04D5
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 1367
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0503
jmp eax
.Lt_0503:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_04DA
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
push offset _Lt_00C0
push 1368
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0504
jmp eax
.Lt_0504:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 5
push offset _Lt_04DA
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
push offset _Lt_00C0
push 1371
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0505
jmp eax
.Lt_0505:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_04B3]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C0
push 1371
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0506
jmp eax
.Lt_0506:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-120]
push dword ptr [ebp-116]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
push 4
push offset _Lt_0157
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-32], ebx
push offset _Lt_00C0
push 1372
push 4
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0507
jmp eax
.Lt_0507:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-36], eax
push offset _Lt_00C0
push 1372
push 4
push dword ptr [ebp-36]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0508
jmp eax
.Lt_0508:
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
push offset _Lt_00C0
push 1372
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0509
jmp eax
.Lt_0509:
mov eax, dword ptr [ebp-40]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0266
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-44], ebx
push offset _Lt_00C0
push 1373
push 4
push dword ptr [ebp-44]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050A
jmp eax
.Lt_050A:
mov eax, dword ptr [ebp-44]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-48], eax
push offset _Lt_00C0
push 1373
push 4
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050B
jmp eax
.Lt_050B:
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
push offset _Lt_00C0
push 1373
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050C
jmp eax
.Lt_050C:
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
push offset _Lt_00C0
push 1374
push 65536
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050D
jmp eax
.Lt_050D:
mov eax, dword ptr [ebp-56]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_043C]
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
push offset _Lt_00C0
push 1377
push 4
push dword ptr [ebp-60]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050E
jmp eax
.Lt_050E:
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
push offset _Lt_00C0
push 1378
push 4
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_050F
jmp eax
.Lt_050F:
mov eax, dword ptr [ebp-64]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
mov word ptr [_TY_SI], bx
call _LN_TEMPGET@0
push 5
push offset _Lt_0266
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_04E7
push 0
push 5
push offset _Lt_0266
push -1
push offset _TEMPACTION_STR
call _fb_StrAssign@20
push dword ptr [_Lt_01C1]
call _fb_Rnd@4
fmul qword ptr [_Lt_041D]
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
fadd qword ptr [_Lt_0325]
fistp word ptr [_TEMPDIS_SI]
call _LN_TEMPPUT@0
.Lt_04E7:
.Lt_04E6:
mov ax, word ptr [_TEMPTX_SI]
mov word ptr [_TX_SI], ax
mov ax, word ptr [_TEMPTY_SI]
mov word ptr [_TY_SI], ax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-80], ebx
push offset _Lt_00C0
push 1387
push 4
push dword ptr [ebp-80]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0511
jmp eax
.Lt_0511:
mov eax, dword ptr [ebp-80]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-84], eax
push offset _Lt_00C0
push 1387
push 4
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0512
jmp eax
.Lt_0512:
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
push offset _Lt_00C0
push 1387
push 65536
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0513
jmp eax
.Lt_0513:
mov eax, dword ptr [ebp-88]
imul eax, 136
fld qword ptr [_Lt_0514]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-68], ebx
push offset _Lt_00C0
push 1387
push 4
push dword ptr [ebp-68]
mov ebx, eax
fstp qword ptr [ebp-120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0515
jmp eax
.Lt_0515:
mov eax, dword ptr [ebp-68]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-72], eax
push offset _Lt_00C0
push 1387
push 4
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0516
jmp eax
.Lt_0516:
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
push offset _Lt_00C0
push 1387
push 65536
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0517
jmp eax
.Lt_0517:
mov eax, dword ptr [ebp-76]
imul eax, 136
push dword ptr [ebp-120]
push dword ptr [ebp-116]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-92], ebx
push offset _Lt_00C0
push 1388
push 4
push dword ptr [ebp-92]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0518
jmp eax
.Lt_0518:
mov eax, dword ptr [ebp-92]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-96], eax
push offset _Lt_00C0
push 1388
push 4
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0519
jmp eax
.Lt_0519:
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
push offset _Lt_00C0
push 1388
push 65536
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_051A
jmp eax
.Lt_051A:
mov eax, dword ptr [ebp-100]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_0297]
fnstsw ax
test ah, 0b01000001
jz .Lt_04F2
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-124], ebx
push offset _Lt_00C0
push 1389
push 4
push dword ptr [ebp-124]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_051C
jmp eax
.Lt_051C:
mov eax, dword ptr [ebp-124]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-128], eax
push offset _Lt_00C0
push 1389
push 4
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_051D
jmp eax
.Lt_051D:
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
push offset _Lt_00C0
push 1389
push 65536
push dword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_051E
jmp eax
.Lt_051E:
mov eax, dword ptr [ebp-132]
imul eax, 136
push dword ptr [_Lt_0297]
push dword ptr [_Lt_0297+4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_04F2:
.Lt_04F1:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-104], ebx
push offset _Lt_00C0
push 1391
push 4
push dword ptr [ebp-104]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_051F
jmp eax
.Lt_051F:
mov eax, dword ptr [ebp-104]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-108], eax
push offset _Lt_00C0
push 1391
push 4
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0520
jmp eax
.Lt_0520:
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
push offset _Lt_00C0
push 1391
push 65536
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0521
jmp eax
.Lt_0521:
mov eax, dword ptr [ebp-112]
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
fcomp qword ptr [_Lt_0297]
fnstsw ax
test ah, 0b01000001
jz .Lt_04FA
call _LN_VICTORY@0
.Lt_04FA:
.Lt_04F9:
.Lt_04D7:
.Lt_04D6:
jmp .Lt_04D4
.Lt_04D5:
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 1397
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0522
jmp eax
.Lt_0522:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 1398
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0523
jmp eax
.Lt_0523:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_04FC:
.Lt_04FB:
.Lt_04D4:
.Lt_04D2:
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
.Lt_0524:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-76], eax
push offset _Lt_053B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-80], eax
call _LN_PRFLBLNK@0
push 0
push 6
push offset _Lt_0526
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C0
push 1407
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_053D
jmp eax
.Lt_053D:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1407
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_053E
jmp eax
.Lt_053E:
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
push offset _Lt_00C0
push 1407
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_053F
jmp eax
.Lt_053F:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_052A
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-16], eax
push offset _Lt_00C0
push 1409
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0540
jmp eax
.Lt_0540:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 1409
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0541
jmp eax
.Lt_0541:
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
push offset _Lt_00C0
push 1409
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0542
jmp eax
.Lt_0542:
mov eax, dword ptr [ebp-24]
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
fstp dword ptr [_PRFLHP_SF]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-28], ebx
push offset _Lt_00C0
push 1410
push 4
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0543
jmp eax
.Lt_0543:
mov eax, dword ptr [ebp-28]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C0
push 1410
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0544
jmp eax
.Lt_0544:
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
push offset _Lt_00C0
push 1410
push 65536
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0545
jmp eax
.Lt_0545:
mov eax, dword ptr [ebp-36]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fstp dword ptr [_PRFLSTR_SF]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-40], ebx
push offset _Lt_00C0
push 1411
push 4
push dword ptr [ebp-40]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0546
jmp eax
.Lt_0546:
mov eax, dword ptr [ebp-40]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-44], eax
push offset _Lt_00C0
push 1411
push 4
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0547
jmp eax
.Lt_0547:
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
push offset _Lt_00C0
push 1411
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0548
jmp eax
.Lt_0548:
mov eax, dword ptr [ebp-48]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fstp dword ptr [_PRFLESS_SF]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-52], ebx
push offset _Lt_00C0
push 1412
push 4
push dword ptr [ebp-52]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0549
jmp eax
.Lt_0549:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C0
push 1412
push 4
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054A
jmp eax
.Lt_054A:
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
push offset _Lt_00C0
push 1412
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054B
jmp eax
.Lt_054B:
mov eax, dword ptr [ebp-60]
imul eax, 136
fld qword ptr [_G_DFA+eax+48]
fstp dword ptr [_PRFLEXP_SF]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-64], ebx
push offset _Lt_00C0
push 1413
push 4
push dword ptr [ebp-64]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054C
jmp eax
.Lt_054C:
mov eax, dword ptr [ebp-64]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-68], eax
push offset _Lt_00C0
push 1413
push 4
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054D
jmp eax
.Lt_054D:
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
push offset _Lt_00C0
push 1413
push 65536
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_054E
jmp eax
.Lt_054E:
mov eax, dword ptr [ebp-72]
imul eax, 136
fld qword ptr [_G_DFA+eax+56]
fstp dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_054F]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLMAKE@0
.Lt_0525:
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
.Lt_0550:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-56], eax
push offset _Lt_0560
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-60], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C0
push 1421
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0562
jmp eax
.Lt_0562:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 1421
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0563
jmp eax
.Lt_0563:
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
push offset _Lt_00C0
push 1421
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0564
jmp eax
.Lt_0564:
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
push offset _Lt_00C0
push 1422
push 4
push dword ptr [ebp-16]
mov ebx, eax
fstp qword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0565
jmp eax
.Lt_0565:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 1422
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0566
jmp eax
.Lt_0566:
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
push offset _Lt_00C0
push 1422
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0567
jmp eax
.Lt_0567:
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
push offset _Lt_00C0
push 1423
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0568
jmp eax
.Lt_0568:
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
push offset _Lt_00C0
push 1423
push 65536
push dword ptr [ebp-28]
fstp qword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0569
jmp eax
.Lt_0569:
mov eax, dword ptr [ebp-28]
imul eax, 136
push dword ptr [ebp-76]
push dword ptr [ebp-72]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-36], ebx
push offset _Lt_00C0
push 1424
push 4
push dword ptr [ebp-36]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056A
jmp eax
.Lt_056A:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-40], eax
push offset _Lt_00C0
push 1424
push 4
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056B
jmp eax
.Lt_056B:
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
push offset _Lt_00C0
push 1424
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056C
jmp eax
.Lt_056C:
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
push offset _Lt_00C0
push 1425
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056D
jmp eax
.Lt_056D:
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
push offset _Lt_00C0
push 1425
push 65536
push dword ptr [ebp-48]
fstp qword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_056E
jmp eax
.Lt_056E:
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
.Lt_0551:
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
.Lt_0572:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_05DF
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
jle .Lt_0575
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_EXPSHOP]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
.Lt_0576:
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
push offset _Lt_00C0
push 1469
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E1
jmp eax
.Lt_05E1:
mov eax, dword ptr [ebp-44]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
mov dword ptr [ebp-48], ebx
push offset _Lt_00C0
push 1469
push 64
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E2
jmp eax
.Lt_05E2:
mov eax, dword ptr [ebp-48]
movsx ebx, word ptr [_L_SIA+eax*2]
push ebx
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0577
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
push offset _Lt_017A
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
push offset _Lt_00C0
push 1470
push 65536
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E3
jmp eax
.Lt_05E3:
mov eax, dword ptr [ebp-76]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_057E
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C0
push 1471
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E4
jmp eax
.Lt_05E4:
mov eax, dword ptr [ebp-104]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01C2]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0581
push 0
push 5
push offset _Lt_0582
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0584
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0582
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
.Lt_0584:
.Lt_0583:
.Lt_0581:
.Lt_0580:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-108], eax
push offset _Lt_00C0
push 1478
push 65536
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E5
jmp eax
.Lt_05E5:
mov eax, dword ptr [ebp-108]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01C2]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0589
push 0
push 5
push offset _Lt_058A
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_058C
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_058A
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
.Lt_058C:
.Lt_058B:
.Lt_0589:
.Lt_0588:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-112], eax
push offset _Lt_00C0
push 1485
push 65536
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E6
jmp eax
.Lt_05E6:
mov eax, dword ptr [ebp-112]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01C2]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0591
push 0
push 5
push offset _Lt_03AC
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0593
push 0
push -1
push -1
push 2
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03AC
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
.Lt_0593:
.Lt_0592:
.Lt_0591:
.Lt_0590:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-116], eax
push offset _Lt_00C0
push 1492
push 65536
push dword ptr [ebp-116]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E7
jmp eax
.Lt_05E7:
mov eax, dword ptr [ebp-116]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01C2]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0598
push 0
push 5
push offset _Lt_03AF
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_059A
push 0
push -1
push -1
push 2
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03AF
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
.Lt_059A:
.Lt_0599:
.Lt_0598:
.Lt_0597:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-120], eax
push offset _Lt_00C0
push 1499
push 65536
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E8
jmp eax
.Lt_05E8:
mov eax, dword ptr [ebp-120]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01BC]
fnstsw ax
test ah, 0b00000001
jnz .Lt_059F
push 0
push 5
push offset _Lt_03B2
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_05A1
push 0
push -1
push -1
push 10
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03B2
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
.Lt_05A1:
.Lt_05A0:
.Lt_059F:
.Lt_059E:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-124], eax
push offset _Lt_00C0
push 1506
push 65536
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05E9
jmp eax
.Lt_05E9:
mov eax, dword ptr [ebp-124]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_031F]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05A6
push 0
push 5
push offset _Lt_03BB
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_05A8
push 0
push -1
push -1
push 20
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03BB
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
.Lt_05A8:
.Lt_05A7:
.Lt_05A6:
.Lt_05A5:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-128], eax
push offset _Lt_00C0
push 1513
push 65536
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05EA
jmp eax
.Lt_05EA:
mov eax, dword ptr [ebp-128]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0432]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05AD
push 0
push 5
push offset _Lt_0169
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_05AF
push 0
push -1
push -1
push 30
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0169
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
.Lt_05AF:
.Lt_05AE:
.Lt_05AD:
.Lt_05AC:
.Lt_057E:
.Lt_057D:
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_05B2
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
fdiv qword ptr [_Lt_041F]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov word ptr [_MENUITEM_SI], 1
mov ax, word ptr [_MENUSIZE_SI]
mov word ptr [ebp-104], ax
jmp .Lt_05B6
.Lt_05B9:
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
jle .Lt_05BB
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push -1
push -1
push 5
push 2
push offset _Lt_05BF
push -1
push -1
movsx eax, word ptr [_MENUCOST_SI]
push eax
call _fb_IntToStr@4
push eax
push 5
push offset _Lt_05BE
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
push offset _Lt_05BD
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
push offset _Lt_0116
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BC
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
.Lt_05BB:
.Lt_05BA:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_05C8
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BC
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
.Lt_05C8:
.Lt_05C7:
.Lt_05B7:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_05B6:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-104]
cmp eax, ebx
jle .Lt_05B9
.Lt_05B8:
.Lt_05CB:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_0157
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
jne .Lt_05CD
movsx ebx, word ptr [_XM_SI]
cmp ebx, 15
jne .Lt_05CF
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
je .Lt_05D1
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
.Lt_05D1:
.Lt_05D0:
.Lt_05CF:
.Lt_05CE:
.Lt_05CD:
.Lt_05CC:
push 5
push offset _Lt_0577
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_05B2
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
push offset _Lt_0157
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_05D3
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C0
push 1551
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_05EB
jmp eax
.Lt_05EB:
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
jnz .Lt_05D6
push 0
push 2
push offset _Lt_02C3
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_ABILITYGAIN@0
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_05D6:
.Lt_05D5:
jmp .Lt_0576
.Lt_05D3:
.Lt_05D2:
push 5
push offset _Lt_0577
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_05D8
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C0
push 1559
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
jnz .Lt_05DB
push 0
push 2
push offset _Lt_02C3
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_LEVELUP@0
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_05DB:
.Lt_05DA:
jmp .Lt_0576
.Lt_05D8:
.Lt_05D7:
push 5
push offset _Lt_05B2
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_05DD
push 0
push 2
push offset _Lt_02C3
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_05DC
.Lt_05DD:
jmp .Lt_05CB
.Lt_05DC:
.Lt_0575:
.Lt_0574:
.Lt_0573:
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
.Lt_05F2:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0646
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_05F4:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_05F6
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
push offset _Lt_0178
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_05F8
push 0
push -1
push -1
push 5
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0178
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
.Lt_05F8:
.Lt_05F7:
push 0
push 5
push offset _Lt_0190
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_05FC
push 0
push -1
push -1
push 20
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0190
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
.Lt_05FC:
.Lt_05FB:
push 0
push 5
push offset _Lt_05FF
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0601
push 0
push -1
push -1
push 15
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_05FF
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
.Lt_0601:
.Lt_0600:
push 0
push 5
push offset _Lt_0604
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0606
push 0
push -1
push -1
push 15
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0604
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
.Lt_0606:
.Lt_0605:
push 0
push 5
push offset _Lt_017D
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_060A
push 0
push -1
push -1
push 10
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_017D
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
.Lt_060A:
.Lt_0609:
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_05B2
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
fdiv qword ptr [_Lt_041F]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 9
push offset _Lt_01A6
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
push offset _Lt_0610
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
push offset _Lt_0617
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-68], ebx
push offset _Lt_00C0
push 1620
push 4
push dword ptr [ebp-68]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0648
jmp eax
.Lt_0648:
mov eax, dword ptr [ebp-68]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-72], eax
push offset _Lt_00C0
push 1620
push 4
push dword ptr [ebp-72]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0649
jmp eax
.Lt_0649:
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
push offset _Lt_00C0
push 1620
push 65536
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064A
jmp eax
.Lt_064A:
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
jmp .Lt_061B
.Lt_061E:
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
jle .Lt_0620
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
push 0
push -1
push -1
push 5
push 2
push offset _Lt_05BF
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
push offset _Lt_05BE
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
push offset _Lt_05BD
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
push offset _Lt_0116
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BC
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
.Lt_0620:
.Lt_061F:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_0629
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BC
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
.Lt_0629:
.Lt_0628:
.Lt_061C:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_061B:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-104]
cmp eax, ebx
jle .Lt_061E
.Lt_061D:
.Lt_062C:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_0157
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
jne .Lt_062E
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_VIEWX_SI]
cmp ebx, eax
jne .Lt_0630
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
je .Lt_0632
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
.Lt_0632:
.Lt_0631:
.Lt_0630:
.Lt_062F:
.Lt_062E:
.Lt_062D:
push 5
push offset _Lt_0577
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_05B2
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
push offset _Lt_0157
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0634
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C0
push 1649
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064B
jmp eax
.Lt_064B:
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
jnz .Lt_0637
push 0
push 2
push offset _Lt_02C3
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
push offset _Lt_00C0
push 1655
push 4
push dword ptr [ebp-120]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064C
jmp eax
.Lt_064C:
mov eax, dword ptr [ebp-120]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-124], eax
push offset _Lt_00C0
push 1655
push 4
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064D
jmp eax
.Lt_064D:
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
push offset _Lt_00C0
push 1655
push 65536
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064E
jmp eax
.Lt_064E:
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
push offset _Lt_00C0
push 1655
push 4
push dword ptr [ebp-108]
mov ebx, eax
fstp qword ptr [ebp-136]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_064F
jmp eax
.Lt_064F:
mov eax, dword ptr [ebp-108]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-112], eax
push offset _Lt_00C0
push 1655
push 4
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0650
jmp eax
.Lt_0650:
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
push offset _Lt_00C0
push 1655
push 65536
push dword ptr [ebp-116]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0651
jmp eax
.Lt_0651:
mov eax, dword ptr [ebp-116]
imul eax, 136
push dword ptr [ebp-136]
push dword ptr [ebp-132]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
jmp .Lt_05F4
.Lt_0637:
.Lt_0636:
jmp .Lt_05F4
.Lt_0634:
.Lt_0633:
push 5
push offset _Lt_0577
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_063F
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
mov dword ptr [ebp-104], eax
push offset _Lt_00C0
push 1661
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0653
jmp eax
.Lt_0653:
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
jnz .Lt_0642
push 0
push 2
push offset _Lt_02C3
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_LEVELUP@0
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
jmp .Lt_05F4
.Lt_0642:
.Lt_0641:
jmp .Lt_05F4
.Lt_063F:
.Lt_063E:
push 5
push offset _Lt_05B2
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0644
push 0
push 2
push offset _Lt_02C3
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_0643
.Lt_0644:
jmp .Lt_062C
.Lt_0643:
.Lt_05F6:
.Lt_05F5:
.Lt_05F3:
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
.Lt_0659:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_068E
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
jle .Lt_065C
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
push offset _Lt_065D
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
fdiv qword ptr [_Lt_041F]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 12
push offset _Lt_0660
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
push offset _Lt_0662
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
push offset _Lt_0664
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
push offset _Lt_0666
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
push offset _Lt_0668
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
push offset _Lt_0617
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-136], ebx
push offset _Lt_00C0
push 1710
push 4
push dword ptr [ebp-136]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0690
jmp eax
.Lt_0690:
mov eax, dword ptr [ebp-136]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-140], eax
push offset _Lt_00C0
push 1710
push 4
push dword ptr [ebp-140]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0691
jmp eax
.Lt_0691:
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
push offset _Lt_00C0
push 1710
push 65536
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0692
jmp eax
.Lt_0692:
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
jmp .Lt_0672
.Lt_0675:
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
jle .Lt_0677
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
push offset _Lt_0678
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BC
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
.Lt_0677:
.Lt_0676:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_067E
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_05BC
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
.Lt_067E:
.Lt_067D:
.Lt_0673:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_0672:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-172]
cmp eax, ebx
jle .Lt_0675
.Lt_0674:
.Lt_0681:
.Lt_0682:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_0157
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
jne .Lt_0686
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_VIEWX_SI]
cmp ebx, eax
jne .Lt_0688
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
je .Lt_068A
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
.Lt_068A:
.Lt_0689:
.Lt_0688:
.Lt_0687:
.Lt_0686:
.Lt_0685:
.Lt_0684:
push 5
push offset _Lt_065D
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0682
.Lt_0683:
push 5
push offset _Lt_065D
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_068C
push 0
push 2
push offset _Lt_02C3
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_068B
.Lt_068C:
call _LN_MERCHANT@0
.Lt_068B:
.Lt_065C:
.Lt_065B:
.Lt_065A:
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
.Lt_0695:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-32], eax
push offset _Lt_06A2
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
push offset _Lt_00C0
push 1754
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_06A4
jmp eax
.Lt_06A4:
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
push offset _Lt_00C0
push 1754
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_06A5
jmp eax
.Lt_06A5:
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
push offset _Lt_00C0
push 1755
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_06A6
jmp eax
.Lt_06A6:
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
push offset _Lt_00C0
push 1755
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_06A7
jmp eax
.Lt_06A7:
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
jle .Lt_069D
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
push offset _Lt_00C0
push 1766
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_06A9
jmp eax
.Lt_06A9:
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
push offset _Lt_069F
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
.Lt_069D:
.Lt_069C:
.Lt_0696:
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
.Lt_06AA:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0702
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 5
push offset _Lt_0157
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
push offset _Lt_00C0
push 1781
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0704
jmp eax
.Lt_0704:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_06AE
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C0
push 1782
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0705
jmp eax
.Lt_0705:
mov eax, dword ptr [ebp-16]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-20], ebx
push offset _Lt_00C0
push 1782
push 65536
push dword ptr [ebp-20]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0706
jmp eax
.Lt_0706:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ecx
mov dword ptr [ebp-24], ecx
push offset _Lt_00C0
push 1782
push 64
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0707
jmp eax
.Lt_0707:
mov eax, dword ptr [ebp-24]
movsx ecx, word ptr [_L_SIA+eax*2]
push ecx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+ebx+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_06B3
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx eax, word ptr [_AA_SI]
imul ecx, eax
add ebx, ecx
mov dword ptr [ebp-32], ebx
push offset _Lt_00C0
push 1783
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0708
jmp eax
.Lt_0708:
mov eax, dword ptr [ebp-32]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-36], ebx
push offset _Lt_00C0
push 1783
push 65536
push dword ptr [ebp-36]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0709
jmp eax
.Lt_0709:
mov eax, dword ptr [ebp-36]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ecx
mov dword ptr [ebp-40], ecx
push offset _Lt_00C0
push 1783
push 64
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070A
jmp eax
.Lt_070A:
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
push offset _Lt_00C0
push 1783
push 65536
push dword ptr [ebp-28]
fstp qword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070B
jmp eax
.Lt_070B:
mov eax, dword ptr [ebp-28]
imul eax, 136
push dword ptr [ebp-124]
push dword ptr [ebp-120]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
push dword ptr [_Lt_01C1]
call _fb_Rnd@4
fmul qword ptr [_Lt_0325]
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
fadd qword ptr [_Lt_01C2]
fistp word ptr [_R1_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-48], eax
push offset _Lt_00C0
push 1785
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070C
jmp eax
.Lt_070C:
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
push offset _Lt_00C0
push 1785
push 65536
push dword ptr [ebp-44]
fstp qword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070D
jmp eax
.Lt_070D:
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
push offset _Lt_00C0
push 1786
push 65536
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070E
jmp eax
.Lt_070E:
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
push offset _Lt_00C0
push 1786
push 65536
push dword ptr [ebp-52]
fstp qword ptr [ebp-140]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_070F
jmp eax
.Lt_070F:
mov eax, dword ptr [ebp-52]
imul eax, 136
push dword ptr [ebp-140]
push dword ptr [ebp-136]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
push dword ptr [_Lt_01C1]
call _fb_Rnd@4
fmul qword ptr [_Lt_0325]
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
fadd qword ptr [_Lt_01C2]
fistp word ptr [_R2_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-64], eax
push offset _Lt_00C0
push 1788
push 65536
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0710
jmp eax
.Lt_0710:
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
push offset _Lt_00C0
push 1788
push 65536
push dword ptr [ebp-60]
fstp qword ptr [ebp-148]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0711
jmp eax
.Lt_0711:
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
push offset _Lt_00C0
push 1789
push 65536
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0712
jmp eax
.Lt_0712:
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
push offset _Lt_00C0
push 1789
push 65536
push dword ptr [ebp-68]
fstp qword ptr [ebp-156]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0713
jmp eax
.Lt_0713:
mov eax, dword ptr [ebp-68]
imul eax, 136
push dword ptr [ebp-156]
push dword ptr [ebp-152]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
push dword ptr [_Lt_01C1]
call _fb_Rnd@4
fmul qword ptr [_Lt_0325]
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
fadd qword ptr [_Lt_01C2]
fistp word ptr [_R3_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-80], eax
push offset _Lt_00C0
push 1791
push 65536
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0714
jmp eax
.Lt_0714:
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
push offset _Lt_00C0
push 1791
push 65536
push dword ptr [ebp-76]
fstp qword ptr [ebp-164]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0715
jmp eax
.Lt_0715:
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
push offset _Lt_00C0
push 1792
push 65536
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0716
jmp eax
.Lt_0716:
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
push offset _Lt_00C0
push 1792
push 65536
push dword ptr [ebp-84]
fstp qword ptr [ebp-172]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0717
jmp eax
.Lt_0717:
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
push offset _Lt_00C0
push 1794
push 65536
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0718
jmp eax
.Lt_0718:
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
push offset _Lt_00C0
push 1794
push 65536
push dword ptr [ebp-92]
fstp qword ptr [ebp-180]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0719
jmp eax
.Lt_0719:
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
push offset _Lt_00C0
push 1796
push 65536
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_071A
jmp eax
.Lt_071A:
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
push offset _Lt_00C0
push 1796
push 65536
push dword ptr [ebp-100]
fstp qword ptr [ebp-188]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_071B
jmp eax
.Lt_071B:
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
jle .Lt_06C9
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0725]
push dword ptr [_Lt_0726]
push dword ptr [_Lt_01D5]
push dword ptr [_Lt_0727]
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
push offset _Lt_00C0
push 1804
push 65536
push dword ptr [ebp-192]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0728
jmp eax
.Lt_0728:
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
push offset _Lt_06CB
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
push offset _Lt_06CD
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
push offset _Lt_0116
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
push offset _Lt_06D1
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
push offset _Lt_0116
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
push offset _Lt_06D5
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
push offset _Lt_0116
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
push offset _Lt_06D9
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
push offset _Lt_06DB
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
.Lt_06C9:
.Lt_06C8:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-108], eax
push offset _Lt_00C0
push 1815
push 65536
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0729
jmp eax
.Lt_0729:
mov eax, dword ptr [ebp-108]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_072A]
fnstsw ax
sahf
jae .Lt_06DF
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-124], eax
push offset _Lt_00C0
push 1816
push 65536
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_072B
jmp eax
.Lt_072B:
mov eax, dword ptr [ebp-124]
imul eax, 136
fld qword ptr [_Lt_01C2]
fadd qword ptr [_G_DFA+eax+80]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-120], eax
push offset _Lt_00C0
push 1816
push 65536
push dword ptr [ebp-120]
fstp qword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_072C
jmp eax
.Lt_072C:
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
jle .Lt_06E3
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 12
push offset _Lt_06E4
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
push offset _Lt_00C0
push 1821
push 65536
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_072E
jmp eax
.Lt_072E:
mov eax, dword ptr [ebp-148]
imul eax, 136
push dword ptr [_G_DFA+eax+84]
push dword ptr [_G_DFA+eax+80]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0116
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
push offset _Lt_00C0
push 1822
push 65536
push dword ptr [ebp-176]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_072F
jmp eax
.Lt_072F:
mov eax, dword ptr [ebp-176]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
mov dword ptr [ebp-180], ebx
push offset _Lt_00C0
push 1822
push 64
push dword ptr [ebp-180]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0730
jmp eax
.Lt_0730:
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
push offset _Lt_00C0
push 1822
push 65536
push dword ptr [ebp-184]
fstp qword ptr [ebp-192]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0731
jmp eax
.Lt_0731:
mov eax, dword ptr [ebp-184]
imul eax, 136
fld qword ptr [ebp-192]
fsub qword ptr [_G_DFA+eax+48]
fcomp qword ptr [_Lt_0297]
fnstsw ax
test ah, 0b00000001
jnz .Lt_06ED
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 6
push offset _Lt_06EE
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
push offset _Lt_05BF
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
push offset _Lt_00C0
push 1824
push 65536
push dword ptr [ebp-208]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0733
jmp eax
.Lt_0733:
mov eax, dword ptr [ebp-208]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
mov dword ptr [ebp-212], ebx
push offset _Lt_00C0
push 1824
push 64
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0734
jmp eax
.Lt_0734:
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
push offset _Lt_00C0
push 1824
push 65536
push dword ptr [ebp-216]
fstp qword ptr [ebp-260]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0735
jmp eax
.Lt_0735:
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
push offset _Lt_0116
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
.Lt_06ED:
.Lt_06EC:
.Lt_06E3:
.Lt_06E2:
.Lt_06DF:
.Lt_06DE:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_06F7
call _LN_OKBUTTON@0
.Lt_06F7:
.Lt_06F6:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-112], eax
push offset _Lt_00C0
push 1834
push 65536
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0737
jmp eax
.Lt_0737:
mov eax, dword ptr [ebp-112]
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_01BC]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_015F
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
push offset _Lt_00C0
push 1834
push 65536
push dword ptr [ebp-116]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0738
jmp eax
.Lt_0738:
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
je .Lt_06FB
push 0
push 5
push offset _Lt_0169
push -1
push offset _GETIT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0169
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_06FD
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
push offset _Lt_00C0
push 1839
push 65536
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0739
jmp eax
.Lt_0739:
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
push offset _Lt_00C0
push 1839
push 65536
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_073A
jmp eax
.Lt_073A:
mov eax, dword ptr [ebp-120]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
call _LN_GAIN@0
.Lt_06FD:
.Lt_06FC:
.Lt_06FB:
.Lt_06FA:
.Lt_06B3:
.Lt_06B2:
.Lt_06AE:
.Lt_06AD:
.Lt_06AB:
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
.Lt_073D:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0744
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
jle .Lt_0740
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
push offset _Lt_00C0
push 1859
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0746
jmp eax
.Lt_0746:
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
push offset _Lt_069F
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
.Lt_0740:
.Lt_073F:
.Lt_073E:
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
.Lt_0747:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_075B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 1
push offset _Lt_0000
push -1
push offset _GETIT_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_074A
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
push offset _Lt_00C0
push 1875
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_075D
jmp eax
.Lt_075D:
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
push offset _Lt_00C0
push 1875
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_075E
jmp eax
.Lt_075E:
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
je .Lt_074F
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0725]
push dword ptr [_Lt_0726]
push dword ptr [_Lt_01D5]
push dword ptr [_Lt_0727]
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
push offset _Lt_00C0
push 1885
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_075F
jmp eax
.Lt_075F:
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
push offset _Lt_069F
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
push offset _Lt_0752
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
push offset _Lt_0757
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-60], eax
push offset _Lt_00C0
push 1891
push 4
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0760
jmp eax
.Lt_0760:
mov eax, dword ptr [ebp-60]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-64], eax
push offset _Lt_00C0
push 1891
push 4
push dword ptr [ebp-64]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0761
jmp eax
.Lt_0761:
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
push offset _Lt_00C0
push 1891
push 65536
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0762
jmp eax
.Lt_0762:
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
.Lt_074F:
.Lt_074E:
.Lt_074A:
.Lt_0749:
.Lt_0748:
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
.Lt_0765:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0772
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
je .Lt_0768
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
push offset _Lt_00C0
push 1912
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0774
jmp eax
.Lt_0774:
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
push offset _Lt_076A
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
push offset _Lt_076C
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
push offset _Lt_00C0
push 1918
push 4
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0775
jmp eax
.Lt_0775:
mov eax, dword ptr [ebp-40]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-44], eax
push offset _Lt_00C0
push 1918
push 4
push dword ptr [ebp-44]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0776
jmp eax
.Lt_0776:
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
push offset _Lt_00C0
push 1918
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0777
jmp eax
.Lt_0777:
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
.Lt_0768:
.Lt_0767:
.Lt_0766:
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
.Lt_077A:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_078D
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
je .Lt_077D
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
push offset _Lt_00C0
push 1938
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_078F
jmp eax
.Lt_078F:
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
push offset _Lt_076A
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
push offset _Lt_00C0
push 1940
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0790
jmp eax
.Lt_0790:
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
push offset _Lt_00C0
push 1943
push 4
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0791
jmp eax
.Lt_0791:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-36], eax
push offset _Lt_00C0
push 1943
push 4
push dword ptr [ebp-36]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0792
jmp eax
.Lt_0792:
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
push offset _Lt_00C0
push 1943
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0793
jmp eax
.Lt_0793:
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
push offset _Lt_0784
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
push offset _Lt_0116
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
push offset _Lt_0788
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
push offset _Lt_0116
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
.Lt_077D:
.Lt_077C:
.Lt_077B:
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
.Lt_0796:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_07B5
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
je .Lt_0799
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
push offset _Lt_00C0
push 1967
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07B7
jmp eax
.Lt_07B7:
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
push offset _Lt_079B
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
push offset _Lt_00C0
push 1969
push 4
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07B8
jmp eax
.Lt_07B8:
mov eax, dword ptr [ebp-28]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C0
push 1969
push 4
push dword ptr [ebp-32]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07B9
jmp eax
.Lt_07B9:
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
push offset _Lt_00C0
push 1969
push 65536
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07BA
jmp eax
.Lt_07BA:
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
push offset _Lt_07A0
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
push offset _Lt_05BF
push -1
push 5
push -1
movsx ebx, word ptr [_EXPGAIN_SI]
push ebx
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_0116
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
push offset _Lt_07A5
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
push offset _Lt_05BF
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
push offset _Lt_00C0
push 1973
push 65536
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07BB
jmp eax
.Lt_07BB:
mov eax, dword ptr [ebp-100]
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0116
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
push offset _Lt_07AB
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
push offset _Lt_0116
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
push offset _Lt_07AF
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
push offset _Lt_00C0
push 1977
push 65536
push dword ptr [ebp-188]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_07BC
jmp eax
.Lt_07BC:
mov eax, dword ptr [ebp-188]
imul eax, 136
push dword ptr [_G_DFA+eax+20]
push dword ptr [_G_DFA+eax+16]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0116
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
.Lt_0799:
.Lt_0798:
.Lt_0797:
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
.Lt_07BF:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-72], eax
push offset _Lt_082F
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
fadd qword ptr [_Lt_0831]
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
jge .Lt_07C2
mov word ptr [ebp-4], 0
.Lt_07C2:
movsx eax, word ptr [ebp-4]
cmp eax, 20
jle .Lt_07C4
mov word ptr [ebp-4], 20
.Lt_07C4:
movsx eax, word ptr [ebp-8]
test eax, eax
jge .Lt_07C6
mov word ptr [ebp-8], 0
.Lt_07C6:
movsx eax, word ptr [ebp-8]
cmp eax, 21
jle .Lt_07C8
mov word ptr [ebp-8], 21
.Lt_07C8:
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
fadd qword ptr [_Lt_0831]
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
jge .Lt_07CA
mov word ptr [ebp-4], 0
.Lt_07CA:
movsx eax, word ptr [ebp-4]
cmp eax, 20
jle .Lt_07CC
mov word ptr [ebp-4], 20
.Lt_07CC:
movsx eax, word ptr [ebp-8]
test eax, eax
jge .Lt_07CE
mov word ptr [ebp-8], 0
.Lt_07CE:
movsx eax, word ptr [ebp-8]
cmp eax, 21
jle .Lt_07D0
mov word ptr [ebp-8], 21
.Lt_07D0:
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
jge .Lt_07D2
mov word ptr [_DX1_SI], 1
.Lt_07D2:
.Lt_07D1:
movsx eax, word ptr [_DY1_SI]
cmp eax, 1
jge .Lt_07D4
mov word ptr [_DY1_SI], 1
.Lt_07D4:
.Lt_07D3:
movsx eax, word ptr [_DX2_SI]
movsx ebx, word ptr [_AA_SI]
cmp eax, ebx
jle .Lt_07D6
mov bx, word ptr [_AA_SI]
mov word ptr [_DX2_SI], bx
.Lt_07D6:
.Lt_07D5:
movsx ebx, word ptr [_DY2_SI]
movsx eax, word ptr [_DD_SI]
cmp ebx, eax
jle .Lt_07D8
mov ax, word ptr [_DD_SI]
mov word ptr [_DY2_SI], ax
.Lt_07D8:
.Lt_07D7:
mov ax, word ptr [_DX1_SI]
mov word ptr [_TTX], ax
mov ax, word ptr [_DX2_SI]
mov word ptr [ebp-80], ax
jmp .Lt_07DA
.Lt_07DD:
mov ax, word ptr [_DY1_SI]
mov word ptr [_TTY], ax
mov ax, word ptr [_DY2_SI]
mov word ptr [ebp-84], ax
jmp .Lt_07DF
.Lt_07E2:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 4
push offset _Lt_07E6
push -1
push 5
push offset _Lt_0157
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
push offset _Lt_00C0
push 2049
push 65536
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0832
jmp eax
.Lt_0832:
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
push offset _Lt_07E6
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
push offset _Lt_00C0
push 2050
push 65536
push dword ptr [ebp-148]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0833
jmp eax
.Lt_0833:
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
push offset _Lt_00C0
push 2050
push 65536
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0834
jmp eax
.Lt_0834:
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
push offset _Lt_00C0
push 2059
push 65536
push dword ptr [ebp-188]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0835
jmp eax
.Lt_0835:
mov eax, dword ptr [ebp-188]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0321]
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
jmp .Lt_07F3
.Lt_07F6:
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
push offset _Lt_00C0
push 2060
push 65536
push dword ptr [ebp-196]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0836
jmp eax
.Lt_0836:
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
push offset _Lt_0198
push -1
lea eax, [ebp-208]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_07FA
.Lt_07FB:
mov word ptr [ebp-68], 1
jmp .Lt_07F8
.Lt_07FA:
push 5
push offset _Lt_019B
push -1
lea eax, [ebp-208]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_07FC
.Lt_07FD:
mov word ptr [ebp-68], 1
jmp .Lt_07F8
.Lt_07FC:
push 5
push offset _Lt_019E
push -1
lea eax, [ebp-208]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_07FE
.Lt_07FF:
mov word ptr [ebp-68], 1
.Lt_07FE:
.Lt_07F8:
lea eax, [ebp-208]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [ebp-68]
test eax, eax
jle .Lt_0801
push offset _SPRITEPATH_STR
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push -1
push 8
push offset _Lt_0617
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
push offset _Lt_00C0
push 2069
push 65536
push dword ptr [ebp-204]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0837
jmp eax
.Lt_0837:
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
.Lt_0801:
.Lt_0800:
.Lt_07F4:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_07F3:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-192]
cmp eax, ebx
jle .Lt_07F6
.Lt_07F5:
push 5
push offset _Lt_0266
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0808
push offset _SPRITEPATH_STR
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 12
push offset _Lt_080B
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
.Lt_0808:
.Lt_0807:
.Lt_07E0:
movsx eax, word ptr [_TTY]
inc eax
mov word ptr [_TTY], ax
.Lt_07DF:
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [ebp-84]
cmp eax, ebx
jle .Lt_07E2
.Lt_07E1:
.Lt_07DB:
movsx ebx, word ptr [_TTX]
inc ebx
mov word ptr [_TTX], bx
.Lt_07DA:
movsx ebx, word ptr [_TTX]
movsx eax, word ptr [ebp-80]
cmp ebx, eax
jle .Lt_07DD
.Lt_07DC:
mov ax, word ptr [_DX1_SI]
mov word ptr [_TTX], ax
mov ax, word ptr [_DX2_SI]
mov word ptr [ebp-80], ax
jmp .Lt_080E
.Lt_0811:
mov ax, word ptr [_DY1_SI]
mov word ptr [_TTY], ax
mov ax, word ptr [_DY2_SI]
mov word ptr [ebp-84], ax
jmp .Lt_0813
.Lt_0816:
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
push offset _Lt_05FF
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_0817
push -1
push offset _TEMPACTION_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0819
movsx eax, word ptr [_TEMPDIS_SI]
test eax, eax
jle .Lt_081B
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
push offset _Lt_00C0
push 2090
push 4
push dword ptr [ebp-88]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0838
jmp eax
.Lt_0838:
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
push offset _Lt_00C0
push 2091
push 4
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0839
jmp eax
.Lt_0839:
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
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPY2_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPX2_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPY1_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPX1_SF]
fadd dword ptr [_Lt_01DD]
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
fdiv qword ptr [_Lt_041F]
fistp word ptr [ebp-100]
movsx ebx, word ptr [ebp-100]
test ebx, ebx
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-104], ebx
jmp .Lt_0821
.Lt_0824:
movsx ebx, word ptr [_TTY]
movsx ecx, word ptr [_TY_SI]
sub ebx, ecx
movsx ecx, word ptr [_TEMPD_SI]
mov dword ptr [ebp-108], ecx
push offset _Lt_00C0
push 2094
push 4
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_083B
jmp eax
.Lt_083B:
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
push offset _Lt_00C0
push 2095
push 4
push dword ptr [ebp-112]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_083C
jmp eax
.Lt_083C:
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
jg .Lt_0828
fild word ptr [_T_SF]
fstp dword ptr [_TT_SF]
jmp .Lt_0827
.Lt_0828:
movsx ebx, word ptr [_T_SF]
movsx ecx, word ptr [_TEMPDIS_SI]
dec ecx
cmp ebx, ecx
jge .Lt_082A
push dword ptr [_Lt_083D]
pop dword ptr [_TT_SF]
jmp .Lt_0829
.Lt_082A:
movsx ecx, word ptr [_T_SF]
movsx ebx, word ptr [_TEMPDIS_SI]
sub ecx, ebx
inc ecx
push ecx
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TT_SF]
.Lt_0829:
.Lt_0827:
fld dword ptr [_TT_SF]
fcomp dword ptr [_Lt_01D5]
fnstsw ax
test ah, 0b00000001
jnz .Lt_082C
push 4278190080
push 4290822336
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPY_SF]
fsub dword ptr [_TT_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_TT_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_TT_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
fld dword ptr [_Lt_083A]
fmul dword ptr [_TEMPX_SF]
fsub dword ptr [_TT_SF]
fadd dword ptr [_Lt_01DD]
sub esp, 4
fistp dword ptr [esp]
pop ecx
push ecx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
.Lt_082C:
.Lt_082B:
.Lt_0822:
movsx ecx, word ptr [_T_SF]
movsx ebx, word ptr [ebp-100]
add ecx, ebx
mov word ptr [_T_SF], cx
.Lt_0821:
cmp dword ptr [ebp-104], 0
jne .Lt_082D
movsx ecx, word ptr [_T_SF]
movsx ebx, word ptr [ebp-96]
cmp ecx, ebx
jge .Lt_0824
jmp .Lt_0823
.Lt_082D:
movsx ebx, word ptr [_T_SF]
movsx ecx, word ptr [ebp-96]
cmp ebx, ecx
jle .Lt_0824
.Lt_0823:
.Lt_081B:
.Lt_081A:
.Lt_0819:
.Lt_0818:
.Lt_0814:
movsx ecx, word ptr [_TTY]
inc ecx
mov word ptr [_TTY], cx
.Lt_0813:
movsx ecx, word ptr [_TTY]
movsx ebx, word ptr [ebp-84]
cmp ecx, ebx
jle .Lt_0816
.Lt_0815:
.Lt_080F:
movsx ebx, word ptr [_TTX]
inc ebx
mov word ptr [_TTX], bx
.Lt_080E:
movsx ebx, word ptr [_TTX]
movsx ecx, word ptr [ebp-80]
cmp ebx, ecx
jle .Lt_0811
.Lt_0810:
.Lt_07C0:
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
.Lt_0841:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0846
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
push offset _Lt_0843
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
.Lt_0842:
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
.Lt_0848:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_084B
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
.Lt_0849:
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
.Lt_084D:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0850
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
push dword ptr [_Lt_01DD]
pop dword ptr [_FRAMEY1_SF]
push dword ptr [_Lt_01DF]
pop dword ptr [_FRAMEY2_SF]
mov word ptr [_FRAMEC1_SI], 4
mov word ptr [_FRAMEC2_SI], 12
call _LN_FRAMEPUT@0
.Lt_084E:
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
.Lt_0852:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0855
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
push dword ptr [_Lt_0857]
pop dword ptr [_FRAMEY1_SF]
push dword ptr [_Lt_0858]
pop dword ptr [_FRAMEY2_SF]
mov word ptr [_FRAMEC1_SI], 4
mov word ptr [_FRAMEC2_SI], 12
call _LN_FRAMEPUT@0
.Lt_0853:
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
.Lt_0859:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-256], eax
push offset _Lt_087D
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-260], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 2157
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_087F
jmp eax
.Lt_087F:
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
push offset _Lt_085C
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
push offset _Lt_00C0
push 2159
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0880
jmp eax
.Lt_0880:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_Lt_0881]
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
push offset _Lt_05BF
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
push offset _Lt_00C0
push 2160
push 65536
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0882
jmp eax
.Lt_0882:
mov eax, dword ptr [ebp-36]
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push 6
push offset _Lt_0860
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
push offset _Lt_05BC
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
push offset _Lt_0866
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
push offset _Lt_00C0
push 2163
push 65536
push dword ptr [ebp-100]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0883
jmp eax
.Lt_0883:
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
fadd qword ptr [_Lt_0884]
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
push offset _Lt_086A
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
push offset _Lt_00C0
push 2165
push 65536
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0885
jmp eax
.Lt_0885:
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
fadd qword ptr [_Lt_0884]
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
push offset _Lt_086E
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
push offset _Lt_00C0
push 2167
push 65536
push dword ptr [ebp-156]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0886
jmp eax
.Lt_0886:
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
fadd qword ptr [_Lt_0884]
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
push offset _Lt_086A
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
push offset _Lt_00C0
push 2169
push 65536
push dword ptr [ebp-184]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0887
jmp eax
.Lt_0887:
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
fadd qword ptr [_Lt_0884]
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
push offset _Lt_0875
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
push offset _Lt_00C0
push 2171
push 65536
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0888
jmp eax
.Lt_0888:
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
fadd qword ptr [_Lt_0884]
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
push offset _Lt_086A
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
push offset _Lt_00C0
push 2173
push 65536
push dword ptr [ebp-240]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0889
jmp eax
.Lt_0889:
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
fadd qword ptr [_Lt_0884]
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
.Lt_085A:
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
.Lt_088A:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_088D
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_088B:
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
.Lt_088F:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0892
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_0890:
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
.Lt_0894:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_08B0
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
push 4
push offset _Lt_058A
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
push offset _Lt_00C0
push 2220
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B2
jmp eax
.Lt_08B2:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_058A
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
push offset _Lt_00C0
push 2221
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B3
jmp eax
.Lt_08B3:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 9
push offset _Lt_0898
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
push offset _Lt_00C0
push 2224
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B4
jmp eax
.Lt_08B4:
mov eax, dword ptr [ebp-12]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_01C2]
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
je .Lt_089B
mov word ptr [_MOVE_SI], 1
push 0
push 5
push offset _Lt_089C
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx ebx, word ptr [_HERE_SI]
test ebx, ebx
jle .Lt_089E
mov word ptr [_MOVE_SI], 0
.Lt_089E:
push 0
push 5
push offset _Lt_089C
push -1
push offset _THERE_STR
call _fb_StrAssign@20
call _LN_THERE@0
movsx ebx, word ptr [_THERE_SI]
test ebx, ebx
jle .Lt_08A0
mov word ptr [_MOVE_SI], 0
.Lt_08A0:
push 0
push 5
push offset _Lt_08A1
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
push 0
push 13
push offset _Lt_08A2
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
je .Lt_08A4
mov word ptr [_MOVE_SI], 0
.Lt_08A4:
movsx eax, word ptr [_MOVE_SI]
cmp eax, 1
jne .Lt_08A6
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
je .Lt_08A8
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_08AA
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C0
push 2242
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B5
jmp eax
.Lt_08B5:
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
push offset _Lt_00C0
push 2243
push 4
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B6
jmp eax
.Lt_08B6:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_DY_SI], bx
.Lt_08AA:
.Lt_08A9:
.Lt_08A8:
.Lt_08A7:
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx eax, word ptr [_AA_SI]
imul ecx, eax
add ebx, ecx
mov dword ptr [ebp-28], ebx
push offset _Lt_00C0
push 2246
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B7
jmp eax
.Lt_08B7:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_0831]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C0
push 2246
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08B8
jmp eax
.Lt_08B8:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_08A6:
.Lt_08A5:
.Lt_089B:
.Lt_089A:
.Lt_0895:
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
.Lt_08C0:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_08D2
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
push 4
push offset _Lt_058A
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
push offset _Lt_00C0
push 2254
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D4
jmp eax
.Lt_08D4:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_058A
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
push offset _Lt_00C0
push 2255
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D5
jmp eax
.Lt_08D5:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 9
push offset _Lt_0898
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
push offset _Lt_00C0
push 2258
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D6
jmp eax
.Lt_08D6:
mov eax, dword ptr [ebp-12]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_031F]
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
je .Lt_08C6
mov word ptr [_MOVE_SI], 1
movsx ebx, word ptr [_MOVE_SI]
cmp ebx, 1
jne .Lt_08C8
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
je .Lt_08CA
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_08CC
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-32], ebx
push offset _Lt_00C0
push 2265
push 4
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D7
jmp eax
.Lt_08D7:
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
push offset _Lt_00C0
push 2266
push 4
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D8
jmp eax
.Lt_08D8:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_DY_SI], bx
.Lt_08CC:
.Lt_08CB:
.Lt_08CA:
.Lt_08C9:
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx eax, word ptr [_AA_SI]
imul ecx, eax
add ebx, ecx
mov dword ptr [ebp-28], ebx
push offset _Lt_00C0
push 2269
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08D9
jmp eax
.Lt_08D9:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_0328]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C0
push 2269
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08DA
jmp eax
.Lt_08DA:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_08C8:
.Lt_08C7:
.Lt_08C6:
.Lt_08C5:
.Lt_08C1:
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
.Lt_08E0:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_08F2
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 2277
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F4
jmp eax
.Lt_08F4:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_01C2]
fnstsw ax
test ah, 0b00000001
jnz .Lt_08E4
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
je .Lt_08E8
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_08EA
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C0
push 2283
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F5
jmp eax
.Lt_08F5:
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
push offset _Lt_00C0
push 2284
push 4
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F6
jmp eax
.Lt_08F6:
mov eax, dword ptr [ebp-36]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_DY_SI], bx
.Lt_08EA:
.Lt_08E9:
.Lt_08E8:
.Lt_08E7:
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 2287
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F7
jmp eax
.Lt_08F7:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_058A
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
push offset _Lt_00C0
push 2288
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F8
jmp eax
.Lt_08F8:
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
push offset _Lt_00C0
push 2289
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08F9
jmp eax
.Lt_08F9:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_0831]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C0
push 2289
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_08FA
jmp eax
.Lt_08FA:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_08E6:
.Lt_08E5:
jmp .Lt_08E3
.Lt_08E4:
call _LN_GONE@0
.Lt_08E3:
.Lt_08E1:
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
.Lt_08FE:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-20], eax
push offset _Lt_090B
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
je .Lt_0901
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_0903
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-28], eax
push offset _Lt_00C0
push 2303
push 4
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_090D
jmp eax
.Lt_090D:
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
push offset _Lt_00C0
push 2304
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_090E
jmp eax
.Lt_090E:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_DY_SI], bx
.Lt_0903:
.Lt_0902:
.Lt_0901:
.Lt_0900:
push 4
push offset _Lt_058A
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
push offset _Lt_00C0
push 2307
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_090F
jmp eax
.Lt_090F:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_058A
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
push offset _Lt_00C0
push 2308
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0910
jmp eax
.Lt_0910:
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
push offset _Lt_00C0
push 2309
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0911
jmp eax
.Lt_0911:
mov eax, dword ptr [ebp-16]
imul eax, 136
fld qword ptr [_Lt_0831]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-12], eax
push offset _Lt_00C0
push 2309
push 65536
push dword ptr [ebp-12]
fstp qword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0912
jmp eax
.Lt_0912:
mov eax, dword ptr [ebp-12]
imul eax, 136
push dword ptr [ebp-32]
push dword ptr [ebp-28]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_08FF:
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
.Lt_0916:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0922
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 2315
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0924
jmp eax
.Lt_0924:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0468]
fnstsw ax
test ah, 0b00000001
jnz .Lt_091A
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 2316
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0925
jmp eax
.Lt_0925:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_027D
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
push offset _Lt_00C0
push 2317
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0926
jmp eax
.Lt_0926:
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
push offset _Lt_00C0
push 2318
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0927
jmp eax
.Lt_0927:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_0928]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C0
push 2318
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0929
jmp eax
.Lt_0929:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 6
push offset _Lt_091F
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_0920
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
push offset _Lt_027D
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
push offset _Lt_058A
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
push dword ptr [_Lt_092A]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01C9]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01E7]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_092A]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01E7]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_091A:
.Lt_0919:
.Lt_0917:
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
.Lt_092C:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0937
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 2342
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0939
jmp eax
.Lt_0939:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_041F]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0930
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 2343
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_093A
jmp eax
.Lt_093A:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_014B
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
push offset _Lt_00C0
push 2344
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_093B
jmp eax
.Lt_093B:
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
push offset _Lt_00C0
push 2345
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_093C
jmp eax
.Lt_093C:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_04B3]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C0
push 2345
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_093D
jmp eax
.Lt_093D:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 12
push offset _Lt_0935
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_058A
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
push offset _Lt_014B
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
push offset _Lt_058A
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
push dword ptr [_Lt_092A]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01C9]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01E7]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_092A]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01E7]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0930:
.Lt_092F:
.Lt_092D:
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
.Lt_093F:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0947
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 2369
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0949
jmp eax
.Lt_0949:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_094A]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0943
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 2370
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_094B
jmp eax
.Lt_094B:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_Lt_094C]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C0
push 2370
push 65536
push dword ptr [ebp-16]
fstp qword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_094D
jmp eax
.Lt_094D:
mov eax, dword ptr [ebp-16]
imul eax, 136
push dword ptr [ebp-28]
push dword ptr [ebp-24]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 4
push offset _Lt_0170
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_015F
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
push offset _Lt_016E
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
push offset _Lt_058A
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
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01CF]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D0]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0943:
.Lt_0942:
.Lt_0940:
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
.Lt_094F:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0957
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 2394
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0959
jmp eax
.Lt_0959:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_095A]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0953
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 2395
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_095B
jmp eax
.Lt_095B:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_Lt_095C]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C0
push 2395
push 65536
push dword ptr [ebp-16]
fstp qword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_095D
jmp eax
.Lt_095D:
mov eax, dword ptr [ebp-16]
imul eax, 136
push dword ptr [ebp-28]
push dword ptr [ebp-24]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_0161
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0162
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
push offset _Lt_015F
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
push offset _Lt_058A
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
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01C9]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01C9]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0953:
.Lt_0952:
.Lt_0950:
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
.Lt_095F:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0963
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_0961
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0282
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0965]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01C9]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01C9]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01CC]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01CD]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0960:
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
.Lt_0966:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_096F
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 2441
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0971
jmp eax
.Lt_0971:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0972]
fnstsw ax
test ah, 0b00000001
jnz .Lt_096A
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 2442
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0973
jmp eax
.Lt_0973:
mov eax, dword ptr [ebp-20]
imul eax, 136
fld qword ptr [_Lt_0974]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-16], eax
push offset _Lt_00C0
push 2442
push 65536
push dword ptr [ebp-16]
fstp qword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0975
jmp eax
.Lt_0975:
mov eax, dword ptr [ebp-16]
imul eax, 136
push dword ptr [ebp-28]
push dword ptr [ebp-24]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_0181
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_096D
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
push offset _Lt_017F
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
push offset _Lt_058A
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
push dword ptr [_Lt_0976]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01CB]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01D9]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01CE]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D6]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01CA]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01DA]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01C1]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_096A:
.Lt_0969:
.Lt_0967:
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
.Lt_0978:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_097B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_PRFLBLNK@0
call _LN_PRFLSET@0
.Lt_0979:
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
.Lt_097D:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0980
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_PRFLBLNK@0
call _LN_PRFLMAKE@0
.Lt_097E:
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
.Lt_0982:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0987
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
jne .Lt_0985
call _LN_LEVELUP@0
.Lt_0985:
.Lt_0984:
.Lt_0983:
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
.Lt_0989:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_0992
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 2488
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0994
jmp eax
.Lt_0994:
mov eax, dword ptr [ebp-8]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-12], ebx
push offset _Lt_00C0
push 2488
push 65536
push dword ptr [ebp-12]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0995
jmp eax
.Lt_0995:
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
push offset _Lt_00C0
push 2488
push 65536
push dword ptr [ebp-4]
fstp qword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0996
jmp eax
.Lt_0996:
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
push offset _Lt_00C0
push 2489
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0997
jmp eax
.Lt_0997:
mov eax, dword ptr [ebp-20]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-24], ebx
push offset _Lt_00C0
push 2489
push 65536
push dword ptr [ebp-24]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0998
jmp eax
.Lt_0998:
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
push offset _Lt_00C0
push 2489
push 65536
push dword ptr [ebp-16]
fstp qword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0999
jmp eax
.Lt_0999:
mov eax, dword ptr [ebp-16]
imul eax, 136
push dword ptr [ebp-48]
push dword ptr [ebp-44]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
.Lt_098A:
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
.Lt_099C:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_09B1
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-4], eax
push offset _Lt_00C0
push 2494
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B3
jmp eax
.Lt_09B3:
mov eax, dword ptr [ebp-4]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-8], ebx
push offset _Lt_00C0
push 2494
push 65536
push dword ptr [ebp-8]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B4
jmp eax
.Lt_09B4:
mov eax, dword ptr [ebp-8]
imul eax, 136
fld qword ptr [_G_DFA+ebx+8]
fcomp qword ptr [_G_DFA+eax+88]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_09A1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-40], eax
push offset _Lt_00C0
push 2495
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B5
jmp eax
.Lt_09B5:
mov eax, dword ptr [ebp-40]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-36], ebx
push offset _Lt_00C0
push 2495
push 65536
push dword ptr [ebp-36]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B6
jmp eax
.Lt_09B6:
mov eax, dword ptr [ebp-36]
imul eax, 136
push dword ptr [_G_DFA+ebx+88]
push dword ptr [_G_DFA+ebx+92]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
.Lt_09A1:
.Lt_09A0:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-12], ebx
push offset _Lt_00C0
push 2497
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B7
jmp eax
.Lt_09B7:
mov eax, dword ptr [ebp-12]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-16], ebx
push offset _Lt_00C0
push 2497
push 65536
push dword ptr [ebp-16]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B8
jmp eax
.Lt_09B8:
mov eax, dword ptr [ebp-16]
imul eax, 136
fld qword ptr [_G_DFA+ebx+16]
fcomp qword ptr [_G_DFA+eax+96]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_09A7
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-40], eax
push offset _Lt_00C0
push 2498
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09B9
jmp eax
.Lt_09B9:
mov eax, dword ptr [ebp-40]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-36], ebx
push offset _Lt_00C0
push 2498
push 65536
push dword ptr [ebp-36]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BA
jmp eax
.Lt_09BA:
mov eax, dword ptr [ebp-36]
imul eax, 136
push dword ptr [_G_DFA+ebx+96]
push dword ptr [_G_DFA+ebx+100]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_09A7:
.Lt_09A6:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
mov dword ptr [ebp-20], ebx
push offset _Lt_00C0
push 2500
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BB
jmp eax
.Lt_09BB:
mov eax, dword ptr [ebp-20]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-24], ebx
push offset _Lt_00C0
push 2500
push 65536
push dword ptr [ebp-24]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BC
jmp eax
.Lt_09BC:
mov eax, dword ptr [ebp-24]
imul eax, 136
fld qword ptr [_G_DFA+ebx+24]
fcomp qword ptr [_G_DFA+eax+104]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_09AD
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-40], eax
push offset _Lt_00C0
push 2501
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BD
jmp eax
.Lt_09BD:
mov eax, dword ptr [ebp-40]
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
mov dword ptr [ebp-36], ebx
push offset _Lt_00C0
push 2501
push 65536
push dword ptr [ebp-36]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09BE
jmp eax
.Lt_09BE:
mov eax, dword ptr [ebp-36]
imul eax, 136
push dword ptr [_G_DFA+ebx+104]
push dword ptr [_G_DFA+ebx+108]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
.Lt_09AD:
.Lt_09AC:
.Lt_099D:
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
.Lt_09BF:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_09C6
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
jne .Lt_09C2
call _LN_NEWACTION@0
call _LN_PUTACTION@0
.Lt_09C4:
.Lt_09C3:
jmp .Lt_09C1
.Lt_09C2:
call _LN_GETACTION@0
.Lt_09C1:
.Lt_09C0:
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
.Lt_09C8:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_09CD
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_GETACTION@0
push 5
push offset _Lt_0266
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
je .Lt_09CB
push dword ptr [_Lt_01C1]
call _fb_Rnd@4
fmul qword ptr [_Lt_0321]
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
fadd qword ptr [_Lt_01C2]
fistp word ptr [_D_SI]
call _LN_RANDOMACTION@0
mov word ptr [_DIS_SI], 0
.Lt_09CB:
.Lt_09CA:
.Lt_09C9:
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
.Lt_09D1:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_09D8
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
push offset _Lt_00C0
push 2531
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09DA
jmp eax
.Lt_09DA:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0321]
fistp word ptr [_R_SI]
push dword ptr [_Lt_01C1]
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
jne .Lt_09D5
push 0
push 5
push offset _Lt_0157
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
jmp .Lt_09D4
.Lt_09D5:
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
push offset _Lt_00C0
push 2536
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09DB
jmp eax
.Lt_09DB:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
.Lt_09D4:
.Lt_09D2:
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
.Lt_09DC:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_09E2
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
push offset _Lt_00C0
push 2542
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09E4
jmp eax
.Lt_09E4:
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
push offset _Lt_00C0
push 2543
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09E5
jmp eax
.Lt_09E5:
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
push offset _Lt_00C0
push 2544
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09E6
jmp eax
.Lt_09E6:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_DIS_SI], ax
.Lt_09DD:
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
.Lt_09E7:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_09ED
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
push offset _Lt_00C0
push 2549
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09EF
jmp eax
.Lt_09EF:
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
push offset _Lt_00C0
push 2550
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09F0
jmp eax
.Lt_09F0:
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
push offset _Lt_00C0
push 2551
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09F1
jmp eax
.Lt_09F1:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
.Lt_09E8:
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
.Lt_09F2:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_09F8
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
push offset _Lt_00C0
push 2556
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09FA
jmp eax
.Lt_09FA:
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
push offset _Lt_00C0
push 2557
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09FB
jmp eax
.Lt_09FB:
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
push offset _Lt_00C0
push 2558
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_09FC
jmp eax
.Lt_09FC:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_TEMPDIS_SI], ax
.Lt_09F3:
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
.Lt_09FD:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0A03
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
push offset _Lt_00C0
push 2563
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A05
jmp eax
.Lt_0A05:
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
push offset _Lt_00C0
push 2564
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A06
jmp eax
.Lt_0A06:
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
push offset _Lt_00C0
push 2565
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A07
jmp eax
.Lt_0A07:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
.Lt_09FE:
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
.Lt_0A08:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-20], eax
push offset _Lt_0A11
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-24], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C0
push 2570
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A13
jmp eax
.Lt_0A13:
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
push offset _Lt_00C0
push 2570
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A14
jmp eax
.Lt_0A14:
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
push offset _Lt_00C0
push 2570
push 4
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A15
jmp eax
.Lt_0A15:
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
push offset _Lt_00C0
push 2570
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A16
jmp eax
.Lt_0A16:
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
je .Lt_0A0F
mov word ptr [_INBOUNDS_SI], 1
jmp .Lt_0A0E
.Lt_0A0F:
mov word ptr [_INBOUNDS_SI], 0
.Lt_0A0E:
.Lt_0A09:
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
.Lt_0A1B:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0A26
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
push offset _Lt_00C0
push 2580
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A28
jmp eax
.Lt_0A28:
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
fdiv qword ptr [_Lt_0321]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-16], ax
jmp .Lt_0A1F
.Lt_0A22:
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
jne .Lt_0A24
movsx eax, word ptr [_HAVEIT_SI]
inc eax
mov word ptr [_HAVEIT_SI], ax
.Lt_0A24:
.Lt_0A23:
.Lt_0A20:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_0A1F:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-16]
cmp eax, ebx
jle .Lt_0A22
.Lt_0A21:
.Lt_0A1C:
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
.Lt_0A29:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0A36
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
mov word ptr [_HASIT_SI], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C0
push 2593
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A38
jmp eax
.Lt_0A38:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 2593
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A39
jmp eax
.Lt_0A39:
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
push offset _Lt_00C0
push 2593
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A3A
jmp eax
.Lt_0A3A:
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
fdiv qword ptr [_Lt_0321]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-24], ax
jmp .Lt_0A2F
.Lt_0A32:
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
jne .Lt_0A34
movsx eax, word ptr [_HASIT_SI]
inc eax
mov word ptr [_HASIT_SI], ax
.Lt_0A34:
.Lt_0A33:
.Lt_0A30:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_0A2F:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-24]
cmp eax, ebx
jle .Lt_0A32
.Lt_0A31:
.Lt_0A2A:
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
.Lt_0A3B:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0A48
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
push offset _Lt_00C0
push 2605
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A4A
jmp eax
.Lt_0A4A:
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
fdiv qword ptr [_Lt_0321]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-20], ax
jmp .Lt_0A3F
.Lt_0A42:
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
jne .Lt_0A44
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
.Lt_0A44:
.Lt_0A43:
.Lt_0A40:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_0A3F:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-20]
cmp eax, ebx
jle .Lt_0A42
.Lt_0A41:
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
push offset _Lt_00C0
push 2614
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A4B
jmp eax
.Lt_0A4B:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
.Lt_0A3C:
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
.Lt_0A4C:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_0A5D
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C0
push 2619
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A5F
jmp eax
.Lt_0A5F:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 2619
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A60
jmp eax
.Lt_0A60:
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
push offset _Lt_00C0
push 2619
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A61
jmp eax
.Lt_0A61:
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
fdiv qword ptr [_Lt_0321]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-36], ax
jmp .Lt_0A52
.Lt_0A55:
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
jne .Lt_0A57
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
.Lt_0A57:
.Lt_0A56:
.Lt_0A53:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_0A52:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-36]
cmp eax, ebx
jle .Lt_0A55
.Lt_0A54:
push 0
push -1
push offset _T_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-16], eax
push offset _Lt_00C0
push 2628
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A62
jmp eax
.Lt_0A62:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 2628
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A63
jmp eax
.Lt_0A63:
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
push offset _Lt_00C0
push 2628
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A64
jmp eax
.Lt_0A64:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
.Lt_0A4D:
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
.Lt_0A65:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0A6A
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
push offset _Lt_00C0
push 2633
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A6C
jmp eax
.Lt_0A6C:
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
push offset _Lt_00C0
push 2634
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A6D
jmp eax
.Lt_0A6D:
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
push offset _Lt_00C0
push 2634
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
call _fb_StrConcatAssign@20
.Lt_0A66:
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
.Lt_0A6F:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_0A78
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-32], eax
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C0
push 2639
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7A
jmp eax
.Lt_0A7A:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 2639
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7B
jmp eax
.Lt_0A7B:
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
push offset _Lt_00C0
push 2639
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7C
jmp eax
.Lt_0A7C:
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
push offset _Lt_00C0
push 2640
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7D
jmp eax
.Lt_0A7D:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 2640
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7E
jmp eax
.Lt_0A7E:
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
push offset _Lt_00C0
push 2640
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A7F
jmp eax
.Lt_0A7F:
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
push offset _Lt_00C0
push 2640
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A80
jmp eax
.Lt_0A80:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 2640
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A81
jmp eax
.Lt_0A81:
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
push offset _Lt_00C0
push 2640
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A82
jmp eax
.Lt_0A82:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrConcatAssign@20
.Lt_0A70:
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
.Lt_0A83:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0A91
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C0
push 2645
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A93
jmp eax
.Lt_0A93:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 2645
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A94
jmp eax
.Lt_0A94:
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
push offset _Lt_00C0
push 2645
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A95
jmp eax
.Lt_0A95:
mov eax, dword ptr [ebp-12]
imul eax, 136
fld qword ptr [_G_DFA+eax+48]
fistp word ptr [_GETIT_SI]
movsx eax, word ptr [_GETIT_SI]
test eax, eax
jle .Lt_0A89
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
push offset _Lt_0A8A
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
push offset _Lt_00C0
push 2649
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A96
jmp eax
.Lt_0A96:
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
push offset _Lt_00C0
push 2649
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A97
jmp eax
.Lt_0A97:
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
push offset _Lt_00C0
push 2651
push 4
push dword ptr [ebp-32]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A98
jmp eax
.Lt_0A98:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-36], eax
push offset _Lt_00C0
push 2651
push 4
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A99
jmp eax
.Lt_0A99:
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
push offset _Lt_00C0
push 2651
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0A9A
jmp eax
.Lt_0A9A:
mov eax, dword ptr [ebp-40]
imul eax, 136
push dword ptr [_Lt_0297]
push dword ptr [_Lt_0297+4]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
.Lt_0A89:
.Lt_0A88:
.Lt_0A84:
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
.Lt_0A9C:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0A9F
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_0178
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0A9D:
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
.Lt_0AA1:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AA4
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_0190
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0AA2:
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
.Lt_0AA6:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AA9
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_05FF
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0AA7:
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
.Lt_0AAB:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AAE
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_0604
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0AAC:
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
.Lt_0AB0:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AB3
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_01B1
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0AB1:
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
.Lt_0AB5:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AB8
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 5
push offset _Lt_01B2
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0AB6:
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
.Lt_0ABA:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AC1
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
jne .Lt_0ABD
jmp .Lt_0ABB
.Lt_0ABD:
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jle .Lt_0ABF
jmp .Lt_0ABB
.Lt_0ABF:
call _LN_GETIT@0
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
.Lt_0ABB:
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
.Lt_0AC3:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0ACE
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
fdiv qword ptr [_Lt_0321]
fistp word ptr [ebp-12]
jmp .Lt_0AC6
.Lt_0AC9:
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
push offset _Lt_00C0
push 2703
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0AD0
jmp eax
.Lt_0AD0:
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
jne .Lt_0ACC
movsx eax, word ptr [_AM_SI]
inc eax
mov word ptr [_AM_SI], ax
.Lt_0ACC:
.Lt_0ACB:
.Lt_0AC7:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0AC6:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-12]
cmp eax, ebx
jle .Lt_0AC9
.Lt_0AC8:
.Lt_0AC4:
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
.Lt_0AD1:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0ADE
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
fdiv qword ptr [_Lt_0321]
fistp word ptr [ebp-12]
jmp .Lt_0AD4
.Lt_0AD7:
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-16], ebx
push offset _Lt_00C0
push 2713
push 4
push dword ptr [ebp-16]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0AE0
jmp eax
.Lt_0AE0:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 2713
push 4
push dword ptr [ebp-20]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0AE1
jmp eax
.Lt_0AE1:
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
push offset _Lt_00C0
push 2713
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0AE2
jmp eax
.Lt_0AE2:
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
jne .Lt_0ADC
movsx eax, word ptr [_ARE_SI]
inc eax
mov word ptr [_ARE_SI], ax
.Lt_0ADC:
.Lt_0ADB:
.Lt_0AD5:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0AD4:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-12]
cmp eax, ebx
jle .Lt_0AD7
.Lt_0AD6:
.Lt_0AD2:
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
.Lt_0AE3:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AEE
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
fdiv qword ptr [_Lt_0321]
fistp word ptr [ebp-12]
jmp .Lt_0AE6
.Lt_0AE9:
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
push offset _Lt_00C0
push 2723
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0AF0
jmp eax
.Lt_0AF0:
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
jne .Lt_0AEC
movsx eax, word ptr [_HERE_SI]
inc eax
mov word ptr [_HERE_SI], ax
.Lt_0AEC:
.Lt_0AEB:
.Lt_0AE7:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0AE6:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-12]
cmp eax, ebx
jle .Lt_0AE9
.Lt_0AE8:
.Lt_0AE4:
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
.Lt_0AF1:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0AFE
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
fdiv qword ptr [_Lt_0321]
fistp word ptr [ebp-12]
jmp .Lt_0AF4
.Lt_0AF7:
push -1
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-16], ebx
push offset _Lt_00C0
push 2733
push 4
push dword ptr [ebp-16]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B00
jmp eax
.Lt_0B00:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 2733
push 4
push dword ptr [ebp-20]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B01
jmp eax
.Lt_0B01:
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
push offset _Lt_00C0
push 2733
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B02
jmp eax
.Lt_0B02:
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
jne .Lt_0AFC
movsx eax, word ptr [_THERE_SI]
inc eax
mov word ptr [_THERE_SI], ax
.Lt_0AFC:
.Lt_0AFB:
.Lt_0AF5:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0AF4:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-12]
cmp eax, ebx
jle .Lt_0AF7
.Lt_0AF6:
.Lt_0AF2:
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
.Lt_0B03:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B08
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
jne .Lt_0B06
call _LN_ARE@0
jmp .Lt_0B05
.Lt_0B06:
mov word ptr [_ARE_SI], -1
.Lt_0B05:
mov ax, word ptr [_ARE_SI]
mov word ptr [_BLANKCHECK_SI], ax
.Lt_0B04:
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
.Lt_0B0A:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0B0F
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
push offset _Lt_0B0C
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
.Lt_0B0B:
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
.Lt_0B11:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B18
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_0B13:
call _LN_BUTTONWAIT@0
.Lt_0B15:
push 5
push offset _Lt_0B16
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
jne .Lt_0B13
.Lt_0B14:
push 0
push 2
push offset _Lt_02C3
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0B12:
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
.Lt_0B1E:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B21
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0B1F:
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
.Lt_0B23:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B29
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 3
push offset _Lt_0B25
push -1
push offset _C_STR
call _fb_StrAssign@20
mov word ptr [_LB_SI], 0
.Lt_0B26:
push 3
push offset _Lt_0B25
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
je .Lt_0B27
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_0B26
.Lt_0B27:
.Lt_0B24:
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
.Lt_0B2D:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B30
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 4
push 4278190080
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B32]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B32]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 2
push 4278190080
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_083D]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_083D]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_01D5]
push dword ptr [_Lt_01D5]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B33]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
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
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_01CE]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_01D5]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_01D5]
push dword ptr [_Lt_01D5]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B34]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B33]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4286808963
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_01D5]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_01CE]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_01D5]
push dword ptr [_Lt_01D5]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B35]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B35]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4290822336
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_01C1]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_01C1]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_01D5]
push dword ptr [_Lt_01D5]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4286808963
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B35]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B35]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_01C1]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_01C1]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0B36]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0B35]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0B37]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_083A]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_01C1]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
.Lt_0B2E:
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
.Lt_0B38:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_0B3B
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
.Lt_0B39:
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
.Lt_0B3D:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B40
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0B3E:
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
.Lt_0B42:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B45
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _fb_GetY@0
mov word ptr [_CRSRY_SI], ax
push 0
call _fb_Pos@4
mov word ptr [_CRSRX_SI], ax
.Lt_0B43:
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
.Lt_0B47:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B4A
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
.Lt_0B48:
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
.Lt_0B4C:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0B4F
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
push offset _Lt_0157
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
push offset _Lt_0157
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
push offset _Lt_015A
push -1
push offset _PRFLGPICACTN_STR
call _fb_StrAssign@20
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLEXP_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLEVAD_SF]
push dword ptr [_Lt_01D5]
pop dword ptr [_PRFLBLNK_SF]
.Lt_0B4D:
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
.Lt_0B51:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-96], eax
push offset _Lt_0B6B
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
push offset _Lt_00C0
push 2866
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B6D
jmp eax
.Lt_0B6D:
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
push offset _Lt_00C0
push 2867
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B6E
jmp eax
.Lt_0B6E:
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
push offset _Lt_00C0
push 2868
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B6F
jmp eax
.Lt_0B6F:
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
push offset _Lt_00C0
push 2869
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B70
jmp eax
.Lt_0B70:
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
push offset _Lt_00C0
push 2870
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B71
jmp eax
.Lt_0B71:
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
push offset _Lt_00C0
push 2871
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B72
jmp eax
.Lt_0B72:
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
push offset _Lt_00C0
push 2872
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B73
jmp eax
.Lt_0B73:
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
push offset _Lt_00C0
push 2873
push 65536
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B74
jmp eax
.Lt_0B74:
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
push offset _Lt_00C0
push 2874
push 65536
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B75
jmp eax
.Lt_0B75:
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
push offset _Lt_00C0
push 2875
push 65536
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B76
jmp eax
.Lt_0B76:
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
push offset _Lt_00C0
push 2876
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B77
jmp eax
.Lt_0B77:
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
push offset _Lt_00C0
push 2877
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B78
jmp eax
.Lt_0B78:
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
push offset _Lt_00C0
push 2878
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B79
jmp eax
.Lt_0B79:
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
push offset _Lt_00C0
push 2879
push 65536
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7A
jmp eax
.Lt_0B7A:
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
push offset _Lt_00C0
push 2880
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7B
jmp eax
.Lt_0B7B:
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
push offset _Lt_00C0
push 2881
push 65536
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7C
jmp eax
.Lt_0B7C:
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
push offset _Lt_00C0
push 2882
push 65536
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7D
jmp eax
.Lt_0B7D:
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
push offset _Lt_00C0
push 2883
push 65536
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7E
jmp eax
.Lt_0B7E:
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
push offset _Lt_00C0
push 2884
push 65536
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B7F
jmp eax
.Lt_0B7F:
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
push offset _Lt_00C0
push 2885
push 65536
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B80
jmp eax
.Lt_0B80:
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
push offset _Lt_00C0
push 2886
push 65536
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B81
jmp eax
.Lt_0B81:
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
push offset _Lt_00C0
push 2887
push 65536
push dword ptr [ebp-88]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B82
jmp eax
.Lt_0B82:
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
push offset _Lt_00C0
push 2888
push 65536
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0B83
jmp eax
.Lt_0B83:
mov eax, dword ptr [ebp-92]
imul eax, 136
fld dword ptr [_PRFLBLNK_SF]
fstp qword ptr [_G_DFA+eax+128]
.Lt_0B52:
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
.Lt_0B84:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-280], eax
push offset _Lt_0BCC
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-284], eax
push 0
push -1
push offset _PRFLIDTY_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-4], ebx
push offset _Lt_00C0
push 2893
push 4
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BCE
jmp eax
.Lt_0BCE:
mov eax, dword ptr [ebp-4]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 2893
push 4
push dword ptr [ebp-8]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BCF
jmp eax
.Lt_0BCF:
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
push offset _Lt_00C0
push 2893
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD0
jmp eax
.Lt_0BD0:
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
push offset _Lt_00C0
push 2894
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD1
jmp eax
.Lt_0BD1:
mov eax, dword ptr [ebp-16]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-20], eax
push offset _Lt_00C0
push 2894
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD2
jmp eax
.Lt_0BD2:
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
push offset _Lt_00C0
push 2894
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD3
jmp eax
.Lt_0BD3:
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
push offset _Lt_00C0
push 2895
push 4
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD4
jmp eax
.Lt_0BD4:
mov eax, dword ptr [ebp-28]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-32], eax
push offset _Lt_00C0
push 2895
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD5
jmp eax
.Lt_0BD5:
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
push offset _Lt_00C0
push 2895
push 65536
push dword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD6
jmp eax
.Lt_0BD6:
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
push offset _Lt_00C0
push 2896
push 4
push dword ptr [ebp-40]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD7
jmp eax
.Lt_0BD7:
mov eax, dword ptr [ebp-40]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-44], eax
push offset _Lt_00C0
push 2896
push 4
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD8
jmp eax
.Lt_0BD8:
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
push offset _Lt_00C0
push 2896
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BD9
jmp eax
.Lt_0BD9:
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
push offset _Lt_00C0
push 2897
push 4
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDA
jmp eax
.Lt_0BDA:
mov eax, dword ptr [ebp-52]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-56], eax
push offset _Lt_00C0
push 2897
push 4
push dword ptr [ebp-56]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDB
jmp eax
.Lt_0BDB:
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
push offset _Lt_00C0
push 2897
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDC
jmp eax
.Lt_0BDC:
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
push offset _Lt_00C0
push 2898
push 4
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDD
jmp eax
.Lt_0BDD:
mov eax, dword ptr [ebp-64]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-68], eax
push offset _Lt_00C0
push 2898
push 4
push dword ptr [ebp-68]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDE
jmp eax
.Lt_0BDE:
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
push offset _Lt_00C0
push 2898
push 65536
push dword ptr [ebp-72]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BDF
jmp eax
.Lt_0BDF:
mov eax, dword ptr [ebp-72]
imul eax, 108
lea ebx, [_E_STRA+eax+60]
push ebx
call _fb_StrAssign@20
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-76], eax
push offset _Lt_00C0
push 2899
push 4
push dword ptr [ebp-76]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE0
jmp eax
.Lt_0BE0:
mov eax, dword ptr [ebp-76]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-80], eax
push offset _Lt_00C0
push 2899
push 4
push dword ptr [ebp-80]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE1
jmp eax
.Lt_0BE1:
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
push offset _Lt_00C0
push 2899
push 65536
push dword ptr [ebp-84]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE2
jmp eax
.Lt_0BE2:
mov eax, dword ptr [ebp-84]
imul eax, 136
fld dword ptr [_PRFLIDTY_SF]
fstp qword ptr [_G_DFA+eax]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-88], ebx
push offset _Lt_00C0
push 2900
push 4
push dword ptr [ebp-88]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE3
jmp eax
.Lt_0BE3:
mov eax, dword ptr [ebp-88]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-92], eax
push offset _Lt_00C0
push 2900
push 4
push dword ptr [ebp-92]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE4
jmp eax
.Lt_0BE4:
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
push offset _Lt_00C0
push 2900
push 65536
push dword ptr [ebp-96]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE5
jmp eax
.Lt_0BE5:
mov eax, dword ptr [ebp-96]
imul eax, 136
fld dword ptr [_PRFLHP_SF]
fstp qword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-100], ebx
push offset _Lt_00C0
push 2901
push 4
push dword ptr [ebp-100]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE6
jmp eax
.Lt_0BE6:
mov eax, dword ptr [ebp-100]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-104], eax
push offset _Lt_00C0
push 2901
push 4
push dword ptr [ebp-104]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE7
jmp eax
.Lt_0BE7:
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
push offset _Lt_00C0
push 2901
push 65536
push dword ptr [ebp-108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE8
jmp eax
.Lt_0BE8:
mov eax, dword ptr [ebp-108]
imul eax, 136
fld dword ptr [_PRFLSTR_SF]
fstp qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-112], ebx
push offset _Lt_00C0
push 2902
push 4
push dword ptr [ebp-112]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BE9
jmp eax
.Lt_0BE9:
mov eax, dword ptr [ebp-112]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-116], eax
push offset _Lt_00C0
push 2902
push 4
push dword ptr [ebp-116]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BEA
jmp eax
.Lt_0BEA:
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
push offset _Lt_00C0
push 2902
push 65536
push dword ptr [ebp-120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BEB
jmp eax
.Lt_0BEB:
mov eax, dword ptr [ebp-120]
imul eax, 136
fld dword ptr [_PRFLESS_SF]
fstp qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-124], ebx
push offset _Lt_00C0
push 2903
push 4
push dword ptr [ebp-124]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BEC
jmp eax
.Lt_0BEC:
mov eax, dword ptr [ebp-124]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-128], eax
push offset _Lt_00C0
push 2903
push 4
push dword ptr [ebp-128]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BED
jmp eax
.Lt_0BED:
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
push offset _Lt_00C0
push 2903
push 65536
push dword ptr [ebp-132]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BEE
jmp eax
.Lt_0BEE:
mov eax, dword ptr [ebp-132]
imul eax, 136
fld dword ptr [_PRFLSPD_SF]
fstp qword ptr [_G_DFA+eax+32]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-136], ebx
push offset _Lt_00C0
push 2904
push 4
push dword ptr [ebp-136]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BEF
jmp eax
.Lt_0BEF:
mov eax, dword ptr [ebp-136]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-140], eax
push offset _Lt_00C0
push 2904
push 4
push dword ptr [ebp-140]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF0
jmp eax
.Lt_0BF0:
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
push offset _Lt_00C0
push 2904
push 65536
push dword ptr [ebp-144]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF1
jmp eax
.Lt_0BF1:
mov eax, dword ptr [ebp-144]
imul eax, 136
fld dword ptr [_PRFLARMR_SF]
fstp qword ptr [_G_DFA+eax+40]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-148], ebx
push offset _Lt_00C0
push 2905
push 4
push dword ptr [ebp-148]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF2
jmp eax
.Lt_0BF2:
mov eax, dword ptr [ebp-148]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-152], eax
push offset _Lt_00C0
push 2905
push 4
push dword ptr [ebp-152]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF3
jmp eax
.Lt_0BF3:
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
push offset _Lt_00C0
push 2905
push 65536
push dword ptr [ebp-156]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF4
jmp eax
.Lt_0BF4:
mov eax, dword ptr [ebp-156]
imul eax, 136
fld dword ptr [_PRFLEXP_SF]
fstp qword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-160], ebx
push offset _Lt_00C0
push 2906
push 4
push dword ptr [ebp-160]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF5
jmp eax
.Lt_0BF5:
mov eax, dword ptr [ebp-160]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-164], eax
push offset _Lt_00C0
push 2906
push 4
push dword ptr [ebp-164]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF6
jmp eax
.Lt_0BF6:
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
push offset _Lt_00C0
push 2906
push 65536
push dword ptr [ebp-168]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF7
jmp eax
.Lt_0BF7:
mov eax, dword ptr [ebp-168]
imul eax, 136
fld dword ptr [_PRFLVALU_SF]
fstp qword ptr [_G_DFA+eax+56]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-172], ebx
push offset _Lt_00C0
push 2907
push 4
push dword ptr [ebp-172]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF8
jmp eax
.Lt_0BF8:
mov eax, dword ptr [ebp-172]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-176], eax
push offset _Lt_00C0
push 2907
push 4
push dword ptr [ebp-176]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BF9
jmp eax
.Lt_0BF9:
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
push offset _Lt_00C0
push 2907
push 65536
push dword ptr [ebp-180]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFA
jmp eax
.Lt_0BFA:
mov eax, dword ptr [ebp-180]
imul eax, 136
fld dword ptr [_PRFLPIRC_SF]
fstp qword ptr [_G_DFA+eax+64]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-184], ebx
push offset _Lt_00C0
push 2908
push 4
push dword ptr [ebp-184]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFB
jmp eax
.Lt_0BFB:
mov eax, dword ptr [ebp-184]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-188], eax
push offset _Lt_00C0
push 2908
push 4
push dword ptr [ebp-188]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFC
jmp eax
.Lt_0BFC:
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
push offset _Lt_00C0
push 2908
push 65536
push dword ptr [ebp-192]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFD
jmp eax
.Lt_0BFD:
mov eax, dword ptr [ebp-192]
imul eax, 136
fld dword ptr [_PRFLCHCK_SF]
fstp qword ptr [_G_DFA+eax+72]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-196], ebx
push offset _Lt_00C0
push 2909
push 4
push dword ptr [ebp-196]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFE
jmp eax
.Lt_0BFE:
mov eax, dword ptr [ebp-196]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-200], eax
push offset _Lt_00C0
push 2909
push 4
push dword ptr [ebp-200]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0BFF
jmp eax
.Lt_0BFF:
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
push offset _Lt_00C0
push 2909
push 65536
push dword ptr [ebp-204]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C00
jmp eax
.Lt_0C00:
mov eax, dword ptr [ebp-204]
imul eax, 136
fld dword ptr [_PRFLLV_SF]
fstp qword ptr [_G_DFA+eax+80]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-208], ebx
push offset _Lt_00C0
push 2910
push 4
push dword ptr [ebp-208]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C01
jmp eax
.Lt_0C01:
mov eax, dword ptr [ebp-208]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-212], eax
push offset _Lt_00C0
push 2910
push 4
push dword ptr [ebp-212]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C02
jmp eax
.Lt_0C02:
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
push offset _Lt_00C0
push 2910
push 65536
push dword ptr [ebp-216]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C03
jmp eax
.Lt_0C03:
mov eax, dword ptr [ebp-216]
imul eax, 136
fld dword ptr [_PRFLHPMAX_SF]
fstp qword ptr [_G_DFA+eax+88]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-220], ebx
push offset _Lt_00C0
push 2911
push 4
push dword ptr [ebp-220]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C04
jmp eax
.Lt_0C04:
mov eax, dword ptr [ebp-220]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-224], eax
push offset _Lt_00C0
push 2911
push 4
push dword ptr [ebp-224]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C05
jmp eax
.Lt_0C05:
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
push offset _Lt_00C0
push 2911
push 65536
push dword ptr [ebp-228]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C06
jmp eax
.Lt_0C06:
mov eax, dword ptr [ebp-228]
imul eax, 136
fld dword ptr [_PRFLSTRMAX_SF]
fstp qword ptr [_G_DFA+eax+96]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-232], ebx
push offset _Lt_00C0
push 2912
push 4
push dword ptr [ebp-232]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C07
jmp eax
.Lt_0C07:
mov eax, dword ptr [ebp-232]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-236], eax
push offset _Lt_00C0
push 2912
push 4
push dword ptr [ebp-236]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C08
jmp eax
.Lt_0C08:
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
push offset _Lt_00C0
push 2912
push 65536
push dword ptr [ebp-240]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C09
jmp eax
.Lt_0C09:
mov eax, dword ptr [ebp-240]
imul eax, 136
fld dword ptr [_PRFLESSMAX_SF]
fstp qword ptr [_G_DFA+eax+104]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-244], ebx
push offset _Lt_00C0
push 2913
push 4
push dword ptr [ebp-244]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0A
jmp eax
.Lt_0C0A:
mov eax, dword ptr [ebp-244]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-248], eax
push offset _Lt_00C0
push 2913
push 4
push dword ptr [ebp-248]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0B
jmp eax
.Lt_0C0B:
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
push offset _Lt_00C0
push 2913
push 65536
push dword ptr [ebp-252]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0C
jmp eax
.Lt_0C0C:
mov eax, dword ptr [ebp-252]
imul eax, 136
fld dword ptr [_PRFLESSSPD_SF]
fstp qword ptr [_G_DFA+eax+112]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-256], ebx
push offset _Lt_00C0
push 2914
push 4
push dword ptr [ebp-256]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0D
jmp eax
.Lt_0C0D:
mov eax, dword ptr [ebp-256]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-260], eax
push offset _Lt_00C0
push 2914
push 4
push dword ptr [ebp-260]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0E
jmp eax
.Lt_0C0E:
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
push offset _Lt_00C0
push 2914
push 65536
push dword ptr [ebp-264]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C0F
jmp eax
.Lt_0C0F:
mov eax, dword ptr [ebp-264]
imul eax, 136
fld dword ptr [_PRFLEVAD_SF]
fstp qword ptr [_G_DFA+eax+120]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-268], ebx
push offset _Lt_00C0
push 2915
push 4
push dword ptr [ebp-268]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C10
jmp eax
.Lt_0C10:
mov eax, dword ptr [ebp-268]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-272], eax
push offset _Lt_00C0
push 2915
push 4
push dword ptr [ebp-272]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C11
jmp eax
.Lt_0C11:
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
push offset _Lt_00C0
push 2915
push 65536
push dword ptr [ebp-276]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0C12
jmp eax
.Lt_0C12:
mov eax, dword ptr [ebp-276]
imul eax, 136
fld dword ptr [_PRFLBLNK_SF]
fstp qword ptr [_G_DFA+eax+128]
.Lt_0B85:
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
.Lt_0C13:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C1D
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C16
jmp .Lt_0C14
.Lt_0C16:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C18
jmp .Lt_0C14
.Lt_0C18:
push 0
push 29
push offset _Lt_0C19
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C1B
call _LN_USECURE@0
jmp .Lt_0C14
.Lt_0C1B:
.Lt_0C1A:
.Lt_0C14:
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
.Lt_0C1F:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C28
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C22
jmp .Lt_0C20
.Lt_0C22:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C24
jmp .Lt_0C20
.Lt_0C24:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C26
call _LN_ATTKBITE@0
jmp .Lt_0C20
.Lt_0C26:
.Lt_0C25:
.Lt_0C20:
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
.Lt_0C2A:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C33
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C2D
jmp .Lt_0C2B
.Lt_0C2D:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C2F
jmp .Lt_0C2B
.Lt_0C2F:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C31
call _LN_ATTKPNCH@0
jmp .Lt_0C2B
.Lt_0C31:
.Lt_0C30:
.Lt_0C2B:
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
.Lt_0C35:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C3E
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C38
jmp .Lt_0C36
.Lt_0C38:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C3A
jmp .Lt_0C36
.Lt_0C3A:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C3C
call _LN_ATTKKICK@0
jmp .Lt_0C36
.Lt_0C3C:
.Lt_0C3B:
.Lt_0C36:
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
.Lt_0C40:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C49
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C43
jmp .Lt_0C41
.Lt_0C43:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C45
jmp .Lt_0C41
.Lt_0C45:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C47
call _LN_ATTKDGGR@0
jmp .Lt_0C41
.Lt_0C47:
.Lt_0C46:
.Lt_0C41:
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
.Lt_0C4B:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C54
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C4E
jmp .Lt_0C4C
.Lt_0C4E:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C50
jmp .Lt_0C4C
.Lt_0C50:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C52
call _LN_ATTKPIKE@0
jmp .Lt_0C4C
.Lt_0C52:
.Lt_0C51:
.Lt_0C4C:
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
.Lt_0C56:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C5F
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C59
jmp .Lt_0C57
.Lt_0C59:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C5B
jmp .Lt_0C57
.Lt_0C5B:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C5D
call _LN_ATTKVNOM@0
jmp .Lt_0C57
.Lt_0C5D:
.Lt_0C5C:
.Lt_0C57:
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
.Lt_0C61:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C6A
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C64
jmp .Lt_0C62
.Lt_0C64:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C66
call _LN_CASTFIRE@0
jmp .Lt_0C62
.Lt_0C66:
.Lt_0C65:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C68
call _LN_ATTKFIRE@0
jmp .Lt_0C62
.Lt_0C68:
.Lt_0C67:
.Lt_0C62:
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
.Lt_0C6C:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C75
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C6F
jmp .Lt_0C6D
.Lt_0C6F:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C71
call _LN_CASTDUST@0
jmp .Lt_0C6D
.Lt_0C71:
.Lt_0C70:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C73
call _LN_USESLEP@0
jmp .Lt_0C6D
.Lt_0C73:
.Lt_0C72:
.Lt_0C6D:
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
.Lt_0C77:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C80
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C7A
jmp .Lt_0C78
.Lt_0C7A:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C7C
call _LN_CASTWEB@0
jmp .Lt_0C78
.Lt_0C7C:
.Lt_0C7B:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C7E
call _LN_ATTKWEB@0
jmp .Lt_0C78
.Lt_0C7E:
.Lt_0C7D:
.Lt_0C78:
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
.Lt_0C82:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C89
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C85
jmp .Lt_0C83
.Lt_0C85:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C87
call _LN_CASTSPDR@0
jmp .Lt_0C83
.Lt_0C87:
.Lt_0C86:
.Lt_0C83:
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
.Lt_0C8B:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C92
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C8E
jmp .Lt_0C8C
.Lt_0C8E:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C90
call _LN_CASTCCTS@0
jmp .Lt_0C8C
.Lt_0C90:
.Lt_0C8F:
.Lt_0C8C:
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
.Lt_0C94:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0C9B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0C97
jmp .Lt_0C95
.Lt_0C97:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0C99
call _LN_CASTDTBY@0
jmp .Lt_0C95
.Lt_0C99:
.Lt_0C98:
.Lt_0C95:
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
.Lt_0C9D:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0CA2
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0CA0
jmp .Lt_0C9E
.Lt_0CA0:
call _LN_MOVE@0
.Lt_0C9E:
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
.Lt_0CA4:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0CA9
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0157
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0CA7
jmp .Lt_0CA5
.Lt_0CA7:
call _LN_WINGMOVE@0
.Lt_0CA5:
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
.Lt_0CAB:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0CB6
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_01B4
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CAE
mov word ptr [_DIS_SI], 2
push 0
push 9
push offset _Lt_0898
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CB0
mov ax, word ptr [_TX_SI]
mov word ptr [_TEMPTX_SI], ax
mov ax, word ptr [_TY_SI]
mov word ptr [_TEMPTY_SI], ax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-12], ebx
push offset _Lt_00C0
push 3143
push 4
push dword ptr [ebp-12]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CB8
jmp eax
.Lt_0CB8:
mov eax, dword ptr [ebp-12]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
add ebx, ecx
mov word ptr [_TX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-16], ecx
push offset _Lt_00C0
push 3144
push 4
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CB9
jmp eax
.Lt_0CB9:
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
jmp .Lt_0CAC
.Lt_0CB0:
.Lt_0CAF:
.Lt_0CAE:
.Lt_0CAD:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0CB4
call _LN_ATTKWSTF@0
.Lt_0CB4:
.Lt_0CB3:
.Lt_0CAC:
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
.Lt_0CBA:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0CC1
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0192
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CBD
push 0
push 5
push offset _Lt_0198
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0CBF
push 0
push 5
push offset _Lt_0198
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
push 0
push 5
push offset _Lt_01B1
push -1
push offset _HAVEHADIT_STR
call _fb_StrAssign@20
call _LN_HAVEHADIT@0
call _LN_DELETE2@0
.Lt_0CBF:
.Lt_0CBE:
.Lt_0CBD:
.Lt_0CBC:
.Lt_0CBB:
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
.Lt_0CC3:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0CCA
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0192
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CC6
push 0
push 5
push offset _Lt_019B
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0CC8
push 0
push 5
push offset _Lt_019B
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
.Lt_0CC8:
.Lt_0CC7:
.Lt_0CC6:
.Lt_0CC5:
.Lt_0CC4:
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
.Lt_0CCC:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-32], eax
push offset _Lt_0CF7
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-36], eax
mov word ptr [ebp-4], 0
mov word ptr [_DIS_SI], 1
call _LN_PUTACTION@0
push 0
push 5
push offset _Lt_0157
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
je .Lt_0CCF
jmp .Lt_0CCD
.Lt_0CCF:
push 9
push offset _Lt_01A6
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-8], eax
push offset _Lt_00C0
push 3203
push 4
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CF9
jmp eax
.Lt_0CF9:
mov eax, dword ptr [ebp-8]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-12], eax
push offset _Lt_00C0
push 3203
push 4
push dword ptr [ebp-12]
mov esi, ecx
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFA
jmp eax
.Lt_0CFA:
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
push offset _Lt_00C0
push 3203
push 65536
push dword ptr [ebp-16]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFB
jmp eax
.Lt_0CFB:
mov eax, dword ptr [ebp-16]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_0CD4
call _LN_MERCHANT@0
jmp .Lt_0CCD
.Lt_0CD4:
.Lt_0CD3:
push 11
push offset _Lt_017C
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-20], ebx
push offset _Lt_00C0
push 3207
push 4
push dword ptr [ebp-20]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFC
jmp eax
.Lt_0CFC:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-24], eax
push offset _Lt_00C0
push 3207
push 4
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFD
jmp eax
.Lt_0CFD:
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
push offset _Lt_00C0
push 3207
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFE
jmp eax
.Lt_0CFE:
mov eax, dword ptr [ebp-28]
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_0CD9
call _LN_TALK0001@0
jmp .Lt_0CCD
.Lt_0CD9:
.Lt_0CD8:
push 0
push 9
push offset _Lt_0CDA
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CDC
call _LN_PILLAGE@0
push 0
push 5
push offset _Lt_052A
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CDE
call _LN_DELETE2@0
.Lt_0CDE:
.Lt_0CDD:
jmp .Lt_0CCD
.Lt_0CDC:
.Lt_0CDB:
push 0
push 5
push offset _Lt_0192
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0CE0
mov word ptr [ebp-4], 0
mov word ptr [_T_SI], 1
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-40], ebx
push offset _Lt_00C0
push 3225
push 4
push dword ptr [ebp-40]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0CFF
jmp eax
.Lt_0CFF:
mov eax, dword ptr [ebp-40]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-44], eax
push offset _Lt_00C0
push 3225
push 4
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D00
jmp eax
.Lt_0D00:
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
push offset _Lt_00C0
push 3225
push 65536
push dword ptr [ebp-48]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D01
jmp eax
.Lt_0D01:
mov eax, dword ptr [ebp-48]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0321]
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
jmp .Lt_0CE5
.Lt_0CE8:
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
push offset _Lt_00C0
push 3226
push 4
push dword ptr [ebp-56]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D02
jmp eax
.Lt_0D02:
mov eax, dword ptr [ebp-56]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
mov dword ptr [ebp-60], eax
push offset _Lt_00C0
push 3226
push 4
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D03
jmp eax
.Lt_0D03:
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
push offset _Lt_00C0
push 3226
push 65536
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D04
jmp eax
.Lt_0D04:
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
push offset _Lt_0198
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0CEE
.Lt_0CEF:
mov word ptr [ebp-4], 1
jmp .Lt_0CEC
.Lt_0CEE:
push 5
push offset _Lt_019B
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0CF0
.Lt_0CF1:
mov word ptr [ebp-4], 1
jmp .Lt_0CEC
.Lt_0CF0:
push 5
push offset _Lt_019E
push -1
lea eax, [ebp-76]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0CF2
.Lt_0CF3:
mov word ptr [ebp-4], 1
.Lt_0CF2:
.Lt_0CEC:
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
.Lt_0CE6:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0CE5:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-52]
cmp eax, ebx
jle .Lt_0CE8
.Lt_0CE7:
movsx ebx, word ptr [ebp-4]
test ebx, ebx
jne .Lt_0CF5
call _LN_DELETE2@0
.Lt_0CF5:
.Lt_0CF4:
jmp .Lt_0CCD
.Lt_0CE0:
.Lt_0CDF:
.Lt_0CCD:
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
.Lt_0D07:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0D10
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_0898
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0D0A
call _LN_GONE@0
jmp .Lt_0D08
.Lt_0D0A:
.Lt_0D09:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D0C
call _LN_FIREMOVE@0
jmp .Lt_0D08
.Lt_0D0C:
.Lt_0D0B:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D0E
call _LN_ATTKBURN@0
call _LN_GONE@0
jmp .Lt_0D08
.Lt_0D0E:
.Lt_0D0D:
call _LN_GONE@0
.Lt_0D08:
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
.Lt_0D12:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0D1B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_0898
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0D15
call _LN_GONE@0
jmp .Lt_0D13
.Lt_0D15:
.Lt_0D14:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D17
call _LN_FIREMOVE@0
jmp .Lt_0D13
.Lt_0D17:
.Lt_0D16:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D19
call _LN_USESLEP@0
call _LN_GONE@0
jmp .Lt_0D13
.Lt_0D19:
.Lt_0D18:
call _LN_GONE@0
.Lt_0D13:
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
.Lt_0D1D:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0D26
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_0898
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0D20
jmp .Lt_0D1E
.Lt_0D20:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D22
call _LN_WEBMOVE@0
jmp .Lt_0D1E
.Lt_0D22:
.Lt_0D21:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0D24
call _LN_ATTKTNGL@0
call _LN_GONE@0
jmp .Lt_0D1E
.Lt_0D24:
.Lt_0D23:
.Lt_0D1E:
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
.Lt_0D28:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-16], eax
push offset _Lt_0D45
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-20], eax
movsx eax, word ptr [_DIS_SI]
cmp eax, 3
jne .Lt_0D2B
push 0
push 5
push offset _Lt_0817
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
call _LN_PUTACTION@0
call _LN_ACTNRAPL@0
jmp .Lt_0D29
.Lt_0D2B:
.Lt_0D2A:
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
push offset _Lt_00C0
push 3315
push 65536
push dword ptr [ebp-4]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D47
jmp eax
.Lt_0D47:
mov eax, dword ptr [ebp-4]
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_043C]
fnstsw ax
test ah, 0b00000001
setnz al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0D2E
push 0
push 9
push offset _Lt_0898
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
call _LN_PUTACTION@0
jmp .Lt_0D29
.Lt_0D2E:
.Lt_0D2D:
movsx eax, word ptr [_DIS_SI]
test eax, eax
jne .Lt_0D30
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-28], eax
push offset _Lt_00C0
push 3321
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D48
jmp eax
.Lt_0D48:
mov eax, dword ptr [ebp-28]
imul eax, 136
fld qword ptr [_Lt_0D49]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-24], eax
push offset _Lt_00C0
push 3321
push 65536
push dword ptr [ebp-24]
fstp qword ptr [ebp-36]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D4A
jmp eax
.Lt_0D4A:
mov eax, dword ptr [ebp-24]
imul eax, 136
push dword ptr [ebp-36]
push dword ptr [ebp-32]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_0D30:
.Lt_0D2F:
movsx eax, word ptr [_DIS_SI]
cmp eax, 3
jge .Lt_0D34
movsx eax, word ptr [_DIS_SI]
inc eax
mov word ptr [_DIS_SI], ax
.Lt_0D34:
.Lt_0D33:
push 0
push 9
push offset _Lt_0898
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
push 4
push offset _Lt_03AF
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
push offset _Lt_00C0
push 3327
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D4C
jmp eax
.Lt_0D4C:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_05FF
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
push offset _Lt_00C0
push 3328
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D4D
jmp eax
.Lt_0D4D:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
cmp ebx, -1
jne .Lt_0D38
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
jmp .Lt_0D29
.Lt_0D38:
.Lt_0D37:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D3A
call _LN_PUTACTION@0
jmp .Lt_0D29
.Lt_0D3A:
.Lt_0D39:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D3C
call _LN_PUTACTION@0
push 0
push 5
push offset _Lt_0817
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push offset _Lt_03AF
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
push offset _Lt_00C0
push 3343
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D4E
jmp eax
.Lt_0D4E:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_05FF
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
push offset _Lt_00C0
push 3344
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D4F
jmp eax
.Lt_0D4F:
mov eax, dword ptr [ebp-28]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_PUTACTION@0
call _LN_ATTKLASH@0
jmp .Lt_0D29
.Lt_0D3C:
.Lt_0D3B:
push 0
push 9
push offset _Lt_0D3F
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D41
push 0
push 5
push offset _Lt_0817
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push offset _Lt_03AF
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
push offset _Lt_00C0
push 3353
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D50
jmp eax
.Lt_0D50:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_05FF
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
push offset _Lt_00C0
push 3354
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D51
jmp eax
.Lt_0D51:
mov eax, dword ptr [ebp-28]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_PUTACTION@0
jmp .Lt_0D29
.Lt_0D41:
.Lt_0D40:
.Lt_0D29:
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
.Lt_0D54:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0D75
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-16], eax
push 4
push offset _Lt_03AF
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
push offset _Lt_00C0
push 3362
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D77
jmp eax
.Lt_0D77:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_05FF
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
push offset _Lt_00C0
push 3363
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D78
jmp eax
.Lt_0D78:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jne .Lt_0D59
push 0
push 9
push offset _Lt_0898
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 3368
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D79
jmp eax
.Lt_0D79:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0157
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
push offset _Lt_00C0
push 3369
push 65536
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7A
jmp eax
.Lt_0D7A:
mov eax, dword ptr [ebp-24]
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
jmp .Lt_0D55
.Lt_0D59:
.Lt_0D58:
push 0
push 9
push offset _Lt_0898
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
cmp ebx, -1
jne .Lt_0D5D
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jle .Lt_0D5F
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_0D5F:
.Lt_0D5E:
jmp .Lt_0D55
.Lt_0D5D:
.Lt_0D5C:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D61
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jle .Lt_0D63
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_0D63:
.Lt_0D62:
.Lt_0D61:
.Lt_0D60:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D65
call _LN_ATTKLASH@0
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
jmp .Lt_0D55
.Lt_0D65:
.Lt_0D64:
push 0
push 9
push offset _Lt_0D3F
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D67
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_0898
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jne .Lt_0D69
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
jmp .Lt_0D55
.Lt_0D69:
.Lt_0D68:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0D6B
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
je .Lt_0D6D
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0D6F
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
mov dword ptr [ebp-28], ebx
push offset _Lt_00C0
push 3411
push 4
push dword ptr [ebp-28]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7B
jmp eax
.Lt_0D7B:
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
push offset _Lt_00C0
push 3412
push 4
push dword ptr [ebp-32]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7C
jmp eax
.Lt_0D7C:
mov eax, dword ptr [ebp-32]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_DY_SI], bx
.Lt_0D6F:
.Lt_0D6E:
.Lt_0D6D:
.Lt_0D6C:
call _LN_SWAPDATA@0
mov bx, word ptr [_TX_SI]
mov word ptr [_TEMPTX_SI], bx
mov bx, word ptr [_TY_SI]
mov word ptr [_TEMPTY_SI], bx
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-20], ecx
push offset _Lt_00C0
push 3418
push 4
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7D
jmp eax
.Lt_0D7D:
mov eax, dword ptr [ebp-20]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
add ebx, ecx
mov word ptr [_TX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
mov dword ptr [ebp-24], ecx
push offset _Lt_00C0
push 3419
push 4
push dword ptr [ebp-24]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0D7E
jmp eax
.Lt_0D7E:
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
jmp .Lt_0D55
.Lt_0D6B:
.Lt_0D6A:
.Lt_0D67:
.Lt_0D66:
.Lt_0D55:
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
.Lt_0D81:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0D90
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_0D83
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0D86
.Lt_0D87:
call _LN_ACTNMOVE@0
jmp .Lt_0D84
.Lt_0D86:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0D88
.Lt_0D89:
call _LN_ACTNFIRE@0
jmp .Lt_0D84
.Lt_0D88:
cmp dword ptr [ebp-12], 1953526633
jne .Lt_0D8A
.Lt_0D8B:
call _LN_ACTNISPT@0
jmp .Lt_0D84
.Lt_0D8A:
cmp dword ptr [ebp-12], 1735289207
jne .Lt_0D8C
.Lt_0D8E:
call _LN_ACTNWING@0
.Lt_0D8C:
.Lt_0D84:
call _LN_AUTOLEVELUP@0
.Lt_0D82:
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
.Lt_0D92:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0D9A
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 0
push 29
push offset _Lt_0D94
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0D97
.Lt_0D98:
call _LN_ACTNFIREMOVE@0
.Lt_0D97:
.Lt_0D95:
.Lt_0D93:
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
.Lt_0D9C:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0DA4
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 0
push 25
push offset _Lt_0D9E
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DA1
.Lt_0DA2:
call _LN_ACTNDUSTMOVE@0
.Lt_0DA1:
.Lt_0D9F:
.Lt_0D9D:
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
.Lt_0DA6:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0DBA
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0DA8
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DAB
.Lt_0DAC:
call _LN_ACTNMOVE@0
jmp .Lt_0DA9
.Lt_0DAB:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0DAD
.Lt_0DAE:
call _LN_ACTNFIRE@0
jmp .Lt_0DA9
.Lt_0DAD:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0DAF
.Lt_0DB0:
call _LN_ACTNBITE@0
jmp .Lt_0DA9
.Lt_0DAF:
cmp dword ptr [ebp-12], 1751346800
jne .Lt_0DB1
.Lt_0DB2:
call _LN_ACTNPNCH@0
jmp .Lt_0DA9
.Lt_0DB1:
cmp dword ptr [ebp-12], 1801677163
jne .Lt_0DB3
.Lt_0DB4:
call _LN_ACTNKICK@0
jmp .Lt_0DA9
.Lt_0DB3:
cmp dword ptr [ebp-12], 1919379300
jne .Lt_0DB5
.Lt_0DB6:
call _LN_ACTNDGGR@0
jmp .Lt_0DA9
.Lt_0DB5:
cmp dword ptr [ebp-12], 1701538160
jne .Lt_0DB7
.Lt_0DB8:
call _LN_ACTNPIKE@0
.Lt_0DB7:
.Lt_0DA9:
call _LN_AUTOLEVELUP@0
.Lt_0DA7:
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
.Lt_0DBC:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0DCF
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0DA8
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DC0
.Lt_0DC1:
call _LN_ACTNMOVE@0
jmp .Lt_0DBE
.Lt_0DC0:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0DC2
.Lt_0DC3:
call _LN_ACTNFIRE@0
jmp .Lt_0DBE
.Lt_0DC2:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0DC4
.Lt_0DC5:
call _LN_ACTNBITE@0
jmp .Lt_0DBE
.Lt_0DC4:
cmp dword ptr [ebp-12], 1751346800
jne .Lt_0DC6
.Lt_0DC7:
call _LN_ACTNPNCH@0
jmp .Lt_0DBE
.Lt_0DC6:
cmp dword ptr [ebp-12], 1801677163
jne .Lt_0DC8
.Lt_0DC9:
call _LN_ACTNKICK@0
jmp .Lt_0DBE
.Lt_0DC8:
cmp dword ptr [ebp-12], 1919379300
jne .Lt_0DCA
.Lt_0DCB:
call _LN_ACTNDGGR@0
jmp .Lt_0DBE
.Lt_0DCA:
cmp dword ptr [ebp-12], 1701538160
jne .Lt_0DCC
.Lt_0DCD:
call _LN_ACTNPIKE@0
.Lt_0DCC:
.Lt_0DBE:
call _LN_AUTOLEVELUP@0
.Lt_0DBD:
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
.Lt_0DD1:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0DDF
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_0DD3
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DD6
.Lt_0DD7:
call _LN_ACTNMOVE@0
jmp .Lt_0DD4
.Lt_0DD6:
cmp dword ptr [ebp-12], 1600284023
jne .Lt_0DD8
.Lt_0DD9:
call _LN_ACTNWEB@0
jmp .Lt_0DD4
.Lt_0DD8:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0DDA
.Lt_0DDB:
call _LN_ACTNBITE@0
jmp .Lt_0DD4
.Lt_0DDA:
cmp dword ptr [ebp-12], 1836019318
jne .Lt_0DDC
.Lt_0DDD:
call _LN_ACTNKICK@0
.Lt_0DDC:
.Lt_0DD4:
call _LN_AUTOLEVELUP@0
.Lt_0DD2:
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
.Lt_0DE1:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0DED
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 5
push offset _Lt_058A
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0DE4
call _LN_NEXTACTION@0
.Lt_0DE4:
.Lt_0DE3:
push 0
push 29
push offset _Lt_0DE5
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DE8
.Lt_0DE9:
call _LN_ACTNWEBMOVE@0
jmp .Lt_0DE6
.Lt_0DE8:
cmp dword ptr [ebp-12], 1919185011
jne .Lt_0DEA
.Lt_0DEB:
call _LN_ACTNSPDR@0
.Lt_0DEA:
.Lt_0DE6:
call _LN_AUTOLEVELUP@0
.Lt_0DE2:
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
.Lt_0DEF:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0E01
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0DF1
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0DF4
.Lt_0DF5:
call _LN_ACTNMOVE@0
jmp .Lt_0DF2
.Lt_0DF4:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0DF6
.Lt_0DF7:
call _LN_ACTNFIRE@0
jmp .Lt_0DF2
.Lt_0DF6:
cmp dword ptr [ebp-12], 2036495460
jne .Lt_0DF8
.Lt_0DF9:
call _LN_ACTNDTBY@0
jmp .Lt_0DF2
.Lt_0DF8:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0DFA
.Lt_0DFB:
call _LN_ACTNBITE@0
jmp .Lt_0DF2
.Lt_0DFA:
cmp dword ptr [ebp-12], 1801677163
jne .Lt_0DFC
.Lt_0DFD:
call _LN_ACTNKICK@0
jmp .Lt_0DF2
.Lt_0DFC:
cmp dword ptr [ebp-12], 1953723748
jne .Lt_0DFE
.Lt_0DFF:
call _LN_ACTNDUST@0
.Lt_0DFE:
.Lt_0DF2:
call _LN_AUTOLEVELUP@0
.Lt_0DF0:
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
.Lt_0E03:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0E17
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_0E05
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0E08
.Lt_0E09:
call _LN_ACTNMOVE@0
jmp .Lt_0E06
.Lt_0E08:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0E0A
.Lt_0E0B:
call _LN_ACTNFIRE@0
jmp .Lt_0E06
.Lt_0E0A:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0E0C
.Lt_0E0D:
call _LN_ACTNBITE@0
jmp .Lt_0E06
.Lt_0E0C:
cmp dword ptr [ebp-12], 1751346800
jne .Lt_0E0E
.Lt_0E0F:
call _LN_ACTNPNCH@0
jmp .Lt_0E06
.Lt_0E0E:
cmp dword ptr [ebp-12], 1801677163
jne .Lt_0E10
.Lt_0E11:
call _LN_ACTNKICK@0
jmp .Lt_0E06
.Lt_0E10:
cmp dword ptr [ebp-12], 1919379300
jne .Lt_0E12
.Lt_0E13:
call _LN_ACTNDGGR@0
jmp .Lt_0E06
.Lt_0E12:
cmp dword ptr [ebp-12], 1701538160
jne .Lt_0E14
.Lt_0E15:
call _LN_ACTNPIKE@0
.Lt_0E14:
.Lt_0E06:
call _LN_AUTOLEVELUP@0
.Lt_0E04:
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
.Lt_0E19:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0E45
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 37
push offset _Lt_0E1B
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1702260589
jne .Lt_0E1E
.Lt_0E1F:
call _LN_ACTNMOVE@0
jmp .Lt_0E1C
.Lt_0E1E:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_0E20
.Lt_0E21:
call _LN_ACTNFIRE@0
jmp .Lt_0E1C
.Lt_0E20:
cmp dword ptr [ebp-12], 1702127970
jne .Lt_0E22
.Lt_0E23:
call _LN_ACTNBITE@0
jmp .Lt_0E1C
.Lt_0E22:
cmp dword ptr [ebp-12], 1751346800
jne .Lt_0E24
.Lt_0E25:
call _LN_ACTNPNCH@0
jmp .Lt_0E1C
.Lt_0E24:
cmp dword ptr [ebp-12], 1801677163
jne .Lt_0E26
.Lt_0E27:
call _LN_ACTNKICK@0
jmp .Lt_0E1C
.Lt_0E26:
cmp dword ptr [ebp-12], 1919379300
jne .Lt_0E28
.Lt_0E29:
call _LN_ACTNDGGR@0
jmp .Lt_0E1C
.Lt_0E28:
cmp dword ptr [ebp-12], 1701538160
jne .Lt_0E2A
.Lt_0E2B:
call _LN_ACTNPIKE@0
jmp .Lt_0E1C
.Lt_0E2A:
cmp dword ptr [ebp-12], 1919185011
jne .Lt_0E2C
.Lt_0E2D:
call _LN_ACTNSPDR@0
jmp .Lt_0E1C
.Lt_0E2C:
cmp dword ptr [ebp-12], 1600284023
jne .Lt_0E2E
.Lt_0E2F:
call _LN_ACTNWEB@0
jmp .Lt_0E1C
.Lt_0E2E:
cmp dword ptr [ebp-12], 1836019318
jne .Lt_0E30
.Lt_0E31:
call _LN_ACTNVNOM@0
jmp .Lt_0E1C
.Lt_0E30:
cmp dword ptr [ebp-12], 1701999971
jne .Lt_0E32
.Lt_0E33:
call _LN_ACTNCURE@0
jmp .Lt_0E1C
.Lt_0E32:
cmp dword ptr [ebp-12], 1953526633
jne .Lt_0E34
.Lt_0E35:
call _LN_ACTNISPT@0
jmp .Lt_0E1C
.Lt_0E34:
cmp dword ptr [ebp-12], 1819308647
jne .Lt_0E36
.Lt_0E37:
call _LN_ACTNGRPL@0
jmp .Lt_0E1C
.Lt_0E36:
cmp dword ptr [ebp-12], 1819304306
jne .Lt_0E38
.Lt_0E39:
call _LN_ACTNRAPL@0
jmp .Lt_0E1C
.Lt_0E38:
cmp dword ptr [ebp-12], 1684366707
jne .Lt_0E3A
.Lt_0E3B:
call _LN_ACTNCCTS@0
jmp .Lt_0E1C
.Lt_0E3A:
cmp dword ptr [ebp-12], 1718907767
jne .Lt_0E3C
.Lt_0E3D:
call _LN_ACTNWSTF@0
jmp .Lt_0E1C
.Lt_0E3C:
cmp dword ptr [ebp-12], 1735289207
jne .Lt_0E3E
.Lt_0E3F:
call _LN_ACTNWING@0
jmp .Lt_0E1C
.Lt_0E3E:
cmp dword ptr [ebp-12], 830039403
jne .Lt_0E40
.Lt_0E41:
call _LN_ACTNKEY1@0
jmp .Lt_0E1C
.Lt_0E40:
cmp dword ptr [ebp-12], 846816619
jne .Lt_0E42
.Lt_0E43:
call _LN_ACTNKEY2@0
.Lt_0E42:
.Lt_0E1C:
call _LN_AUTOLEVELUP@0
.Lt_0E1A:
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
.Lt_0E47:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0E56
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
push offset _Lt_089C
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx eax, word ptr [_HERE_SI]
test eax, eax
jle .Lt_0E4A
push 4
push offset _Lt_08A1
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
push offset _Lt_00C0
push 3666
push 65536
push dword ptr [ebp-12]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E58
jmp eax
.Lt_0E58:
mov eax, dword ptr [ebp-12]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
.Lt_0E4A:
.Lt_0E49:
push 0
push 5
push offset _Lt_0E4C
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx ebx, word ptr [_HERE_SI]
test ebx, ebx
jle .Lt_0E4E
push 4
push offset _Lt_0E50
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
push offset _Lt_00C0
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
.Lt_0E4E:
.Lt_0E4D:
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1684366707
jne .Lt_0E53
.Lt_0E54:
call _LN_ACTNCCTS@0
.Lt_0E53:
.Lt_0E51:
call _LN_AUTOLEVELUP@0
.Lt_0E48:
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
.Lt_0E5A:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-12], eax
push offset _Lt_0E66
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
push offset _Lt_08A1
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
push offset _Lt_00C0
push 3686
push 65536
push dword ptr [ebp-4]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E68
jmp eax
.Lt_0E68:
mov eax, dword ptr [ebp-4]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0E5E
push 4
push offset _Lt_0E60
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
push offset _Lt_00C0
push 3687
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E69
jmp eax
.Lt_0E69:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
call _LN_GONE@0
jmp .Lt_0E5B
.Lt_0E5E:
.Lt_0E5D:
push 5
push offset _Lt_089C
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
push offset _Lt_00C0
push 3691
push 65536
push dword ptr [ebp-8]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E6A
jmp eax
.Lt_0E6A:
mov eax, dword ptr [ebp-8]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0E63
push 4
push offset _Lt_0E4C
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
push offset _Lt_00C0
push 3692
push 65536
push dword ptr [ebp-20]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0E6B
jmp eax
.Lt_0E6B:
mov eax, dword ptr [ebp-20]
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
call _LN_GONE@0
jmp .Lt_0E5B
.Lt_0E63:
.Lt_0E62:
call _LN_AUTOLEVELUP@0
.Lt_0E5B:
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
.Lt_0E6C:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0E81
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
jne .Lt_0E6F
push 0
push 3
push offset _Lt_0B25
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0E6F:
push 2
push offset _Lt_0E70
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
je .Lt_0E72
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
push offset _Lt_0E74
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
push offset _Lt_0E73
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
.Lt_0E72:
.Lt_0E71:
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
je .Lt_0E78
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
push offset _Lt_0E74
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
push offset _Lt_0E79
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
.Lt_0E78:
.Lt_0E77:
push offset _YMOUSE_SI
push offset _XMOUSE_SI
push offset _RB_SI
push offset _LB_SI
call _MOUSESTATUS@16
movsx eax, word ptr [_YMOUSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_041F]
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
fadd qword ptr [_Lt_01C2]
fistp word ptr [_YM_SI]
movsx eax, word ptr [_XMOUSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_041F]
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
fadd qword ptr [_Lt_01C2]
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
je .Lt_0E7D
mov cx, word ptr [_LB_SI]
mov word ptr [_LLB_SI], cx
mov cx, word ptr [_LB_SI]
mov word ptr [_L1B_SI], cx
jmp .Lt_0E7C
.Lt_0E7D:
mov word ptr [_LB_SI], 0
.Lt_0E7C:
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
je .Lt_0E7F
mov ax, word ptr [_RB_SI]
mov word ptr [_RRB_SI], ax
mov ax, word ptr [_RB_SI]
mov word ptr [_R1B_SI], ax
jmp .Lt_0E7E
.Lt_0E7F:
mov word ptr [_RB_SI], 0
.Lt_0E7E:
.Lt_0E6D:
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
.Lt_0E8D:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-64], eax
push offset _Lt_0E98
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-68], eax
push -1
push 1
push offset _Lt_0E8F
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0E91
push 0
push -1
push offset _C_STR
push -1
push offset _CLAST_STR
call _fb_StrAssign@20
.Lt_0E91:
.Lt_0E90:
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
push offset _Lt_009D
push -1
push -1
movzx eax, word ptr [_YMOUSE_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 2
push offset _Lt_009D
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
.Lt_0E8E:
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
.Lt_0E9A:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-48], eax
push offset _Lt_0EA9
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
jg .Lt_0E9D
push 0
push -1
push 2
push offset _Lt_0E8F
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
push offset _Lt_0E74
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
push offset _Lt_0E74
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
jmp .Lt_0E9C
.Lt_0E9D:
push 0
push -1
push 2
push offset _Lt_0E8F
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
push offset _Lt_0E74
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
push offset _Lt_0EA1
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
.Lt_0E9C:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_0E9B
mov eax, dword ptr [ebp+44]
and eax, 1
je .Lt_0EA7
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
.Lt_0EA7:
.Lt_0EA6:
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
fdiv qword ptr [_Lt_01BC]
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
fdiv qword ptr [_Lt_01BC]
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
fdiv qword ptr [_Lt_01BC]
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
fdiv qword ptr [_Lt_01BC]
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
fdiv qword ptr [_Lt_01BC]
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
.Lt_0E9B:
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
.Lt_0EAD:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_0EC2
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
push offset _Lt_0EAF
push -1
push dword ptr [ebp+24]
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0EB1
push 0
push -1
push 2
push offset _Lt_0EB2
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
push 1
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 5
push offset _Lt_0EB4
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
call _png_load
add esp, 8
mov dword ptr [ebp-32], eax
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
push 0
push -1
push 2
push offset _Lt_0EB9
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
push 1
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
push 5
push offset _Lt_0EB4
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
call _png_load
add esp, 8
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
call _png_destroy
add esp, 4
push dword ptr [ebp-32]
call _png_destroy
add esp, 4
.Lt_0EB1:
.Lt_0EB0:
push -1
push dword ptr [ebp+24]
call _fb_StrLen@8
cmp eax, 11
je .Lt_0EC0
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
push offset _Lt_0EA1
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_0EC0:
.Lt_0EBF:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0EAE:
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
.Lt_0EC6:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0ECC
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_0EC8:
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0ECA:
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
je .Lt_0EC8
.Lt_0EC9:
.Lt_0EC7:
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
.Lt_0ED0:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0ED3
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0ED5]
push dword ptr [_Lt_0726]
push dword ptr [_Lt_01D5]
push dword ptr [_Lt_01D5]
push 0
call _fb_GfxLine@36
.Lt_0ED1:
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
.Lt_0ED6:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0EDF
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
call _fb_FileFree@0
mov dword ptr [ebp-4], eax
.Lt_0ED8:
push 0
push dword ptr [ebp-4]
push 0
push 2
push 0
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .Lt_0ED9
lea eax, [.Lt_0ED9]
push eax
lea eax, [.Lt_0ED8]
push eax
push offset _Lt_00C0
push 3836
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0ED9:
.Lt_0EDA:
push -1
push dword ptr [ebp+12]
push 0
push dword ptr [ebp-4]
call _fb_FilePutStr@16
test eax, eax
je .Lt_0EDB
lea eax, [.Lt_0EDB]
push eax
lea eax, [.Lt_0EDA]
push eax
push offset _Lt_00C0
push 3837
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EDB:
.Lt_0EDC:
push dword ptr [ebp-4]
call _fb_FileClose@4
test eax, eax
je .Lt_0EDD
lea eax, [.Lt_0EDD]
push eax
lea eax, [.Lt_0EDC]
push eax
push offset _Lt_00C0
push 3838
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EDD:
.Lt_0ED7:
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
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-32], eax
push offset _Lt_0EEE
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-36], eax
.Lt_0EE1:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
call _fb_FileFree@0
mov dword ptr [ebp-28], eax
.Lt_0EE3:
push 0
push dword ptr [ebp-28]
push 0
push 1
push 0
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .Lt_0EE4
lea eax, [.Lt_0EE4]
push eax
lea eax, [.Lt_0EE3]
push eax
push offset _Lt_00C0
push 3845
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EE4:
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
jg .Lt_0EF0
jl .Lt_0EF1
cmp eax, 0
ja .Lt_0EF0
.Lt_0EF1:
xor ecx, ecx
.Lt_0EF0:
and ebx, ecx
je .Lt_0EE6
.Lt_0EE7:
push 1
push dword ptr [ebp-28]
call _fb_FileSeek@8
test eax, eax
je .Lt_0EE8
lea eax, [.Lt_0EE8]
push eax
lea eax, [.Lt_0EE7]
push eax
push offset _Lt_00C0
push 3848
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EE8:
.Lt_0EE9:
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
je .Lt_0EEA
lea eax, [.Lt_0EEA]
push eax
lea eax, [.Lt_0EE9]
push eax
push offset _Lt_00C0
push 3849
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EEA:
.Lt_0EE6:
.Lt_0EE5:
.Lt_0EEB:
push dword ptr [ebp-28]
call _fb_FileClose@4
test eax, eax
je .Lt_0EEC
lea eax, [.Lt_0EEC]
push eax
lea eax, [.Lt_0EEB]
push eax
push offset _Lt_00C0
push 3851
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0EEC:
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
.Lt_0EE2:
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
.Lt_0EF2:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-20], eax
push offset _Lt_0EFA
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
.Lt_0EF7:
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
push offset _Lt_00C0
push 3860
mov eax, dword ptr [ebp+12]
add eax, 32
push dword ptr [eax]
mov eax, dword ptr [ebp+12]
add eax, 28
push dword ptr [eax]
push dword ptr [ebp-28]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0EFC
jmp eax
.Lt_0EFC:
mov eax, dword ptr [ebp-28]
sal eax, 2
mov ecx, dword ptr [ebp+12]
add eax, dword ptr [ecx]
mov dword ptr [eax], ebx
.Lt_0EF5:
inc dword ptr [ebp-16]
.Lt_0EF4:
cmp dword ptr [ebp-16], 255
jle .Lt_0EF7
.Lt_0EF6:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_0EF3:
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
.Lt_0EFD:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_0F02
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
.Lt_0EFE:
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
.Lt_0F06:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0F1A
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
jne .Lt_0F09
.Lt_0F0A:
push 1
push dword ptr [_CLV_BUFFER_TITLE]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0F08
.Lt_0F09:
mov eax, dword ptr [_CLV_BUFFER_HELP]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F0B
.Lt_0F0C:
push 1
push dword ptr [_CLV_BUFFER_HELP]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0F08
.Lt_0F0B:
mov eax, dword ptr [_CLV_BUFFER_PORTAL]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F0D
.Lt_0F0E:
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
jmp .Lt_0F08
.Lt_0F0D:
mov eax, dword ptr [_CLV_BUFFER_STATUS]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F0F
.Lt_0F10:
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
jmp .Lt_0F08
.Lt_0F0F:
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F11
.Lt_0F12:
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
jmp .Lt_0F08
.Lt_0F11:
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F13
.Lt_0F14:
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
jmp .Lt_0F08
.Lt_0F13:
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0F15
.Lt_0F16:
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
.Lt_0F15:
.Lt_0F08:
mov eax, dword ptr [_CLV_BUFFER_SPLASH]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
je .Lt_0F18
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
.Lt_0F18:
.Lt_0F17:
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
push dword ptr [_Lt_01D5]
push dword ptr [_Lt_01D5]
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
.Lt_0F07:
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
.Lt_0F1C:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-332], eax
push offset _Lt_0F64
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
push offset _Lt_00C0
push 3946
push 65536
push dword ptr [ebp-28]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F66
jmp eax
.Lt_0F66:
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
push offset _Lt_085C
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
push offset _Lt_00C0
push 3948
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F67
jmp eax
.Lt_0F67:
mov eax, dword ptr [ebp-44]
imul eax, 136
fld qword ptr [_Lt_0881]
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
push offset _Lt_05BF
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
push offset _Lt_00C0
push 3949
push 65536
push dword ptr [ebp-60]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F68
jmp eax
.Lt_0F68:
mov eax, dword ptr [ebp-60]
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push 6
push offset _Lt_0860
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
push offset _Lt_05BC
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
push offset _Lt_0866
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
push offset _Lt_00C0
push 3952
push 65536
push dword ptr [ebp-124]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F69
jmp eax
.Lt_0F69:
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
fadd qword ptr [_Lt_0884]
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
push offset _Lt_086A
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
push offset _Lt_00C0
push 3954
push 65536
push dword ptr [ebp-152]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6A
jmp eax
.Lt_0F6A:
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
fadd qword ptr [_Lt_0884]
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
push offset _Lt_086E
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
push offset _Lt_00C0
push 3956
push 65536
push dword ptr [ebp-180]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6B
jmp eax
.Lt_0F6B:
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
fadd qword ptr [_Lt_0884]
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
push offset _Lt_086A
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
push offset _Lt_00C0
push 3958
push 65536
push dword ptr [ebp-208]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6C
jmp eax
.Lt_0F6C:
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
fadd qword ptr [_Lt_0884]
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
push offset _Lt_0875
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
push offset _Lt_00C0
push 3960
push 65536
push dword ptr [ebp-236]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6D
jmp eax
.Lt_0F6D:
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
fadd qword ptr [_Lt_0884]
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
push offset _Lt_086A
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
push offset _Lt_00C0
push 3962
push 65536
push dword ptr [ebp-264]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6E
jmp eax
.Lt_0F6E:
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
fadd qword ptr [_Lt_0884]
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
jne .Lt_0F3A
.Lt_0F3B:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push 12
push offset _Lt_0F3D
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
jmp .Lt_0F39
.Lt_0F3A:
movsx eax, word ptr [_D_SI]
cmp eax, 1
jne .Lt_0F3F
.Lt_0F40:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push 12
push offset _Lt_0F42
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
jmp .Lt_0F39
.Lt_0F3F:
movsx eax, word ptr [_D_SI]
cmp eax, 2
jne .Lt_0F44
.Lt_0F45:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push 12
push offset _Lt_0F47
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
jmp .Lt_0F39
.Lt_0F44:
movsx eax, word ptr [_D_SI]
cmp eax, 3
jne .Lt_0F49
.Lt_0F4A:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push 12
push offset _Lt_0F4C
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
jmp .Lt_0F39
.Lt_0F49:
movsx eax, word ptr [_D_SI]
cmp eax, 4
jne .Lt_0F4E
.Lt_0F4F:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push 12
push offset _Lt_0F51
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
.Lt_0F4E:
.Lt_0F39:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
push 0
push -1
push 4
push offset _Lt_07E6
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
push offset _Lt_00C0
push 3976
push 65536
push dword ptr [ebp-292]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F6F
jmp eax
.Lt_0F6F:
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
push offset _Lt_00C0
push 3976
push 65536
push dword ptr [ebp-288]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F70
jmp eax
.Lt_0F70:
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
push offset _Lt_00C0
push 3978
push 65536
push dword ptr [ebp-340]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F71
jmp eax
.Lt_0F71:
mov eax, dword ptr [ebp-340]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0321]
fistp word ptr [ebp-344]
jmp .Lt_0F5C
.Lt_0F5F:
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
push offset _Lt_00C0
push 3979
push 65536
push dword ptr [ebp-348]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F72
jmp eax
.Lt_0F72:
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
jne .Lt_0F62
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
.Lt_0F62:
.Lt_0F61:
.Lt_0F5D:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0F5C:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-344]
cmp eax, ebx
jle .Lt_0F5F
.Lt_0F5E:
.Lt_0F1D:
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
.Lt_0F73:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-36], eax
push offset _Lt_0F84
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
push offset _Lt_00C0
push 3998
push 65536
push dword ptr [ebp-44]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F86
jmp eax
.Lt_0F86:
mov eax, dword ptr [ebp-44]
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0321]
fistp word ptr [ebp-48]
jmp .Lt_0F77
.Lt_0F7A:
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
fdiv qword ptr [_Lt_0325]
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
fmul qword ptr [_Lt_031F]
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
push offset _Lt_00C0
push 4001
push 65536
push dword ptr [ebp-52]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F87
jmp eax
.Lt_0F87:
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
push offset _Lt_0617
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
push offset _Lt_00C0
push 4003
push 65536
push dword ptr [ebp-64]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_0F88
jmp eax
.Lt_0F88:
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
jne .Lt_0F82
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
.Lt_0F82:
.Lt_0F81:
.Lt_0F78:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0F77:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-48]
cmp eax, ebx
jle .Lt_0F7A
.Lt_0F79:
.Lt_0F74:
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
.Lt_0F89:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-28], eax
push offset _Lt_0F95
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
jne .Lt_0F8C
.Lt_0F8D:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 8
push offset _Lt_0F8E
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
jmp .Lt_0F8B
.Lt_0F8C:
movsx eax, word ptr [_TITLED_SI]
cmp eax, 1
jne .Lt_0F90
.Lt_0F91:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 8
push offset _Lt_0F92
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
.Lt_0F90:
.Lt_0F8B:
.Lt_0F8A:
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
.Lt_0F97:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-188], eax
push offset _Lt_0FB7
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
push offset _Lt_00C0
push 4036
push 2
push 1
push dword ptr [ebp-76]
mov ebx, eax
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FB9
jmp eax
.Lt_0FB9:
mov eax, dword ptr [ebp-76]
mov dword ptr [ebp+eax*8-24], ebx
movsx ebx, word ptr [ebp+24]
sal ebx, 3
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-80], eax
push offset _Lt_00C0
push 4037
push 2
push 1
push dword ptr [ebp-80]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBA
jmp eax
.Lt_0FBA:
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp+eax*8-20], ebx
movsx ebx, word ptr [ebp+20]
dec ebx
sal ebx, 3
dec ebx
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-84], eax
push offset _Lt_00C0
push 4038
push 2
push 1
push dword ptr [ebp-84]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBB
jmp eax
.Lt_0FBB:
mov eax, dword ptr [ebp-84]
mov dword ptr [ebp+eax*8-24], ebx
movsx ebx, word ptr [ebp+28]
sal ebx, 3
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-88], eax
push offset _Lt_00C0
push 4039
push 2
push 1
push dword ptr [ebp-88]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBC
jmp eax
.Lt_0FBC:
mov eax, dword ptr [ebp-88]
mov dword ptr [ebp+eax*8-20], ebx
push 2
push 4278190080
push 4278190080
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-104], ebx
push offset _Lt_00C0
push 4041
push 2
push 1
push dword ptr [ebp-104]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBD
jmp eax
.Lt_0FBD:
mov eax, dword ptr [ebp-104]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-100], eax
push offset _Lt_00C0
push 4041
push 2
push 1
push dword ptr [ebp-100]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBE
jmp eax
.Lt_0FBE:
mov eax, dword ptr [ebp-100]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-96], eax
push offset _Lt_00C0
push 4041
push 2
push 1
push dword ptr [ebp-96]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FBF
jmp eax
.Lt_0FBF:
mov eax, dword ptr [ebp-96]
push dword ptr [ebp+eax*8-24]
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-92], eax
push offset _Lt_00C0
push 4041
push 2
push 1
push dword ptr [ebp-92]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC0
jmp eax
.Lt_0FC0:
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
push offset _Lt_00C0
push 4042
push 2
push 1
push dword ptr [ebp-120]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC1
jmp eax
.Lt_0FC1:
mov eax, dword ptr [ebp-120]
mov ebx, dword ptr [ebp+eax*8-20]
add ebx, 2
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-116], ebx
push offset _Lt_00C0
push 4042
push 2
push 1
push dword ptr [ebp-116]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC2
jmp eax
.Lt_0FC2:
mov eax, dword ptr [ebp-116]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-112], eax
push offset _Lt_00C0
push 4042
push 2
push 1
push dword ptr [ebp-112]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC3
jmp eax
.Lt_0FC3:
mov eax, dword ptr [ebp-112]
mov ebx, dword ptr [ebp+eax*8-24]
add ebx, -2
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-108], ebx
push offset _Lt_00C0
push 4042
push 2
push 1
push dword ptr [ebp-108]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC4
jmp eax
.Lt_0FC4:
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
push offset _Lt_00C0
push 4043
push 2
push 1
push dword ptr [ebp-136]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC5
jmp eax
.Lt_0FC5:
mov eax, dword ptr [ebp-136]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-132], eax
push offset _Lt_00C0
push 4043
push 2
push 1
push dword ptr [ebp-132]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC6
jmp eax
.Lt_0FC6:
mov eax, dword ptr [ebp-132]
mov ebx, dword ptr [ebp+eax*8-20]
add ebx, 2
push ebx
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-128], ebx
push offset _Lt_00C0
push 4043
push 2
push 1
push dword ptr [ebp-128]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC7
jmp eax
.Lt_0FC7:
mov eax, dword ptr [ebp-128]
push dword ptr [ebp+eax*8-24]
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-124], eax
push offset _Lt_00C0
push 4043
push 2
push 1
push dword ptr [ebp-124]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC8
jmp eax
.Lt_0FC8:
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
push offset _Lt_00C0
push 4044
push 2
push 1
push dword ptr [ebp-152]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FC9
jmp eax
.Lt_0FC9:
mov eax, dword ptr [ebp-152]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-148], ebx
push offset _Lt_00C0
push 4044
push 2
push 1
push dword ptr [ebp-148]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCA
jmp eax
.Lt_0FCA:
mov eax, dword ptr [ebp-148]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-144], ebx
push offset _Lt_00C0
push 4044
push 2
push 1
push dword ptr [ebp-144]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCB
jmp eax
.Lt_0FCB:
mov eax, dword ptr [ebp-144]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-140], ebx
push offset _Lt_00C0
push 4044
push 2
push 1
push dword ptr [ebp-140]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCC
jmp eax
.Lt_0FCC:
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
push offset _Lt_00C0
push 4045
push 2
push 1
push dword ptr [ebp-160]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCD
jmp eax
.Lt_0FCD:
mov eax, dword ptr [ebp-160]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-156], ebx
push offset _Lt_00C0
push 4045
push 2
push 1
push dword ptr [ebp-156]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCE
jmp eax
.Lt_0FCE:
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
push offset _Lt_00C0
push 4046
push 2
push 1
push dword ptr [ebp-168]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FCF
jmp eax
.Lt_0FCF:
mov eax, dword ptr [ebp-168]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-164], ebx
push offset _Lt_00C0
push 4046
push 2
push 1
push dword ptr [ebp-164]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD0
jmp eax
.Lt_0FD0:
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
push offset _Lt_00C0
push 4047
push 2
push 1
push dword ptr [ebp-176]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD1
jmp eax
.Lt_0FD1:
mov eax, dword ptr [ebp-176]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-172], ebx
push offset _Lt_00C0
push 4047
push 2
push 1
push dword ptr [ebp-172]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD2
jmp eax
.Lt_0FD2:
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
push offset _Lt_00C0
push 4048
push 2
push 1
push dword ptr [ebp-184]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD3
jmp eax
.Lt_0FD3:
mov eax, dword ptr [ebp-184]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp-180], ebx
push offset _Lt_00C0
push 4048
push 2
push 1
push dword ptr [ebp-180]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FD4
jmp eax
.Lt_0FD4:
mov eax, dword ptr [ebp-180]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_PIXEL@24
.Lt_0F98:
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
.Lt_0FD5:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-8], eax
push offset _Lt_0FE3
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
jmp .Lt_0FD8
.Lt_0FDB:
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
je .Lt_0FDD
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-28], ebx
push offset _Lt_00C0
push 4055
mov ebx, dword ptr [ebp+8]
add ebx, 32
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
add ebx, 28
push dword ptr [ebx]
push dword ptr [ebp-28]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FE5
jmp eax
.Lt_0FE5:
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-28]
mov dword ptr [ebp-32], 0
push offset _Lt_00C0
push 4055
mov eax, dword ptr [ebp+8]
add eax, 44
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
add eax, 40
push dword ptr [eax]
push dword ptr [ebp-32]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FE6
jmp eax
.Lt_0FE6:
add ebx, dword ptr [ebp-32]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov dword ptr [ebx], 1
.Lt_0FDD:
.Lt_0FDC:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-20], ebx
push offset _Lt_00C0
push 4060
mov ebx, dword ptr [ebp+8]
add ebx, 32
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
add ebx, 28
push dword ptr [ebx]
push dword ptr [ebp-20]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FE7
jmp eax
.Lt_0FE7:
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-20]
mov dword ptr [ebp-24], 1
push offset _Lt_00C0
push 4060
mov eax, dword ptr [ebp+8]
add eax, 44
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
add eax, 40
push dword ptr [eax]
push dword ptr [ebp-24]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_0FE8
jmp eax
.Lt_0FE8:
add ebx, dword ptr [ebp-24]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx], eax
.Lt_0FD9:
inc dword ptr [ebp-4]
.Lt_0FD8:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-4], eax
jle .Lt_0FDB
.Lt_0FDA:
.Lt_0FD6:
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
.Lt_0FF1:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0FFB
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_0FF3:
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
push offset _Lt_0FF8
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0FF7
.Lt_0FF9:
jmp .Lt_0FF4
.Lt_0FF7:
.Lt_0FF6:
.Lt_0FF5:
jmp .Lt_0FF3
.Lt_0FF4:
.Lt_0FF2:
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
.Lt_0FFD:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-320], eax
push offset _Lt_1104
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
push offset _Lt_0FFF
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
push offset _Lt_1000
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
push offset _Lt_009B
push -1
push -1
push offset _MAPNAME_STR
push -1
push 2
push offset _Lt_009B
push -1
push 2
push offset _Lt_0116
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
push offset _Lt_1006
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
push offset _Lt_1008
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
.Lt_100D:
mov dword ptr [ebp-8], 1
.Lt_1011:
push offset _DATA_TABLE
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
push 0
push -1
push 2
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_1014
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
push offset _Lt_00C0
push 4103
push 4
push dword ptr [ebp-328]
fstp qword ptr [ebp-400]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1106
jmp eax
.Lt_1106:
mov eax, dword ptr [ebp-328]
imul eax, 3
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-332], ebx
push offset _Lt_00C0
push 4103
push 2
push dword ptr [ebp-332]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1107
jmp eax
.Lt_1107:
add ebx, dword ptr [ebp-332]
fld qword ptr [ebp-400]
fistp word ptr [_D_SIA+ebx*2]
lea ebx, [ebp-392]
push ebx
call _fb_StrDelete@4
.Lt_100F:
inc dword ptr [ebp-8]
.Lt_100E:
cmp dword ptr [ebp-8], 2
jle .Lt_1011
.Lt_1010:
.Lt_100B:
inc dword ptr [ebp-4]
.Lt_100A:
cmp dword ptr [ebp-4], 4
jle .Lt_100D
.Lt_100C:
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
push offset _Lt_101C
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
push offset _Lt_101E
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
push offset _Lt_1020
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
push offset _Lt_1022
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
push offset _Lt_1024
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
push offset _Lt_1026
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
push offset _Lt_1028
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
.Lt_102D:
mov dword ptr [ebp-4], 1
.Lt_1031:
push offset _DATA_TABLE
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
push 0
push -1
push 2
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_1014
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
push offset _Lt_00C0
push 4128
push 4
push dword ptr [ebp-328]
fstp qword ptr [ebp-400]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1109
jmp eax
.Lt_1109:
mov eax, dword ptr [ebp-328]
imul eax, 3
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-332], ebx
push offset _Lt_00C0
push 4128
push 2
push dword ptr [ebp-332]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_110A
jmp eax
.Lt_110A:
add ebx, dword ptr [ebp-332]
fld qword ptr [ebp-400]
fistp word ptr [_D_SIA+ebx*2]
lea ebx, [ebp-392]
push ebx
call _fb_StrDelete@4
.Lt_102F:
inc dword ptr [ebp-4]
.Lt_102E:
cmp dword ptr [ebp-4], 2
jle .Lt_1031
.Lt_1030:
.Lt_102B:
inc dword ptr [ebp-8]
.Lt_102A:
cmp dword ptr [ebp-8], 4
jle .Lt_102D
.Lt_102C:
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
jmp .Lt_103A
.Lt_103D:
mov dword ptr [ebp-8], 1
.Lt_1041:
push offset _DATA_TABLE
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
push 0
push -1
push 2
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 9
push offset _Lt_1043
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
push offset _Lt_00C0
push 4135
mov eax, offset _WIN_SIA + 32
push dword ptr [eax]
mov eax, offset _WIN_SIA + 28
push dword ptr [eax]
push dword ptr [ebp-332]
fstp qword ptr [ebp-400]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_110C
jmp eax
.Lt_110C:
mov eax, dword ptr [ebp-332]
sal eax, 1
add eax, dword ptr [_WIN_SIA]
fld qword ptr [ebp-400]
fistp word ptr [eax]
lea eax, [ebp-392]
push eax
call _fb_StrDelete@4
.Lt_103F:
inc dword ptr [ebp-8]
.Lt_103E:
cmp dword ptr [ebp-8], 2
jle .Lt_1041
.Lt_1040:
.Lt_103B:
inc dword ptr [ebp-4]
.Lt_103A:
mov eax, dword ptr [ebp-328]
cmp dword ptr [ebp-4], eax
jle .Lt_103D
.Lt_103C:
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
.Lt_104C:
mov dword ptr [ebp-4], 1
.Lt_1050:
push offset _DATA_TABLE
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
push 0
push -1
push 2
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_T_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 7
push offset _Lt_1052
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
push offset _Lt_00C0
push 4144
push 64
push dword ptr [ebp-328]
fstp qword ptr [ebp-372]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_110E
jmp eax
.Lt_110E:
mov eax, dword ptr [ebp-328]
fld qword ptr [ebp-372]
fistp word ptr [_L_SIA+eax*2]
lea eax, [ebp-364]
push eax
call _fb_StrDelete@4
.Lt_104E:
inc dword ptr [ebp-4]
.Lt_104D:
cmp dword ptr [ebp-4], 2
jle .Lt_1050
.Lt_104F:
.Lt_104A:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_1049:
movsx eax, word ptr [_T_SI]
cmp eax, 64
jle .Lt_104C
.Lt_104B:
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push 9
push offset _Lt_1056
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
jmp .Lt_1059
.Lt_105C:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-332], ax
jmp .Lt_105E
.Lt_1061:
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
push 0
push -1
push 2
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1063
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
push offset _Lt_00C0
push 4153
push 65536
push dword ptr [ebp-336]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1110
jmp eax
.Lt_1110:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_106A
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
push offset _Lt_00C0
push 4154
push 65536
push dword ptr [ebp-400]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1111
jmp eax
.Lt_1111:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1071
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
push offset _Lt_00C0
push 4155
push 65536
push dword ptr [ebp-464]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1112
jmp eax
.Lt_1112:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1078
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
push offset _Lt_00C0
push 4156
push 65536
push dword ptr [ebp-528]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1113
jmp eax
.Lt_1113:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 18
push offset _Lt_107F
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
push offset _Lt_00C0
push 4157
push 65536
push dword ptr [ebp-592]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1114
jmp eax
.Lt_1114:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 16
push offset _Lt_1086
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
push offset _Lt_00C0
push 4158
push 65536
push dword ptr [ebp-656]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1115
jmp eax
.Lt_1115:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_108D
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
push offset _Lt_00C0
push 4161
push 65536
push dword ptr [ebp-720]
fstp qword ptr [ebp-1812]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1116
jmp eax
.Lt_1116:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_1094
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
push offset _Lt_00C0
push 4162
push 65536
push dword ptr [ebp-784]
fstp qword ptr [ebp-1820]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1117
jmp eax
.Lt_1117:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_109B
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
push offset _Lt_00C0
push 4163
push 65536
push dword ptr [ebp-848]
fstp qword ptr [ebp-1828]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1118
jmp eax
.Lt_1118:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10A2
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
push offset _Lt_00C0
push 4164
push 65536
push dword ptr [ebp-912]
fstp qword ptr [ebp-1836]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1119
jmp eax
.Lt_1119:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10A9
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
push offset _Lt_00C0
push 4165
push 65536
push dword ptr [ebp-976]
fstp qword ptr [ebp-1844]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111A
jmp eax
.Lt_111A:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10B0
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
push offset _Lt_00C0
push 4166
push 65536
push dword ptr [ebp-1040]
fstp qword ptr [ebp-1852]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111B
jmp eax
.Lt_111B:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10B7
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
push offset _Lt_00C0
push 4167
push 65536
push dword ptr [ebp-1104]
fstp qword ptr [ebp-1860]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111C
jmp eax
.Lt_111C:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10BE
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
push offset _Lt_00C0
push 4168
push 65536
push dword ptr [ebp-1168]
fstp qword ptr [ebp-1868]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111D
jmp eax
.Lt_111D:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10C5
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
push offset _Lt_00C0
push 4169
push 65536
push dword ptr [ebp-1232]
fstp qword ptr [ebp-1876]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111E
jmp eax
.Lt_111E:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10CC
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
push offset _Lt_00C0
push 4170
push 65536
push dword ptr [ebp-1296]
fstp qword ptr [ebp-1884]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_111F
jmp eax
.Lt_111F:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_10D3
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
push offset _Lt_00C0
push 4171
push 65536
push dword ptr [ebp-1360]
fstp qword ptr [ebp-1892]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1120
jmp eax
.Lt_1120:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_10DA
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
push offset _Lt_00C0
push 4172
push 65536
push dword ptr [ebp-1424]
fstp qword ptr [ebp-1900]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1121
jmp eax
.Lt_1121:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10E1
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
push offset _Lt_00C0
push 4173
push 65536
push dword ptr [ebp-1488]
fstp qword ptr [ebp-1908]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1122
jmp eax
.Lt_1122:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10E8
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
push offset _Lt_00C0
push 4174
push 65536
push dword ptr [ebp-1552]
fstp qword ptr [ebp-1916]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1123
jmp eax
.Lt_1123:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10EF
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
push offset _Lt_00C0
push 4175
push 65536
push dword ptr [ebp-1616]
fstp qword ptr [ebp-1924]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1124
jmp eax
.Lt_1124:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10F6
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
push offset _Lt_00C0
push 4176
push 65536
push dword ptr [ebp-1680]
fstp qword ptr [ebp-1932]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1125
jmp eax
.Lt_1125:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10FD
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
push offset _Lt_00C0
push 4177
push 65536
push dword ptr [ebp-1744]
fstp qword ptr [ebp-1940]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1126
jmp eax
.Lt_1126:
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
.Lt_105F:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_105E:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-332]
cmp eax, ebx
jle .Lt_1061
.Lt_1060:
.Lt_105A:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_1059:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-328]
cmp ebx, eax
jle .Lt_105C
.Lt_105B:
push dword ptr [_Lt_0297+4]
push dword ptr [_Lt_0297]
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
.Lt_0FFE:
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
.Lt_1138:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-420], eax
push offset _Lt_1239
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
push offset _Lt_009B
push -1
push -1
push offset _MAPNAME_STR
push 13
push offset _Lt_113B
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
push offset _Lt_1000
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
push offset _Lt_1006
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
push offset _Lt_1008
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
.Lt_1146:
mov dword ptr [ebp-8], 1
.Lt_114A:
push offset _NAMES_BUFFER
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
push 0
push -1
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-488], eax
push offset _Lt_00C0
push 4210
push 4
push dword ptr [ebp-488]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_123B
jmp eax
.Lt_123B:
mov eax, dword ptr [ebp-488]
imul eax, 3
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-492], ebx
push offset _Lt_00C0
push 4210
push 2
push dword ptr [ebp-492]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_123C
jmp eax
.Lt_123C:
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
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_1014
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
.Lt_1148:
inc dword ptr [ebp-8]
.Lt_1147:
cmp dword ptr [ebp-8], 2
jle .Lt_114A
.Lt_1149:
.Lt_1144:
inc dword ptr [ebp-4]
.Lt_1143:
cmp dword ptr [ebp-4], 4
jle .Lt_1146
.Lt_1145:
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
push offset _Lt_101C
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
push offset _Lt_101E
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
push offset _Lt_1020
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
push offset _Lt_1022
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
push offset _Lt_1024
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
push offset _Lt_1026
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
push offset _Lt_1028
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
.Lt_1162:
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
je .Lt_1163
lea eax, [.Lt_1163]
push eax
lea eax, [.Lt_1162]
push eax
push offset _Lt_00C0
push 4226
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_1163:
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
.Lt_1167:
mov dword ptr [ebp-4], 1
.Lt_116B:
push offset _NAMES_BUFFER
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
push 0
push -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-488], eax
push offset _Lt_00C0
push 4231
push 4
push dword ptr [ebp-488]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_123D
jmp eax
.Lt_123D:
mov eax, dword ptr [ebp-488]
imul eax, 3
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-492], ebx
push offset _Lt_00C0
push 4231
push 2
push dword ptr [ebp-492]
mov ebx, eax
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_123E
jmp eax
.Lt_123E:
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
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_1014
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
.Lt_1169:
inc dword ptr [ebp-4]
.Lt_1168:
cmp dword ptr [ebp-4], 2
jle .Lt_116B
.Lt_116A:
.Lt_1165:
inc dword ptr [ebp-8]
.Lt_1164:
cmp dword ptr [ebp-8], 4
jle .Lt_1167
.Lt_1166:
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
jmp .Lt_1175
.Lt_1178:
mov dword ptr [ebp-8], 1
.Lt_117C:
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
push offset _Lt_00C0
push 4238
mov eax, offset _WIN_SIA + 32
push dword ptr [eax]
mov eax, offset _WIN_SIA + 28
push dword ptr [eax]
push dword ptr [ebp-492]
call _fb_ArrayBoundChk@20
test eax, eax
je .Lt_123F
jmp eax
.Lt_123F:
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
push offset _Lt_1016
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 9
push offset _Lt_1043
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
.Lt_117A:
inc dword ptr [ebp-8]
.Lt_1179:
cmp dword ptr [ebp-8], 2
jle .Lt_117C
.Lt_117B:
.Lt_1176:
inc dword ptr [ebp-4]
.Lt_1175:
mov eax, dword ptr [ebp-428]
cmp dword ptr [ebp-4], eax
jle .Lt_1178
.Lt_1177:
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
.Lt_1187:
mov dword ptr [ebp-4], 1
.Lt_118B:
push offset _NAMES_BUFFER
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
push 0
push -1
movsx eax, word ptr [_T_SI]
mov dword ptr [ebp-464], eax
push offset _Lt_00C0
push 4246
push 64
push dword ptr [ebp-464]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1240
jmp eax
.Lt_1240:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_T_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 7
push offset _Lt_1052
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
.Lt_1189:
inc dword ptr [ebp-4]
.Lt_1188:
cmp dword ptr [ebp-4], 2
jle .Lt_118B
.Lt_118A:
.Lt_1185:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_1184:
movsx eax, word ptr [_T_SI]
cmp eax, 64
jle .Lt_1187
.Lt_1186:
push offset _NAMES_BUFFER
push offset _CTRL_STR
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
push 0
push 9
push offset _Lt_1056
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
jmp .Lt_1193
.Lt_1196:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-432], ax
jmp .Lt_1198
.Lt_119B:
push offset _NAMES_BUFFER
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
mov dword ptr [ebp-496], eax
push offset _Lt_00C0
push 4255
push 65536
push dword ptr [ebp-496]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1241
jmp eax
.Lt_1241:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1063
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
push offset _Lt_00C0
push 4256
push 65536
push dword ptr [ebp-560]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1242
jmp eax
.Lt_1242:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_106A
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
push offset _Lt_00C0
push 4257
push 65536
push dword ptr [ebp-624]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1243
jmp eax
.Lt_1243:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1071
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
push offset _Lt_00C0
push 4258
push 65536
push dword ptr [ebp-700]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1244
jmp eax
.Lt_1244:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_1078
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
push offset _Lt_00C0
push 4259
push 65536
push dword ptr [ebp-764]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1245
jmp eax
.Lt_1245:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 18
push offset _Lt_107F
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
push offset _Lt_00C0
push 4260
push 65536
push dword ptr [ebp-828]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1246
jmp eax
.Lt_1246:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 16
push offset _Lt_1086
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
push offset _Lt_00C0
push 4263
push 65536
push dword ptr [ebp-892]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1247
jmp eax
.Lt_1247:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_108D
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
push offset _Lt_00C0
push 4264
push 65536
push dword ptr [ebp-968]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1248
jmp eax
.Lt_1248:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_1094
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
push offset _Lt_00C0
push 4265
push 65536
push dword ptr [ebp-1044]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1249
jmp eax
.Lt_1249:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_109B
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
push offset _Lt_00C0
push 4266
push 65536
push dword ptr [ebp-1120]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124A
jmp eax
.Lt_124A:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10A2
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
push offset _Lt_00C0
push 4267
push 65536
push dword ptr [ebp-1196]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124B
jmp eax
.Lt_124B:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10A9
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
push offset _Lt_00C0
push 4268
push 65536
push dword ptr [ebp-1272]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124C
jmp eax
.Lt_124C:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10B0
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
push offset _Lt_00C0
push 4269
push 65536
push dword ptr [ebp-1348]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124D
jmp eax
.Lt_124D:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_10B7
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
push offset _Lt_00C0
push 4270
push 65536
push dword ptr [ebp-1424]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124E
jmp eax
.Lt_124E:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10BE
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
push offset _Lt_00C0
push 4271
push 65536
push dword ptr [ebp-1500]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_124F
jmp eax
.Lt_124F:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10C5
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
push offset _Lt_00C0
push 4272
push 65536
push dword ptr [ebp-1576]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1250
jmp eax
.Lt_1250:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10CC
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
push offset _Lt_00C0
push 4273
push 65536
push dword ptr [ebp-1652]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1251
jmp eax
.Lt_1251:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_10D3
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
push offset _Lt_00C0
push 4274
push 65536
push dword ptr [ebp-1728]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1252
jmp eax
.Lt_1252:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_10DA
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
push offset _Lt_00C0
push 4275
push 65536
push dword ptr [ebp-1804]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1253
jmp eax
.Lt_1253:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10E1
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
push offset _Lt_00C0
push 4276
push 65536
push dword ptr [ebp-1880]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1254
jmp eax
.Lt_1254:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10E8
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
push offset _Lt_00C0
push 4277
push 65536
push dword ptr [ebp-1956]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1255
jmp eax
.Lt_1255:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_10EF
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
push offset _Lt_00C0
push 4278
push 65536
push dword ptr [ebp-2032]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1256
jmp eax
.Lt_1256:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10F6
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
push offset _Lt_00C0
push 4279
push 65536
push dword ptr [ebp-2108]
call _fb_ArraySngBoundChk@16
test eax, eax
je .Lt_1257
jmp eax
.Lt_1257:
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
push offset _Lt_1016
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_1015
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_10FD
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
.Lt_1199:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_1198:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-432]
cmp eax, ebx
jle .Lt_119B
.Lt_119A:
.Lt_1194:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_1193:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-428]
cmp ebx, eax
jle .Lt_1196
.Lt_1195:
push dword ptr [_Lt_0297+4]
push dword ptr [_Lt_0297]
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
.Lt_1139:
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
.Lt_1258:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-40], eax
push offset _Lt_1260
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
push offset _Lt_125B
push -1
push -1
push dword ptr [ebp+8]
push 8
push offset _Lt_125A
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
.Lt_1259:
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
.Lt_1262:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-40], eax
push offset _Lt_1268
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-44], eax
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_125B
push -1
push -1
push dword ptr [ebp+8]
push 8
push offset _Lt_125A
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
.Lt_1263:
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
push offset _Lt_00C0
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
push offset _.Lt_00C6
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
.Lt_00B0:
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
je .Lt_00B1
push offset .Lt_00B1
push offset .Lt_00B0
push offset _Lt_00B2
push 29
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B1:
.Lt_00B3:
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
je .Lt_00B4
push offset .Lt_00B4
push offset .Lt_00B3
push offset _Lt_00B2
push 31
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B4:
.Lt_00B5:
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
je .Lt_00B6
push offset .Lt_00B6
push offset .Lt_00B5
push offset _Lt_00B2
push 32
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B6:
.Lt_00B7:
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
je .Lt_00B8
push offset .Lt_00B8
push offset .Lt_00B7
push offset _Lt_00B2
push 32
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B8:
.Lt_00BE:
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
je .Lt_00BF
push offset .Lt_00BF
push offset .Lt_00BE
push offset _Lt_00C0
push 222
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00BF:
.Lt_00C1:
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
je .Lt_00C2
push offset .Lt_00C2
push offset .Lt_00C1
push offset _Lt_00C0
push 223
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00C2:
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
push offset _Lt_00A1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_009F:
.Lt_00A0:
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
.Lt_00A4:
push offset _Lt_00A1
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
.Lt_00A5:
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
.Lt_00AC:
push offset _Lt_00A1
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_0000
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-8], eax
.Lt_00AD:
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
.Lt_126D:
push offset _Lt_00C0
call _fb_ErrorSetModName@4
mov dword ptr [ebp-4], eax
push offset _Lt_1271
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
.Lt_126E:
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
_Lt_0021:	.ascii	"C:\\ag\\Roe 068\\inc\\FBImage.bi\0"
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
_Lt_009B:	.ascii	"\"\0"
.balign 4
_Lt_009D:	.ascii	",\0"
.balign 4
_Lt_00A1:	.ascii	"C:\\ag\\Roe 068\\inc\\Names.bi\0"

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
_Lt_00B2:	.ascii	"C:\\ag\\Roe 068\\inc\\CLV.bi\0"
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
_Lt_00C0:	.ascii	"puzzlum-fbc068.bas\0"
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
_Lt_00C3:
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
_.Lt_00C6:
.short 1
.int _Lt_00C8
.short 1
.int _Lt_00C8
.short -1
.int _.Lt_00CA
.balign 4
_Lt_00C8:	.ascii	"1\0"
.balign 4
_.Lt_00CA:
.short 1
.int _Lt_00C8
.short 1
.int _Lt_00CC
.short -1
.int _.Lt_00CE
.balign 4
_Lt_00CC:	.ascii	"4\0"
.balign 4
_.Lt_00CE:
.short 1
.int _Lt_00C8
.short 1
.int _Lt_00D0
.short -1
.int _.Lt_00D2
.balign 4
_Lt_00D0:	.ascii	"8\0"
.balign 4
_.Lt_00D2:
.short 1
.int _Lt_00C8
.short 2
.int _Lt_00D4
.short -1
.int _.Lt_00D6
.balign 4
_Lt_00D4:	.ascii	"12\0"
.balign 4
_.Lt_00D6:
.short 1
.int _Lt_00C8
.short 2
.int _Lt_00D8
.short -1
.long 0
.balign 4
_Lt_00D8:	.ascii	"16\0"
.balign 4
_Lt_00DF:	.ascii	".\\\0"
.balign 4
_Lt_00E0:	.ascii	"fonts\\\0"
.balign 4
_Lt_00E1:	.ascii	"logos\\\0"
.balign 4
_Lt_00E2:	.ascii	"sprites\\\0"
.balign 4
_Lt_00E3:	.ascii	"pal\\\0"
.balign 4
_Lt_00E4:	.ascii	"maps\\\0"
.balign 4
_Lt_00E5:	.ascii	"help\\\0"
.balign 4
_Lt_00E6:	.ascii	"roe4help.hlp\0"
.balign 4
_Lt_00E7:	.ascii	"demo.vds\0"
.balign 4
_Lt_00E8:	.ascii	"lvup\\\0"
.balign 4
_Lt_00E9:	.ascii	"roe_lvup.dat\0"
.balign 4
_Lt_00EA:	.ascii	".\\dict\\input.txt\0"
.balign 4
_Lt_00EC:	.ascii	"QBPALVGA.DAT\0"
.balign 4
_Lt_00F0:	.ascii	".\\fonts\\mishap22.font.png\0"
.balign 4
_Lt_00F2:	.ascii	".\\fonts\\roe00.font.png\0"
.balign 4
_Lt_00F4:	.ascii	"roe.splash.png\0"
.balign 4
_Lt_00FA:	.ascii	"[F1 Save|F2 Load|F3 Shop]\0"
.balign 4
_Lt_0103:	.ascii	"t\0"
.balign 4
_Lt_0115:	.ascii	"L ||\0"
.balign 4
_Lt_0116:	.ascii	" \0"
.balign 4
_Lt_011A:	.ascii	"L||\0"
.balign 4
_Lt_0121:	.ascii	"LN_ROE\0"
.balign 4
_Lt_0130:	.ascii	".\\dict\\names.txt\0"
.balign 4
_Lt_0148:	.ascii	"pndximp_\0"
.balign 4
_Lt_014B:	.ascii	"dust\0"
.balign 4
_Lt_0157:	.ascii	"____\0"
.balign 4
_Lt_015A:	.ascii	"________\0"
.balign 4
_Lt_015F:	.ascii	"spdr\0"
.balign 4
_Lt_0161:	.ascii	"Spider\0"
.balign 4
_Lt_0162:	.ascii	"movebiteweb_\0"
.balign 4
_Lt_0165:	.ascii	"0001\0"
.balign 4
_Lt_0169:	.ascii	"vnom\0"
.balign 4
_Lt_016B:	.ascii	"wall\0"
.balign 4
_Lt_016E:	.ascii	"web_\0"
.balign 4
_Lt_0170:	.ascii	"Web\0"
.balign 4
_Lt_0172:	.ascii	"grml\0"
.balign 4
_Lt_0174:	.ascii	"Gremlin\0"
.balign 4
_Lt_0175:	.ascii	"movebitepnch\0"
.balign 4
_Lt_0178:	.ascii	"dggr\0"
.balign 4
_Lt_017A:	.ascii	"pndx\0"
.balign 4
_Lt_017C:	.ascii	"Poindexter\0"
.balign 4
_Lt_017D:	.ascii	"wstf\0"
.balign 4
_Lt_017F:	.ascii	"dtby\0"
.balign 4
_Lt_0181:	.ascii	"Dust Bunny\0"
.balign 4
_Lt_0182:	.ascii	"movebitekickdtbydust\0"
.balign 4
_Lt_0184:	.ascii	"shkt\0"
.balign 4
_Lt_0186:	.ascii	"Shiny Knight\0"
.balign 4
_Lt_0187:	.ascii	"movepnchdggr\0"
.balign 4
_Lt_0189:	.ascii	"emgd\0"
.balign 4
_Lt_018B:	.ascii	"Emerald Guard\0"
.balign 4
_Lt_0190:	.ascii	"pike\0"
.balign 4
_Lt_0192:	.ascii	"door\0"
.balign 4
_Lt_0194:	.ascii	"Door\0"
.balign 4
_Lt_0198:	.ascii	"loc1\0"
.balign 4
_Lt_019B:	.ascii	"loc2\0"
.balign 4
_Lt_019E:	.ascii	"loc3\0"
.balign 4
_Lt_01A0:	.ascii	"imp_\0"
.balign 4
_Lt_01A2:	.ascii	"Little Imp\0"
.balign 4
_Lt_01A3:	.ascii	"movewingfire\0"
.balign 4
_Lt_01A6:	.ascii	"Merchant\0"
.balign 4
_Lt_01A7:	.ascii	"dggrgrplseed\0"
.balign 4
_Lt_01AC:	.ascii	"chst\0"
.balign 4
_Lt_01AE:	.ascii	"Treasure chest\0"
.balign 4
_Lt_01B1:	.ascii	"key1\0"
.balign 4
_Lt_01B2:	.ascii	"key2\0"
.balign 4
_Lt_01B4:	.ascii	"bldr\0"
.balign 4
_Lt_01B6:	.ascii	"Big boulder\0"
.balign 4
_Lt_01BA:	.ascii	"LN_STARTUP\0"
.balign 8
_Lt_01BC:	.quad	0x4000000000000000
.balign 4
_Lt_01BD:	.long	0x40200000
.balign 4
_Lt_01C1:	.long	0x3F800000
.balign 8
_Lt_01C2:	.quad	0x3FF0000000000000
.balign 4
_Lt_01C9:	.long	0x41200000
.balign 4
_Lt_01CA:	.long	0x41A00000
.balign 4
_Lt_01CB:	.long	0x40A00000
.balign 4
_Lt_01CC:	.long	0x43BE0000
.balign 4
_Lt_01CD:	.long	0x40400000
.balign 4
_Lt_01CE:	.long	0x40000000
.balign 4
_Lt_01CF:	.long	0x42200000
.balign 4
_Lt_01D0:	.long	0x42480000
.balign 8
_Lt_01D1:	.quad	0x3FC999999999999A
.balign 4
_Lt_01D2:	.long	0x41C80000
.balign 4
_Lt_01D3:	.long	0x42B40000
.balign 4
_Lt_01D4:	.long	0x41F00000
.balign 4
_Lt_01D5:	.long	0x00000000
.balign 4
_Lt_01D6:	.long	0x41700000
.balign 4
_Lt_01D7:	.long	0x3DCCCCCD
.balign 4
_Lt_01D8:	.long	0x3D8F5C29
.balign 4
_Lt_01D9:	.long	0x3F99999A
.balign 4
_Lt_01DA:	.long	0x438C0000
.balign 4
_Lt_01DB:	.long	0x42340000
.balign 4
_Lt_01DC:	.long	0x42DC0000
.balign 4
_Lt_01DD:	.long	0x40800000
.balign 4
_Lt_01DE:	.long	0x41880000
.balign 4
_Lt_01DF:	.long	0x41400000
.balign 4
_Lt_01E0:	.long	0x3DF5C28F
.balign 8
_Lt_01E1:	.quad	0x3FB999999999999A
.balign 8
_Lt_01E2:	.quad	0x3FD999999999999A
.balign 4
_Lt_01E3:	.long	0x430C0000
.balign 4
_Lt_01E4:	.long	0x3E4CCCCD
.balign 4
_Lt_01E5:	.long	0x41C00000
.balign 4
_Lt_01E6:	.long	0x3E99999A
.balign 4
_Lt_01E7:	.long	0x42C80000
.balign 4
_Lt_01E8:	.long	0x447A0000
.balign 4
_Lt_01F2:	.ascii	"Puzzlum : Realm of Existence\0"
.balign 4
_Lt_01F3:	.ascii	"Build: puzzlum-fbc068.200908170813\0"
.balign 4
_Lt_01F4:	.ascii	"Created 1989-2009 Timothy Robert Keal\0"
.balign 4
_Lt_01F5:	.ascii	"Released under Gnu Public License 2.0\0"
.balign 4
_Lt_01F6:	.ascii	"http://www.gnu.org/copyleft/gpl.html\0"
.balign 4
_Lt_01F7:	.ascii	"http://puzzlum.retromachineshop.com/\0"
.balign 4
_Lt_01F8:	.ascii	"irc://chat.freenode.net/puzzlum\0"
.balign 4
_Lt_01F9:	.ascii	"mailto:jargon@juno.com\0"
.balign 4
_Lt_01FA:	.ascii	" (H)elp\0"
.balign 4
_Lt_01FB:	.ascii	" (C)ontinue\0"
.balign 4
_Lt_01FC:	.ascii	" (R)estart\0"
.balign 4
_Lt_01FD:	.ascii	" (Q)uit\0"
.balign 4
_Lt_01FE:	.ascii	"r\0"
.balign 4
_Lt_01FF:	.ascii	"R\0"
.balign 4
_Lt_0202:	.ascii	"q\0"
.balign 4
_Lt_0203:	.ascii	"Q\0"
.balign 4
_Lt_0206:	.ascii	"h\0"
.balign 4
_Lt_0207:	.ascii	"H\0"
.balign 4
_Lt_020A:	.ascii	"c\0"
.balign 4
_Lt_020B:	.ascii	"C\0"
.balign 4
_Lt_020D:	.ascii	"LN_STARTTITLE\0"
.balign 4
_Lt_022B:	.ascii	"\376 page start\0"
.balign 4
_Lt_022E:	.ascii	"\376 page end\0"
.balign 4
_Lt_0231:	.ascii	" (T)itle\0"
.balign 4
_Lt_0235:	.ascii	"T\0"
.balign 4
_Lt_023A:	.ascii	"\376 end\0"
.balign 4
_Lt_023F:	.ascii	"\376 COLOR\0"
.balign 4
_Lt_0249:	.ascii	"LN_STARTHELP\0"
.balign 4
_Lt_0266:	.ascii	"zzzz\0"
.balign 4
_Lt_027D:	.ascii	"fire\0"
.balign 4
_Lt_0282:	.ascii	"ccts\0"
.balign 4
_Lt_0294:	.ascii	"LN_MAIN\0"
.balign 8
_Lt_0297:	.quad	0x0000000000000000
.balign 4
_Lt_02A1:	.ascii	"LN_COMMAND\0"
.balign 4
_Lt_02A8:	.ascii	"LN_COMMAND2\0"
.balign 4
_Lt_02AC:	.ascii	"0002\0"
.balign 4
_Lt_02B9:	.ascii	"&HFF3B\0"
.balign 4
_Lt_02BC:	.ascii	"&HFF3C\0"
.balign 4
_Lt_02C0:	.ascii	"&HFF3D\0"
.balign 4
_Lt_02C3:	.ascii	"L\0"
.balign 4
_Lt_02C6:	.ascii	"&H20\0"
.balign 4
_Lt_02C9:	.ascii	"&HFF48\0"
.balign 4
_Lt_02CC:	.ascii	"&HFF4D\0"
.balign 4
_Lt_02CF:	.ascii	"&HFF50\0"
.balign 4
_Lt_02D2:	.ascii	"&HFF4B\0"
.balign 4
_Lt_02EA:	.ascii	"||\0"
.balign 4
_Lt_02F9:	.ascii	"&HFF47\0"
.balign 4
_Lt_02FC:	.ascii	"&HFF4F\0"
.balign 4
_Lt_02FF:	.ascii	"&HFF49\0"
.balign 4
_Lt_0304:	.ascii	"&HFF51\0"
.balign 4
_Lt_031B:	.ascii	"LN_COMMAND3\0"
.balign 8
_Lt_031F:	.quad	0x4008000000000000
.balign 8
_Lt_0321:	.quad	0x4010000000000000
.balign 8
_Lt_0325:	.quad	0x4014000000000000
.balign 8
_Lt_0328:	.quad	0xC008000000000000
.balign 4
_Lt_0359:	.ascii	"LN_NAMES\0"
.balign 4
_Lt_0384:	.ascii	"LN_SWAPDATA\0"
.balign 4
_Lt_03AC:	.ascii	"bite\0"
.balign 4
_Lt_03AF:	.ascii	"pnch\0"
.balign 4
_Lt_03B2:	.ascii	"kick\0"
.balign 4
_Lt_03BB:	.ascii	"cure\0"
.balign 4
_Lt_03C3:	.ascii	"LN_ATTACK\0"
.balign 4
_Lt_03EC:	.ascii	"LN_BATTLE\0"
.balign 4
_Lt_0412:	.ascii	"LN_ATTKBITE\0"
.balign 4
_Lt_041A:	.ascii	"LN_ATTKPNCH\0"
.balign 8
_Lt_041D:	.quad	0x4018000000000000
.balign 8
_Lt_041F:	.quad	0x4020000000000000
.balign 4
_Lt_0425:	.ascii	"LN_ATTKWSTF\0"
.balign 4
_Lt_042E:	.ascii	"LN_ATTKKICK\0"
.balign 8
_Lt_0432:	.quad	0x401C000000000000
.balign 4
_Lt_0438:	.ascii	"LN_ATTKVNOM\0"
.balign 8
_Lt_043C:	.quad	0x4024000000000000
.balign 4
_Lt_0442:	.ascii	"LN_ATTKDGGR\0"
.balign 4
_Lt_044B:	.ascii	"LN_ATTKPIKE\0"
.balign 8
_Lt_044E:	.quad	0x4028000000000000
.balign 4
_Lt_0452:	.ascii	"burn\0"
.balign 4
_Lt_0459:	.ascii	"LN_ATTKBURN\0"
.balign 8
_Lt_045D:	.quad	0x402E000000000000
.balign 4
_Lt_0464:	.ascii	"LN_ATTKFIRE\0"
.balign 8
_Lt_0468:	.quad	0x4034000000000000
.balign 4
_Lt_046D:	.ascii	"LN_ATTKWEB\0"
.balign 4
_Lt_0472:	.ascii	"tngl\0"
.balign 4
_Lt_0475:	.ascii	"LN_ATTKTNGL\0"
.balign 4
_Lt_047A:	.ascii	"lash\0"
.balign 4
_Lt_047E:	.ascii	"LN_ATTKLASH\0"
.balign 4
_Lt_04AD:	.ascii	"LN_USECURE\0"
.balign 8
_Lt_04B3:	.quad	0xC020000000000000
.balign 4
_Lt_04DA:	.ascii	"slep\0"
.balign 4
_Lt_0500:	.ascii	"LN_USESLEP\0"
.balign 8
_Lt_0514:	.quad	0xC02E000000000000
.balign 4
_Lt_0526:	.ascii	"pouch\0"
.balign 4
_Lt_052A:	.ascii	"pwch\0"
.balign 4
_Lt_053B:	.ascii	"LN_VICTORY\0"
.balign 4
_Lt_054F:	.long	0x47C34F80
.balign 4
_Lt_0560:	.ascii	"LN_PILLAGE\0"
.balign 4
_Lt_0577:	.ascii	"lvup\0"
.balign 4
_Lt_0582:	.ascii	"ispt\0"
.balign 4
_Lt_058A:	.ascii	"move\0"
.balign 4
_Lt_05B2:	.ascii	"cncl\0"
.balign 4
_Lt_05BC:	.ascii	"\372\0"
.balign 4
_Lt_05BD:	.ascii	"-\0"
.balign 4
_Lt_05BE:	.ascii	"----\0"
.balign 4
_Lt_05BF:	.ascii	"$\0"
.balign 4
_Lt_05DF:	.ascii	"LN_PAYLEVELUP\0"
.balign 4
_Lt_05FF:	.ascii	"grpl\0"
.balign 4
_Lt_0604:	.ascii	"seed\0"
.balign 4
_Lt_0610:	.ascii	"Wha'du like?\0"
.balign 4
_Lt_0617:	.ascii	"____.24\0"
.balign 4
_Lt_0646:	.ascii	"LN_MERCHANT\0"
.balign 4
_Lt_065D:	.ascii	"bye_\0"
.balign 4
_Lt_0660:	.ascii	"Poindexter:\0"
.balign 4
_Lt_0662:	.ascii	"Hi. How are you. My\0"
.balign 4
_Lt_0664:	.ascii	"name is Poindexter. I\0"
.balign 4
_Lt_0666:	.ascii	"am the greatest thief\0"
.balign 4
_Lt_0668:	.ascii	"in the entire world!!!\0"
.balign 4
_Lt_0678:	.ascii	" =\0"
.balign 4
_Lt_068E:	.ascii	"LN_TALK0001\0"
.balign 4
_Lt_069F:	.ascii	"gained\0"
.balign 4
_Lt_06A2:	.ascii	"LN_ABILITYGAIN\0"
.balign 4
_Lt_06CB:	.ascii	"      level up!\0"
.balign 4
_Lt_06CD:	.ascii	"HPmax +\0"
.balign 4
_Lt_06D1:	.ascii	"STRmax +\0"
.balign 4
_Lt_06D5:	.ascii	"ESSmax +\0"
.balign 4
_Lt_06D9:	.ascii	"STRspd up!\0"
.balign 4
_Lt_06DB:	.ascii	"ESSspd up!\0"
.balign 4
_Lt_06E4:	.ascii	"reached LV!\0"
.balign 4
_Lt_06EE:	.ascii	"next:\0"
.balign 4
_Lt_0702:	.ascii	"LN_LEVELUP\0"
.balign 4
_Lt_0725:	.long	0x43470000
.balign 4
_Lt_0726:	.long	0x439F8000
.balign 4
_Lt_0727:	.long	0x43400000
.balign 8
_Lt_072A:	.quad	0x4050000000000000
.balign 4
_Lt_0744:	.ascii	"LN_GAIN\0"
.balign 4
_Lt_0752:	.ascii	"from\0"
.balign 4
_Lt_0757:	.ascii	"!\0"
.balign 4
_Lt_075B:	.ascii	"LN_GETIT\0"
.balign 4
_Lt_076A:	.ascii	"used\0"
.balign 4
_Lt_076C:	.ascii	"on\0"
.balign 4
_Lt_0772:	.ascii	"LN_ATTACKUSING\0"
.balign 4
_Lt_0784:	.ascii	"HP -\0"
.balign 4
_Lt_0788:	.ascii	"STR-\0"
.balign 4
_Lt_078D:	.ascii	"LN_BATTLEATTACK\0"
.balign 4
_Lt_079B:	.ascii	"pillaged\0"
.balign 4
_Lt_07A0:	.ascii	"EXP+\0"
.balign 4
_Lt_07A5:	.ascii	"EXP:\0"
.balign 4
_Lt_07AB:	.ascii	"STR+\0"
.balign 4
_Lt_07AF:	.ascii	"STR:\0"
.balign 4
_Lt_07B5:	.ascii	"LN_DEFEATED\0"
.balign 4
_Lt_07E6:	.ascii	".24\0"
.balign 4
_Lt_080B:	.ascii	"zzzz____.24\0"
.balign 4
_Lt_0817:	.ascii	"rapl\0"
.balign 4
_Lt_082F:	.ascii	"LN_PORTAL\0"
.balign 8
_Lt_0831:	.quad	0xBFF0000000000000
.balign 4
_Lt_083A:	.long	0x41000000
.balign 4
_Lt_083D:	.long	0xBF800000
.balign 4
_Lt_0843:	.ascii	"A RetroMachineShop Featured Project!\0"
.balign 4
_Lt_0846:	.ascii	"LN_TITLE\0"
.balign 4
_Lt_084B:	.ascii	"LN_STATUS\0"
.balign 4
_Lt_0850:	.ascii	"LN_FRAMSTTS\0"
.balign 4
_Lt_0855:	.ascii	"LN_FRAMSTTSITMS\0"
.balign 4
_Lt_0857:	.long	0x41600000
.balign 4
_Lt_0858:	.long	0x41B80000
.balign 4
_Lt_085C:	.ascii	"LV\0"
.balign 4
_Lt_0860:	.ascii	"     \0"
.balign 4
_Lt_0866:	.ascii	"HP\0"
.balign 4
_Lt_086A:	.ascii	"/\0"
.balign 4
_Lt_086E:	.ascii	"STR\0"
.balign 4
_Lt_0875:	.ascii	"ESS\0"
.balign 4
_Lt_087D:	.ascii	"LN_STTS\0"
.balign 8
_Lt_0881:	.quad	0x4059000000000000
.balign 8
_Lt_0884:	.quad	0x40C3880000000000
.balign 4
_Lt_088D:	.ascii	"LN_STTSGPIC\0"
.balign 4
_Lt_0892:	.ascii	"LN_STTSITMS\0"
.balign 4
_Lt_0898:	.ascii	"____pwch\0"
.balign 4
_Lt_089C:	.ascii	"watr\0"
.balign 4
_Lt_08A1:	.ascii	"hole\0"
.balign 4
_Lt_08A2:	.ascii	"holestpsstp2\0"
.balign 4
_Lt_08B0:	.ascii	"LN_MOVE\0"
.balign 4
_Lt_08D2:	.ascii	"LN_WINGMOVE\0"
.balign 4
_Lt_08F2:	.ascii	"LN_FIREMOVE\0"
.balign 4
_Lt_090B:	.ascii	"LN_WEBMOVE\0"
.balign 4
_Lt_091F:	.ascii	"Flame\0"
.balign 4
_Lt_0920:	.ascii	"moveburn\0"
.balign 4
_Lt_0922:	.ascii	"LN_CASTFIRE\0"
.balign 8
_Lt_0928:	.quad	0xC034000000000000
.balign 4
_Lt_092A:	.long	0x42F00000
.balign 4
_Lt_0935:	.ascii	"Sleepy dust\0"
.balign 4
_Lt_0937:	.ascii	"LN_CASTDUST\0"
.balign 4
_Lt_0947:	.ascii	"LN_CASTWEB\0"
.balign 8
_Lt_094A:	.quad	0x406B800000000000
.balign 8
_Lt_094C:	.quad	0xC06B800000000000
.balign 4
_Lt_0957:	.ascii	"LN_CASTSPDR\0"
.balign 8
_Lt_095A:	.quad	0x4074000000000000
.balign 8
_Lt_095C:	.quad	0xC074000000000000
.balign 4
_Lt_0961:	.ascii	"Cactus\0"
.balign 4
_Lt_0963:	.ascii	"LN_CASTCCTS\0"
.balign 4
_Lt_0965:	.long	0x41500000
.balign 4
_Lt_096D:	.ascii	"bitekick\0"
.balign 4
_Lt_096F:	.ascii	"LN_CASTDTBY\0"
.balign 8
_Lt_0972:	.quad	0x4064000000000000
.balign 8
_Lt_0974:	.quad	0xC064000000000000
.balign 4
_Lt_0976:	.long	0x40C00000
.balign 4
_Lt_097B:	.ascii	"LN_GONE\0"
.balign 4
_Lt_0980:	.ascii	"LN_DELETE2\0"
.balign 4
_Lt_0987:	.ascii	"LN_AUTOLEVELUP\0"
.balign 4
_Lt_0992:	.ascii	"LN_STATGAIN\0"
.balign 4
_Lt_09B1:	.ascii	"LN_STATMAX\0"
.balign 4
_Lt_09C6:	.ascii	"LN_NEXTACTION\0"
.balign 4
_Lt_09CD:	.ascii	"LN_NEWACTION\0"
.balign 4
_Lt_09D8:	.ascii	"LN_RANDOMACTION\0"
.balign 4
_Lt_09E2:	.ascii	"LN_GETACTION\0"
.balign 4
_Lt_09ED:	.ascii	"LN_PUTACTION\0"
.balign 4
_Lt_09F8:	.ascii	"LN_TEMPGET\0"
.balign 4
_Lt_0A03:	.ascii	"LN_TEMPPUT\0"
.balign 4
_Lt_0A11:	.ascii	"LN_INBOUNDS\0"
.balign 4
_Lt_0A26:	.ascii	"LN_HAVEIT\0"
.balign 4
_Lt_0A36:	.ascii	"LN_HASIT\0"
.balign 4
_Lt_0A48:	.ascii	"LN_HAVEHADIT\0"
.balign 4
_Lt_0A5D:	.ascii	"LN_HASHADIT\0"
.balign 4
_Lt_0A6A:	.ascii	"LN_HAVEGOTIT\0"
.balign 4
_Lt_0A78:	.ascii	"LN_HASGOTIT\0"
.balign 4
_Lt_0A8A:	.ascii	" EXP\0"
.balign 4
_Lt_0A91:	.ascii	"LN_WINEXP\0"
.balign 4
_Lt_0A9F:	.ascii	"LN_WINDGGR\0"
.balign 4
_Lt_0AA4:	.ascii	"LN_WINPIKE\0"
.balign 4
_Lt_0AA9:	.ascii	"LN_WINGRPL\0"
.balign 4
_Lt_0AAE:	.ascii	"LN_WINSEED\0"
.balign 4
_Lt_0AB3:	.ascii	"LN_WINKEY1\0"
.balign 4
_Lt_0AB8:	.ascii	"LN_WINKEY2\0"
.balign 4
_Lt_0AC1:	.ascii	"LN_WINIT\0"
.balign 4
_Lt_0ACE:	.ascii	"LN_AM\0"
.balign 4
_Lt_0ADE:	.ascii	"LN_ARE\0"
.balign 4
_Lt_0AEE:	.ascii	"LN_HERE\0"
.balign 4
_Lt_0AFE:	.ascii	"LN_THERE\0"
.balign 4
_Lt_0B08:	.ascii	"LN_BLANKCHECK\0"
.balign 4
_Lt_0B0C:	.ascii	"\372Ok\0"
.balign 4
_Lt_0B0F:	.ascii	"LN_OKBUTTON\0"
.balign 4
_Lt_0B16:	.ascii	"&H0D\0"
.balign 4
_Lt_0B18:	.ascii	"LN_WWAIT\0"
.balign 4
_Lt_0B21:	.ascii	"LN_BUTTONWAIT\0"
.balign 4
_Lt_0B25:	.ascii	"%%\0"
.balign 4
_Lt_0B29:	.ascii	"LN_COMMANDWAIT\0"
.balign 4
_Lt_0B30:	.ascii	"LN_FRAMEPUT\0"
.balign 4
_Lt_0B32:	.long	0xC1000000
.balign 4
_Lt_0B33:	.long	0xC1300000
.balign 4
_Lt_0B34:	.long	0xC1100000
.balign 4
_Lt_0B35:	.long	0xC1200000
.balign 4
_Lt_0B36:	.long	0xC0E00000
.balign 4
_Lt_0B37:	.long	0xC0000000
.balign 4
_Lt_0B3B:	.ascii	"LN_AVGFRAME\0"
.balign 4
_Lt_0B40:	.ascii	"LN_SCREENSET\0"
.balign 4
_Lt_0B45:	.ascii	"LN_FINDCRSR\0"
.balign 4
_Lt_0B4A:	.ascii	"LN_SHOWTEXT\0"
.balign 4
_Lt_0B4F:	.ascii	"LN_PRFLBLNK\0"
.balign 4
_Lt_0B6B:	.ascii	"LN_PRFLSET\0"
.balign 4
_Lt_0BCC:	.ascii	"LN_PRFLMAKE\0"
.balign 4
_Lt_0C19:	.ascii	"pndxspdrgrmldtbyemgdshktimp_\0"
.balign 4
_Lt_0C1D:	.ascii	"LN_ACTNCURE\0"
.balign 4
_Lt_0C28:	.ascii	"LN_ACTNBITE\0"
.balign 4
_Lt_0C33:	.ascii	"LN_ACTNPNCH\0"
.balign 4
_Lt_0C3E:	.ascii	"LN_ACTNKICK\0"
.balign 4
_Lt_0C49:	.ascii	"LN_ACTNDGGR\0"
.balign 4
_Lt_0C54:	.ascii	"LN_ACTNPIKE\0"
.balign 4
_Lt_0C5F:	.ascii	"LN_ACTNVNOM\0"
.balign 4
_Lt_0C6A:	.ascii	"LN_ACTNFIRE\0"
.balign 4
_Lt_0C75:	.ascii	"LN_ACTNDUST\0"
.balign 4
_Lt_0C80:	.ascii	"LN_ACTNWEB\0"
.balign 4
_Lt_0C89:	.ascii	"LN_ACTNSPDR\0"
.balign 4
_Lt_0C92:	.ascii	"LN_ACTNCCTS\0"
.balign 4
_Lt_0C9B:	.ascii	"LN_ACTNDTBY\0"
.balign 4
_Lt_0CA2:	.ascii	"LN_ACTNMOVE\0"
.balign 4
_Lt_0CA9:	.ascii	"LN_ACTNWING\0"
.balign 4
_Lt_0CB6:	.ascii	"LN_ACTNWSTF\0"
.balign 4
_Lt_0CC1:	.ascii	"LN_ACTNKEY1\0"
.balign 4
_Lt_0CCA:	.ascii	"LN_ACTNKEY2\0"
.balign 4
_Lt_0CDA:	.ascii	"pwchchst\0"
.balign 4
_Lt_0CF7:	.ascii	"LN_ACTNISPT\0"
.balign 4
_Lt_0D10:	.ascii	"LN_ACTNFIREMOVE\0"
.balign 4
_Lt_0D1B:	.ascii	"LN_ACTNDUSTMOVE\0"
.balign 4
_Lt_0D26:	.ascii	"LN_ACTNWEBMOVE\0"
.balign 4
_Lt_0D3F:	.ascii	"bldrchst\0"
.balign 4
_Lt_0D45:	.ascii	"LN_ACTNGRPL\0"
.balign 8
_Lt_0D49:	.quad	0xC024000000000000
.balign 4
_Lt_0D75:	.ascii	"LN_ACTNRAPL\0"
.balign 4
_Lt_0D83:	.ascii	"pndxgrmlspdrdtbyweb_emgdshkt\0"
.balign 4
_Lt_0D90:	.ascii	"LN_CRTNIMP\0"
.balign 4
_Lt_0D94:	.ascii	"pndxgrmlspdrdtbyweb_shktemgd\0"
.balign 4
_Lt_0D9A:	.ascii	"LN_CRTNFIRE\0"
.balign 4
_Lt_0D9E:	.ascii	"pndxgrmlspdrshktemgdimp_\0"
.balign 4
_Lt_0DA4:	.ascii	"LN_CRTNDUST\0"
.balign 4
_Lt_0DA8:	.ascii	"pndxgrmlspdrdtbyweb_imp_\0"
.balign 4
_Lt_0DBA:	.ascii	"LN_CRTNSHKT\0"
.balign 4
_Lt_0DCF:	.ascii	"LN_CRTNEMGD\0"
.balign 4
_Lt_0DD3:	.ascii	"pndxdtbyspdrimp_emgdshktgrml\0"
.balign 4
_Lt_0DDF:	.ascii	"LN_CRTNSPDR\0"
.balign 4
_Lt_0DE5:	.ascii	"pndxgrmldtbyweb_shktemgdimp_\0"
.balign 4
_Lt_0DED:	.ascii	"LN_CRTNWEB\0"
.balign 4
_Lt_0DF1:	.ascii	"pndxgrmlspdrimp_emgdshkt\0"
.balign 4
_Lt_0E01:	.ascii	"LN_CRTNDTBY\0"
.balign 4
_Lt_0E05:	.ascii	"pndxdtbyspdrimp_emgdshktweb_\0"
.balign 4
_Lt_0E17:	.ascii	"LN_CRTNGRML\0"
.balign 4
_Lt_0E1B:	.ascii	"pndxdtbyspdrimp_emgdshktweb_grmlccts\0"
.balign 4
_Lt_0E45:	.ascii	"LN_CRTNPNDX\0"
.balign 4
_Lt_0E4C:	.ascii	"stpw\0"
.balign 4
_Lt_0E50:	.ascii	"stps\0"
.balign 4
_Lt_0E56:	.ascii	"LN_CRTNCCTS\0"
.balign 4
_Lt_0E60:	.ascii	"dirt\0"
.balign 4
_Lt_0E66:	.ascii	"LN_CRTNBLDR\0"
.balign 4
_Lt_0E70:	.ascii	"\377""\0"
.balign 4
_Lt_0E73:	.ascii	"&HFF\0"
.balign 4
_Lt_0E74:	.ascii	"0\0"
.balign 4
_Lt_0E79:	.ascii	"&H\0"
.balign 4
_Lt_0E81:	.ascii	"CINPUT\0"
.balign 4
_Lt_0E8F:	.ascii	"%\0"
.balign 4
_Lt_0E98:	.ascii	"CURSORPUT\0"
.balign 4
_Lt_0EA1:	.ascii	".\0"
.balign 4
_Lt_0EA9:	.ascii	"PROGRESS_PUT\0"
.balign 4
_Lt_0EAF:	.ascii	"________.24\0"
.balign 4
_Lt_0EB2:	.ascii	"y\0"
.balign 4
_Lt_0EB4:	.ascii	".png\0"
.balign 4
_Lt_0EB9:	.ascii	"x\0"
.balign 4
_Lt_0EC2:	.ascii	"GRAPHICPUT\0"
.balign 4
_Lt_0ECC:	.ascii	"SUSPEND\0"
.balign 4
_Lt_0ED3:	.ascii	"CLS2\0"
.balign 4
_Lt_0ED5:	.long	0x436F0000
.balign 4
_Lt_0EDF:	.ascii	"FILE_PUT_CONTENTS\0"
.balign 4
_Lt_0EEE:	.ascii	"FILE_GET_CONTENTS\0"
.balign 4
_Lt_0EFA:	.ascii	"PAL_LOAD\0"
.balign 4
_Lt_0F02:	.ascii	"MOUSESTATUS\0"
.balign 4
_Lt_0F1A:	.ascii	"CLV_BUFFER_STACK\0"
.balign 4
_Lt_0F3D:	.ascii	"bttnself.24\0"
.balign 4
_Lt_0F42:	.ascii	"bttnnrth.24\0"
.balign 4
_Lt_0F47:	.ascii	"bttneast.24\0"
.balign 4
_Lt_0F4C:	.ascii	"bttnsuth.24\0"
.balign 4
_Lt_0F51:	.ascii	"bttnwest.24\0"
.balign 4
_Lt_0F64:	.ascii	"FRAME_STATUS\0"
.balign 4
_Lt_0F84:	.ascii	"FRAME_INVENTORY\0"
.balign 4
_Lt_0F8E:	.ascii	"Puzzlum\0"
.balign 4
_Lt_0F92:	.ascii	"(T)itle\0"
.balign 4
_Lt_0F95:	.ascii	"FRAME_TITLE\0"
.balign 4
_Lt_0FB7:	.ascii	"FRAME_PUT\0"
.balign 4
_Lt_0FE3:	.ascii	"CLV_GLYPH_INI\0"
.balign 4
_Lt_0FF8:	.ascii	"&HFF0D\0"
.balign 4
_Lt_0FFB:	.ascii	"INPUT_TEXT\0"
.balign 4
_Lt_0FFF:	.ascii	"Loading Map\0"
.balign 4
_Lt_1000:	.ascii	"mapname_str\0"
.balign 4
_Lt_1006:	.ascii	"AA_si\0"
.balign 4
_Lt_1008:	.ascii	"DD_si\0"
.balign 4
_Lt_1014:	.ascii	"d_sia[\0"
.balign 4
_Lt_1015:	.ascii	"][\0"
.balign 4
_Lt_1016:	.ascii	"]\0"
.balign 4
_Lt_101C:	.ascii	"ex_si\0"
.balign 4
_Lt_101E:	.ascii	"dy_si\0"
.balign 4
_Lt_1020:	.ascii	"mdx_si\0"
.balign 4
_Lt_1022:	.ascii	"mdy_si\0"
.balign 4
_Lt_1024:	.ascii	"textcolor_si\0"
.balign 4
_Lt_1026:	.ascii	"textdelay_sf\0"
.balign 4
_Lt_1028:	.ascii	"win_si\0"
.balign 4
_Lt_1043:	.ascii	"win_sia[\0"
.balign 4
_Lt_1052:	.ascii	"l_sia[\0"
.balign 4
_Lt_1056:	.ascii	"ctrl_str\0"
.balign 4
_Lt_1063:	.ascii	"prflidty_str[\0"
.balign 4
_Lt_106A:	.ascii	"prflactn_str[\0"
.balign 4
_Lt_1071:	.ascii	"prflgpic_str[\0"
.balign 4
_Lt_1078:	.ascii	"prflcmnd_str[\0"
.balign 4
_Lt_107F:	.ascii	"prflgpicactn_str[\0"
.balign 4
_Lt_1086:	.ascii	"prflactnct_str[\0"
.balign 4
_Lt_108D:	.ascii	"prflidty_sf[\0"
.balign 4
_Lt_1094:	.ascii	"prflhp_sf[\0"
.balign 4
_Lt_109B:	.ascii	"prflstr_sf[\0"
.balign 4
_Lt_10A2:	.ascii	"prfless_sf[\0"
.balign 4
_Lt_10A9:	.ascii	"prflspd_sf[\0"
.balign 4
_Lt_10B0:	.ascii	"prflarmr_sf[\0"
.balign 4
_Lt_10B7:	.ascii	"prflexp_sf[\0"
.balign 4
_Lt_10BE:	.ascii	"prflvalu_sf[\0"
.balign 4
_Lt_10C5:	.ascii	"prflpirc_sf[\0"
.balign 4
_Lt_10CC:	.ascii	"prflchck_sf[\0"
.balign 4
_Lt_10D3:	.ascii	"prfllv_sf[\0"
.balign 4
_Lt_10DA:	.ascii	"prflhpmax_sf[\0"
.balign 4
_Lt_10E1:	.ascii	"prflstrmax_sf[\0"
.balign 4
_Lt_10E8:	.ascii	"prflessmax_sf[\0"
.balign 4
_Lt_10EF:	.ascii	"prflessspd_sf[\0"
.balign 4
_Lt_10F6:	.ascii	"prflevad_sf[\0"
.balign 4
_Lt_10FD:	.ascii	"prflblnk_sf[\0"
.balign 4
_Lt_1104:	.ascii	"MAP_LOAD\0"
.balign 4
_Lt_113B:	.ascii	"Saving Map \"\0"
.balign 4
_Lt_1239:	.ascii	"MAP_SAVE\0"
.balign 4
_Lt_125A:	.ascii	".\\save\\\0"
.balign 4
_Lt_125B:	.ascii	".dat\0"
.balign 4
_Lt_1260:	.ascii	"SAVEGAME_SAVE\0"
.balign 4
_Lt_1268:	.ascii	"SAVEGAME_LOAD\0"
.balign 4
_Lt_1271:	.ascii	".LT_126C\0"

.section .dtors
.int __GLOBAL__D
