	.intel_syntax noprefix

.section .text
.balign 16

.globl _WIPE_TABLE@4
_WIPE_TABLE@4:
push ebp
mov ebp, esp
push ebx
.Lt_0014:
push 0
push 0
push 1
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push 24
push dword ptr [ebp+8]
call _fb_ArrayRedimObj
add esp, 28
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
call _fb_StrAssign@20
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
lea eax, [ebx+12]
push eax
call _fb_StrAssign@20
.Lt_0015:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _NAMES_PUSH@12
_NAMES_PUSH@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0017:
mov dword ptr [ebp-4], 0
.Lt_0019:
push 1
push dword ptr [ebp+16]
call _fb_ArrayUBound@8
cmp dword ptr [ebp-4], eax
jg .Lt_001A
push -1
push dword ptr [ebp+8]
push -1
mov eax, dword ptr [ebp-4]
imul eax, 24
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_001C
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp-4]
imul eax, 24
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax+12]
push ebx
call _fb_StrAssign@20
jmp .Lt_0018
.Lt_001C:
.Lt_001B:
inc dword ptr [ebp-4]
jmp .Lt_0019
.Lt_001A:
push dword ptr [ebp-4]
push 0
push 1
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push 24
push dword ptr [ebp+16]
call _fb_ArrayRedimPresvObj
add esp, 28
push 0
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
imul ebx, 24
mov eax, dword ptr [ebp+16]
add ebx, dword ptr [eax]
lea eax, [ebx]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp-4]
imul eax, 24
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax+12]
push ebx
call _fb_StrAssign@20
.Lt_0018:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _NAME_AS_STRING@4
_NAME_AS_STRING@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_001E:
push 2
push offset _Lt_0007
push -1
push 1
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0007
push -1
push 1
push dword ptr [ebp+8]
mov ebx, eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0021
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
add eax, -2
push eax
push 2
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _UCWORD@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .Lt_0020
.Lt_0021:
push 0
push -1
push dword ptr [ebp+8]
call _UCWORD@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0020:
.Lt_001F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _NAME_AS_SPECIAL_STRING@8
_NAME_AS_SPECIAL_STRING@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0025:
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _NAME_HEX_AS_STRING@8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _NAME_REF_AS_STRING@8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0026:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _NAME_REF_AS_STRING@8
_NAME_REF_AS_STRING@8:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0027:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrInit@20
push 0
push 3
push offset _Lt_0029
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_002A
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
.Lt_002B:
lea eax, [ebp-32]
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr@12
mov dword ptr [ebp-16], eax
lea eax, [ebp-44]
push eax
push dword ptr [ebp+8]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrLen@8
add eax, dword ptr [ebp-16]
push eax
call _fb_StrInstr@12
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-16]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
cmp ebx, dword ptr [ebp-16]
setg bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
not eax
test eax, eax
je .Lt_002F
jmp .Lt_002C
.Lt_002F:
.Lt_002E:
push 0
push -1
push -1
push -1
push -1
lea eax, [ebp-44]
push eax
call _fb_StrLen@8
add eax, dword ptr [ebp-20]
push eax
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push -1
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
add eax, -4
push eax
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
lea eax, [ebp-56]
push eax
call _SYNC_NAMES@8
push eax
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
.Lt_002D:
jmp .Lt_002B
.Lt_002C:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
.Lt_0028:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _NAME_HEX_AS_STRING@8
_NAME_HEX_AS_STRING@8:
push ebp
mov ebp, esp
sub esp, 100
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0035:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 2
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrInit@20
push 0
push 2
push offset _Lt_0037
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-24], 0
.Lt_0038:
.Lt_003B:
lea eax, [ebp-64]
push eax
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-24]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_003F
jmp .Lt_003C
.Lt_003F:
.Lt_003E:
.Lt_003D:
mov eax, dword ptr [ebp-24]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
lea ebx, [ebp-64]
push ebx
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp-24]
inc ebx
push ebx
mov ebx, eax
call _fb_StrInstr@12
mov ecx, dword ptr [ebp-24]
inc ecx
cmp eax, ecx
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
jne .Lt_003B
.Lt_003C:
cmp dword ptr [ebp-24], 0
jle .Lt_0041
push 0
push -1
push dword ptr [ebp-28]
push -1
lea eax, [ebp-64]
push eax
call _fb_StrLen@8
add eax, dword ptr [ebp-24]
inc eax
push eax
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
jmp .Lt_0040
.Lt_0041:
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
.Lt_0040:
push -1
lea eax, [ebp-76]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_0043
push 0
push -1
push -1
push -1
push -1
lea eax, [ebp-76]
push eax
call _fb_StrLen@8
add eax, dword ptr [ebp-24]
inc eax
push eax
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push -1
push -1
lea eax, [ebp-76]
push eax
call _HEX2ASC@4
push eax
push -1
mov eax, dword ptr [ebp-24]
dec eax
push eax
push dword ptr [ebp+8]
call _fb_LEFT@8
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
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .Lt_0042
.Lt_0043:
jmp .Lt_0039
.Lt_0042:
.Lt_003A:
jmp .Lt_0038
.Lt_0039:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.Lt_0036:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYNC_NAMES@8
_SYNC_NAMES@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0048:
push 1
push dword ptr [ebp+12]
call _fb_ArrayLBound@8
mov dword ptr [ebp-16], eax
.Lt_004A:
push 1
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
cmp dword ptr [ebp-16], eax
jg .Lt_004B
push -1
push 0
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _fb_StrLcase2@8
push eax
push -1
push 0
push dword ptr [ebp+8]
call _fb_StrLcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_004D
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax+12]
push ebx
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_0049
.Lt_004D:
.Lt_004C:
inc dword ptr [ebp-16]
jmp .Lt_004A
.Lt_004B:
push 0
push 3
push offset _Lt_004E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0049:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LOAD_NAMES@8
_LOAD_NAMES@8:
push ebp
mov ebp, esp
.Lt_004F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _LOAD_NAMES_FROM_FILE@8
.Lt_0050:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LOAD_NAMES_FROM_BUFFER@8
_LOAD_NAMES_FROM_BUFFER@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0051:
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
.Lt_0053:
push 2
push offset _Lt_0006
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr@12
test eax, eax
jle .Lt_0054
push 0
push -1
push 2
push offset _Lt_0006
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr@12
dec eax
push eax
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
add eax, 3
push eax
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push 1
push offset _Lt_0008
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-12]
push eax
push 1
call _fb_StrInstr@12
test eax, eax
jle .Lt_0056
push 0
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
test eax, eax
jle .Lt_0058
push 1
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
inc eax
push eax
push 1
push dword ptr [ebp+12]
call _fb_ArrayLBound@8
push eax
push 1
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push 24
push dword ptr [ebp+12]
call _fb_ArrayRedimPresvObj
add esp, 28
jmp .Lt_0057
.Lt_0058:
push 0
push 0
push 1
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push 24
push dword ptr [ebp+12]
call _fb_ArrayRedimObj
add esp, 28
.Lt_0057:
push 0
push -1
push 1
push offset _Lt_0008
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-12]
push eax
push 1
call _fb_StrInstr@12
dec eax
push eax
lea eax, [ebp-12]
push eax
call _fb_LEFT@8
push eax
push -1
push 1
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
imul eax, 24
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
push 0
push -1
push -1
push 1
push offset _Lt_0008
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-12]
push eax
push 1
call _fb_StrInstr@12
inc eax
push eax
lea eax, [ebp-12]
push eax
call _fb_StrMid@12
push eax
push -1
push 1
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
imul eax, 24
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax+12]
push ebx
call _fb_StrAssign@20
.Lt_0056:
.Lt_0055:
jmp .Lt_0053
.Lt_0054:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push 1
push offset _Lt_0008
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-12]
push eax
push 1
call _fb_StrInstr@12
test eax, eax
jle .Lt_005C
push 0
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
test eax, eax
jle .Lt_005E
push 1
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
inc eax
push eax
push 1
push dword ptr [ebp+12]
call _fb_ArrayLBound@8
push eax
push 1
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push 24
push dword ptr [ebp+12]
call _fb_ArrayRedimPresvObj
add esp, 28
jmp .Lt_005D
.Lt_005E:
push 0
push 0
push 1
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push 24
push dword ptr [ebp+12]
call _fb_ArrayRedimObj
add esp, 28
.Lt_005D:
push 0
push -1
push 1
push offset _Lt_0008
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-12]
push eax
push 1
call _fb_StrInstr@12
dec eax
push eax
lea eax, [ebp-12]
push eax
call _fb_LEFT@8
push eax
push -1
push 1
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
imul eax, 24
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
push 0
push -1
push -1
push 1
push offset _Lt_0008
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-12]
push eax
push 1
call _fb_StrInstr@12
inc eax
push eax
lea eax, [ebp-12]
push eax
call _fb_StrMid@12
push eax
push -1
push 1
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
imul eax, 24
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax+12]
push ebx
call _fb_StrAssign@20
.Lt_005C:
.Lt_005B:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_0052:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LOAD_NAMES_FROM_FILE@8
_LOAD_NAMES_FROM_FILE@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0061:
call _fb_FileFree@0
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 0
push 0
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .Lt_0064
push dword ptr [ebp-4]
call _fb_FileClose@4
jmp .Lt_0062
.Lt_0064:
.Lt_0063:
push 0
push -1
push 0
push dword ptr [ebp-4]
call _fb_FileSize@4
mov ebx, eax
push ebx
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push -1
lea eax, [ebp-16]
push eax
push 1
push dword ptr [ebp-4]
call _fb_FileGetStr@16
push dword ptr [ebp-4]
call _fb_FileClose@4
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
call _LOAD_NAMES_FROM_BUFFER@8
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0062:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SAVE_NAMES@8
_SAVE_NAMES@8:
push ebp
mov ebp, esp
.Lt_0065:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SAVE_NAMES_TO_FILE@8
.Lt_0066:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SAVE_NAMES_TO_FILE@8
_SAVE_NAMES_TO_FILE@8:
push ebp
mov ebp, esp
sub esp, 20
.Lt_0067:
call _fb_FileFree@0
mov dword ptr [ebp-4], eax
mov dword ptr [ebp-8], 0
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push dword ptr [ebp+8]
call _fb_FileKill@4
push 0
push dword ptr [ebp-4]
push 0
push 0
push 0
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .Lt_006A
push dword ptr [ebp-4]
call _fb_FileClose@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .Lt_0068
.Lt_006A:
.Lt_0069:
push dword ptr [ebp+12]
lea eax, [ebp-20]
push eax
call _SAVE_NAMES_TO_BUFFER@8
push -1
lea eax, [ebp-20]
push eax
push 1
push dword ptr [ebp-4]
call _fb_FilePutStr@16
push dword ptr [ebp-4]
call _fb_FileClose@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_0068:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SAVE_NAMES_TO_BUFFER@8
_SAVE_NAMES_TO_BUFFER@8:
push ebp
mov ebp, esp
sub esp, 56
push ebx
.Lt_006B:
mov dword ptr [ebp-4], 0
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 1
push dword ptr [ebp+12]
call _fb_ArrayLBound@8
mov dword ptr [ebp-4], eax
push 1
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
mov dword ptr [ebp-20], eax
jmp .Lt_006E
.Lt_0071:
push 1
push dword ptr [ebp+12]
call _fb_ArrayLBound@8
cmp dword ptr [ebp-4], eax
jle .Lt_0073
push 0
push 3
push offset _Lt_0006
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0073:
.Lt_0072:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-4]
imul eax, 24
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax+12]
push ebx
push -1
push 2
push offset _Lt_0008
push -1
mov ebx, dword ptr [ebp-4]
imul ebx, 24
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
lea eax, [ebx]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.Lt_006F:
inc dword ptr [ebp-4]
.Lt_006E:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-4], eax
jle .Lt_0071
.Lt_0070:
push 0
push -1
lea eax, [ebp-16]
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_006C:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _MERGE_NAMES@8
_MERGE_NAMES@8:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0077:
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
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
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
push dword ptr [ebp+8]
lea eax, [ebp-12]
push eax
call _SAVE_NAMES_TO_BUFFER@8
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
call _SAVE_NAMES_TO_BUFFER@8
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp+12]
call _WIPE_TABLE@4
push dword ptr [ebp+12]
lea eax, [ebp-36]
push eax
call _LOAD_NAMES_FROM_BUFFER@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0078:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _UCWORD@4
_UCWORD@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0079:
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _fb_StrLcase2@8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
mov dword ptr [ebp-16], 1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-20], eax
jmp .Lt_007C
.Lt_007F:
mov eax, dword ptr [ebp-16]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push -1
push 32
push 1
mov ebx, eax
call _fb_StrFill1@8
push eax
push -1
push 1
mov eax, dword ptr [ebp-16]
dec eax
push eax
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0081
push 0
push 1
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
call _fb_StrUcase2@8
push eax
push 1
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _fb_StrAssignMid@16
.Lt_0081:
.Lt_0080:
.Lt_007D:
inc dword ptr [ebp-16]
.Lt_007C:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .Lt_007F
.Lt_007E:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_007A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ORD_SERIES@4
_ORD_SERIES@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0084:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-16], eax
jmp .Lt_0087
.Lt_008A:
mov eax, dword ptr [ebp-12]
sal eax, 8
mov ebx, eax
push 1
push 1
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
call _fb_ASC@8
or ebx, eax
mov ecx, ebx
mov dword ptr [ebp-12], ecx
.Lt_0088:
inc dword ptr [ebp-8]
.Lt_0087:
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ebp-8], ecx
jle .Lt_008A
.Lt_0089:
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
.Lt_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HEX2ASC@4
_HEX2ASC@4:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008B:
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-16], eax
jmp .Lt_008D
.Lt_0090:
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
push -1
push -1
push 2
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push 3
push offset _Lt_0091
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
call _fb_VAL@4
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
push 1
call _fb_CHR
add esp, 8
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.Lt_008E:
add dword ptr [ebp-16], -2
.Lt_008D:
cmp dword ptr [ebp-16], 1
jge .Lt_0090
.Lt_008F:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.Lt_008C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl __Z7TRIMINTl@4
__Z7TRIMINTl@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0094:
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0095:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl __Z7TRIMINTf@4
__Z7TRIMINTf@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0096:
push 0
push -1
push dword ptr [ebp+8]
call _fb_FloatToStr@4
push eax
call _fb_LTRIM@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0097:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl __Z7TRIMINTd@8
__Z7TRIMINTd@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0098:
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_DoubleToStr@8
push eax
call _fb_LTRIM@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0099:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl __Z7TRIMINTi@4
__Z7TRIMINTi@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_009A:
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_009B:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl __Z7TRIMINTs@4
__Z7TRIMINTs@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_009C:
push 0
push -1
movsx eax, word ptr [ebp+8]
push eax
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_009D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl __Z7TRIMINTR8FBSTRING@4
__Z7TRIMINTR8FBSTRING@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_009E:
push 0
push -1
push dword ptr [ebp+8]
call _fb_LTRIM@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_009F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
__ZN10NAMES_TYPEC1Ev:
push ebp
mov ebp, esp
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
.Lt_000C:
.Lt_000D:
mov esp, ebp
pop ebp
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
.balign 16
__ZN10NAMES_TYPED1Ev:
push ebp
mov ebp, esp
push ebx
.Lt_0012:
.Lt_0013:
mov eax, dword ptr [ebp+8]
add eax, 12
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0006:	.ascii	"\15""\12""\0"
.balign 4
_Lt_0007:	.ascii	"\"\0"
.balign 4
_Lt_0008:	.ascii	"=\0"
.balign 4
_Lt_0029:	.ascii	"{{\0"
.balign 4
_Lt_002A:	.ascii	"}}\0"
.balign 4
_Lt_0037:	.ascii	"%\0"
.balign 4
_Lt_004E:	.ascii	"%%\0"
.balign 4
_Lt_0091:	.ascii	"&H\0"
