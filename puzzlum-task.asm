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

.globl __Z6LNCALLR8FBSTRING@4
__Z6LNCALLR8FBSTRING@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0057:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 7
push offset _Lt_005C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_005B
.Lt_005D:
call _LN_ROE@0
jmp .Lt_0059
.Lt_005B:
push 11
push offset _Lt_005F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_005E
.Lt_0060:
call _LN_STARTUP@0
jmp .Lt_0059
.Lt_005E:
push 14
push offset _Lt_0062
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0061
.Lt_0063:
call _LN_STARTTITLE@0
jmp .Lt_0059
.Lt_0061:
push 13
push offset _Lt_0065
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0064
.Lt_0066:
call _LN_STARTHELP@0
jmp .Lt_0059
.Lt_0064:
push 8
push offset _Lt_0068
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0067
.Lt_0069:
call _LN_MAIN@0
jmp .Lt_0059
.Lt_0067:
push 11
push offset _Lt_006B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_006A
.Lt_006C:
call _LN_COMMAND@0
jmp .Lt_0059
.Lt_006A:
push 12
push offset _Lt_006E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_006D
.Lt_006F:
call _LN_COMMAND2@0
jmp .Lt_0059
.Lt_006D:
push 12
push offset _Lt_0071
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0070
.Lt_0072:
call _LN_COMMAND3@0
jmp .Lt_0059
.Lt_0070:
push 12
push offset _Lt_0074
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0073
.Lt_0075:
call _LN_SWAPDATA@0
jmp .Lt_0059
.Lt_0073:
push 10
push offset _Lt_0077
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0076
.Lt_0078:
call _LN_ATTACK@0
jmp .Lt_0059
.Lt_0076:
push 10
push offset _Lt_007A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0079
.Lt_007B:
call _LN_BATTLE@0
jmp .Lt_0059
.Lt_0079:
push 12
push offset _Lt_007D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_007C
.Lt_007E:
call _LN_ATTKBITE@0
jmp .Lt_0059
.Lt_007C:
push 12
push offset _Lt_0080
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_007F
.Lt_0081:
call _LN_ATTKPNCH@0
jmp .Lt_0059
.Lt_007F:
push 12
push offset _Lt_0083
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0082
.Lt_0084:
call _LN_ATTKWSTF@0
jmp .Lt_0059
.Lt_0082:
push 12
push offset _Lt_0086
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0085
.Lt_0087:
call _LN_ATTKKICK@0
jmp .Lt_0059
.Lt_0085:
push 12
push offset _Lt_0089
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0088
.Lt_008A:
call _LN_ATTKVNOM@0
jmp .Lt_0059
.Lt_0088:
push 12
push offset _Lt_008C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_008B
.Lt_008D:
call _LN_ATTKDGGR@0
jmp .Lt_0059
.Lt_008B:
push 12
push offset _Lt_008F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_008E
.Lt_0090:
call _LN_ATTKPIKE@0
jmp .Lt_0059
.Lt_008E:
push 12
push offset _Lt_0092
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0091
.Lt_0093:
call _LN_ATTKBURN@0
jmp .Lt_0059
.Lt_0091:
push 12
push offset _Lt_0095
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0094
.Lt_0096:
call _LN_ATTKFIRE@0
jmp .Lt_0059
.Lt_0094:
push 11
push offset _Lt_0098
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0097
.Lt_0099:
call _LN_ATTKWEB@0
jmp .Lt_0059
.Lt_0097:
push 12
push offset _Lt_009B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_009A
.Lt_009C:
call _LN_ATTKTNGL@0
jmp .Lt_0059
.Lt_009A:
push 12
push offset _Lt_009E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_009D
.Lt_009F:
call _LN_ATTKLASH@0
jmp .Lt_0059
.Lt_009D:
push 11
push offset _Lt_00A1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00A0
.Lt_00A2:
call _LN_USECURE@0
jmp .Lt_0059
.Lt_00A0:
push 12
push offset _Lt_00A4
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00A3
.Lt_00A5:
call _LN_ATTKSLEP@0
jmp .Lt_0059
.Lt_00A3:
push 11
push offset _Lt_00A7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00A6
.Lt_00A8:
call _LN_VICTORY@0
jmp .Lt_0059
.Lt_00A6:
push 11
push offset _Lt_00AA
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00A9
.Lt_00AB:
call _LN_PILLAGE@0
jmp .Lt_0059
.Lt_00A9:
push 14
push offset _Lt_00AD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00AC
.Lt_00AE:
call _LN_PAYLEVELUP@0
jmp .Lt_0059
.Lt_00AC:
push 12
push offset _Lt_00B0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00AF
.Lt_00B1:
call _LN_MERCHANT@0
jmp .Lt_0059
.Lt_00AF:
push 12
push offset _Lt_00B3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00B2
.Lt_00B4:
call _LN_TALK0001@0
jmp .Lt_0059
.Lt_00B2:
push 15
push offset _Lt_00B6
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00B5
.Lt_00B7:
call _LN_ABILITYGAIN@0
jmp .Lt_0059
.Lt_00B5:
push 11
push offset _Lt_00B9
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00B8
.Lt_00BA:
call _LN_LEVELUP@0
jmp .Lt_0059
.Lt_00B8:
push 8
push offset _Lt_00BC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00BB
.Lt_00BD:
call _LN_GAIN@0
jmp .Lt_0059
.Lt_00BB:
push 9
push offset _Lt_00BF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00BE
.Lt_00C0:
call _LN_GETIT@0
jmp .Lt_0059
.Lt_00BE:
push 15
push offset _Lt_00C2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00C1
.Lt_00C3:
call _LN_ATTACKUSING@0
jmp .Lt_0059
.Lt_00C1:
push 16
push offset _Lt_00C5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00C4
.Lt_00C6:
call _LN_BATTLEATTACK@0
jmp .Lt_0059
.Lt_00C4:
push 12
push offset _Lt_00C8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00C7
.Lt_00C9:
call _LN_DEFEATED@0
jmp .Lt_0059
.Lt_00C7:
push 10
push offset _Lt_00CB
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00CA
.Lt_00CC:
call _LN_PORTAL@0
jmp .Lt_0059
.Lt_00CA:
push 10
push offset _Lt_00CE
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00CD
.Lt_00CF:
call _LN_STATUS@0
jmp .Lt_0059
.Lt_00CD:
push 12
push offset _Lt_00D1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00D0
.Lt_00D2:
call _LN_FRAMSTTS@0
jmp .Lt_0059
.Lt_00D0:
push 16
push offset _Lt_00D4
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00D3
.Lt_00D5:
call _LN_FRAMSTTSITMS@0
jmp .Lt_0059
.Lt_00D3:
push 12
push offset _Lt_00D7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00D6
.Lt_00D8:
call _LN_STTSGPIC@0
jmp .Lt_0059
.Lt_00D6:
push 12
push offset _Lt_00DA
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00D9
.Lt_00DB:
call _LN_STTSITMS@0
jmp .Lt_0059
.Lt_00D9:
push 9
push offset _Lt_00DD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00DC
.Lt_00DE:
call _LN_NAMES@0
jmp .Lt_0059
.Lt_00DC:
push 8
push offset _Lt_00E0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00DF
.Lt_00E1:
call _LN_MOVE@0
jmp .Lt_0059
.Lt_00DF:
push 12
push offset _Lt_00E3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00E2
.Lt_00E4:
call _LN_WINGMOVE@0
jmp .Lt_0059
.Lt_00E2:
push 12
push offset _Lt_00E6
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00E5
.Lt_00E7:
call _LN_FIREMOVE@0
jmp .Lt_0059
.Lt_00E5:
push 11
push offset _Lt_00E9
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00E8
.Lt_00EA:
call _LN_WEBMOVE@0
jmp .Lt_0059
.Lt_00E8:
push 12
push offset _Lt_00EC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00EB
.Lt_00ED:
call _LN_CASTFIRE@0
jmp .Lt_0059
.Lt_00EB:
push 12
push offset _Lt_00EF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00EE
.Lt_00F0:
call _LN_CASTDUST@0
jmp .Lt_0059
.Lt_00EE:
push 11
push offset _Lt_00F2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00F1
.Lt_00F3:
call _LN_CASTWEB@0
jmp .Lt_0059
.Lt_00F1:
push 12
push offset _Lt_00F5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00F4
.Lt_00F6:
call _LN_CASTSPDR@0
jmp .Lt_0059
.Lt_00F4:
push 12
push offset _Lt_00F8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00F7
.Lt_00F9:
call _LN_CASTCCTS@0
jmp .Lt_0059
.Lt_00F7:
push 12
push offset _Lt_00FB
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00FA
.Lt_00FC:
call _LN_CASTDTBY@0
jmp .Lt_0059
.Lt_00FA:
push 8
push offset _Lt_00FE
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00FD
.Lt_00FF:
call _LN_GONE@0
jmp .Lt_0059
.Lt_00FD:
push 11
push offset _Lt_0101
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0100
.Lt_0102:
call _LN_DELETE2@0
jmp .Lt_0059
.Lt_0100:
push 15
push offset _Lt_0104
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0103
.Lt_0105:
call _LN_AUTOLEVELUP@0
jmp .Lt_0059
.Lt_0103:
push 12
push offset _Lt_0107
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0106
.Lt_0108:
call _LN_STATGAIN@0
jmp .Lt_0059
.Lt_0106:
push 11
push offset _Lt_010A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0109
.Lt_010B:
call _LN_STATMAX@0
jmp .Lt_0059
.Lt_0109:
push 14
push offset _Lt_010D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_010C
.Lt_010E:
call _LN_NEXTACTION@0
jmp .Lt_0059
.Lt_010C:
push 13
push offset _Lt_0110
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_010F
.Lt_0111:
call _LN_NEWACTION@0
jmp .Lt_0059
.Lt_010F:
push 16
push offset _Lt_0113
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0112
.Lt_0114:
call _LN_RANDOMACTION@0
jmp .Lt_0059
.Lt_0112:
push 13
push offset _Lt_0116
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0115
.Lt_0117:
call _LN_GETACTION@0
jmp .Lt_0059
.Lt_0115:
push 13
push offset _Lt_0119
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0118
.Lt_011A:
call _LN_PUTACTION@0
jmp .Lt_0059
.Lt_0118:
push 11
push offset _Lt_011C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_011B
.Lt_011D:
call _LN_TEMPGET@0
jmp .Lt_0059
.Lt_011B:
push 11
push offset _Lt_011F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_011E
.Lt_0120:
call _LN_TEMPPUT@0
jmp .Lt_0059
.Lt_011E:
push 12
push offset _Lt_0122
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0121
.Lt_0123:
call _LN_INBOUNDS@0
jmp .Lt_0059
.Lt_0121:
push 10
push offset _Lt_0125
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0124
.Lt_0126:
call _LN_HAVEIT@0
jmp .Lt_0059
.Lt_0124:
push 9
push offset _Lt_0128
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0127
.Lt_0129:
call _LN_HASIT@0
jmp .Lt_0059
.Lt_0127:
push 13
push offset _Lt_012B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_012A
.Lt_012C:
call _LN_HAVEHADIT@0
jmp .Lt_0059
.Lt_012A:
push 12
push offset _Lt_012E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_012D
.Lt_012F:
call _LN_HASHADIT@0
jmp .Lt_0059
.Lt_012D:
push 13
push offset _Lt_0131
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0130
.Lt_0132:
call _LN_HAVEGOTIT@0
jmp .Lt_0059
.Lt_0130:
push 12
push offset _Lt_0134
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0133
.Lt_0135:
call _LN_HASGOTIT@0
jmp .Lt_0059
.Lt_0133:
push 10
push offset _Lt_0137
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0136
.Lt_0138:
call _LN_WINEXP@0
jmp .Lt_0059
.Lt_0136:
push 11
push offset _Lt_013A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0139
.Lt_013B:
call _LN_WINDGGR@0
jmp .Lt_0059
.Lt_0139:
push 11
push offset _Lt_013D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_013C
.Lt_013E:
call _LN_WINPIKE@0
jmp .Lt_0059
.Lt_013C:
push 11
push offset _Lt_0140
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_013F
.Lt_0141:
call _LN_WINGRPL@0
jmp .Lt_0059
.Lt_013F:
push 11
push offset _Lt_0143
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0142
.Lt_0144:
call _LN_WINSEED@0
jmp .Lt_0059
.Lt_0142:
push 11
push offset _Lt_0146
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0145
.Lt_0147:
call _LN_WINKEY1@0
jmp .Lt_0059
.Lt_0145:
push 11
push offset _Lt_0149
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0148
.Lt_014A:
call _LN_WINKEY2@0
jmp .Lt_0059
.Lt_0148:
push 9
push offset _Lt_014C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_014B
.Lt_014D:
call _LN_WINIT@0
jmp .Lt_0059
.Lt_014B:
push 6
push offset _Lt_014F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_014E
.Lt_0150:
call _LN_AM@0
jmp .Lt_0059
.Lt_014E:
push 7
push offset _Lt_0152
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0151
.Lt_0153:
call _LN_ARE@0
jmp .Lt_0059
.Lt_0151:
push 8
push offset _Lt_0155
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0154
.Lt_0156:
call _LN_HERE@0
jmp .Lt_0059
.Lt_0154:
push 9
push offset _Lt_0158
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0157
.Lt_0159:
call _LN_THERE@0
jmp .Lt_0059
.Lt_0157:
push 14
push offset _Lt_015B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_015A
.Lt_015C:
call _LN_BLANKCHECK@0
jmp .Lt_0059
.Lt_015A:
push 12
push offset _Lt_015E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_015D
.Lt_015F:
call _LN_OKBUTTON@0
jmp .Lt_0059
.Lt_015D:
push 9
push offset _Lt_0161
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0160
.Lt_0162:
call _LN_WWAIT@0
jmp .Lt_0059
.Lt_0160:
push 14
push offset _Lt_0164
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0163
.Lt_0165:
call _LN_BUTTONWAIT@0
jmp .Lt_0059
.Lt_0163:
push 15
push offset _Lt_0167
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0166
.Lt_0168:
call _LN_COMMANDWAIT@0
jmp .Lt_0059
.Lt_0166:
push 12
push offset _Lt_016A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0169
.Lt_016B:
call _LN_FRAMEPUT@0
jmp .Lt_0059
.Lt_0169:
push 12
push offset _Lt_016D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_016C
.Lt_016E:
call _LN_AVGFRAME@0
jmp .Lt_0059
.Lt_016C:
push 13
push offset _Lt_0170
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_016F
.Lt_0171:
call _LN_SCREENSET@0
jmp .Lt_0059
.Lt_016F:
push 12
push offset _Lt_0173
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0172
.Lt_0174:
call _LN_FINDCRSR@0
jmp .Lt_0059
.Lt_0172:
push 12
push offset _Lt_0176
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0175
.Lt_0177:
call _LN_PRFLBLNK@0
jmp .Lt_0059
.Lt_0175:
push 11
push offset _Lt_0179
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0178
.Lt_017A:
call _LN_PRFLSET@0
jmp .Lt_0059
.Lt_0178:
push 12
push offset _Lt_017C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_017B
.Lt_017D:
call _LN_PRFLMAKE@0
jmp .Lt_0059
.Lt_017B:
push 12
push offset _Lt_017F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_017E
.Lt_0180:
call _LN_ACTNCURE@0
jmp .Lt_0059
.Lt_017E:
push 12
push offset _Lt_0182
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0181
.Lt_0183:
call _LN_ACTNBITE@0
jmp .Lt_0059
.Lt_0181:
push 12
push offset _Lt_0185
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0184
.Lt_0186:
call _LN_ACTNPNCH@0
jmp .Lt_0059
.Lt_0184:
push 12
push offset _Lt_0188
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0187
.Lt_0189:
call _LN_ACTNKICK@0
jmp .Lt_0059
.Lt_0187:
push 12
push offset _Lt_018B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_018A
.Lt_018C:
call _LN_ACTNDGGR@0
jmp .Lt_0059
.Lt_018A:
push 12
push offset _Lt_018E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_018D
.Lt_018F:
call _LN_ACTNPIKE@0
jmp .Lt_0059
.Lt_018D:
push 12
push offset _Lt_0191
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0190
.Lt_0192:
call _LN_ACTNVNOM@0
jmp .Lt_0059
.Lt_0190:
push 12
push offset _Lt_0194
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0193
.Lt_0195:
call _LN_ACTNFIRE@0
jmp .Lt_0059
.Lt_0193:
push 12
push offset _Lt_0197
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0196
.Lt_0198:
call _LN_ACTNDUST@0
jmp .Lt_0059
.Lt_0196:
push 11
push offset _Lt_019A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0199
.Lt_019B:
call _LN_ACTNWEB@0
jmp .Lt_0059
.Lt_0199:
push 12
push offset _Lt_019D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_019C
.Lt_019E:
call _LN_ACTNSPDR@0
jmp .Lt_0059
.Lt_019C:
push 12
push offset _Lt_01A0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_019F
.Lt_01A1:
call _LN_ACTNCCTS@0
jmp .Lt_0059
.Lt_019F:
push 12
push offset _Lt_01A3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01A2
.Lt_01A4:
call _LN_ACTNDTBY@0
jmp .Lt_0059
.Lt_01A2:
push 12
push offset _Lt_01A6
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01A5
.Lt_01A7:
call _LN_ACTNMOVE@0
jmp .Lt_0059
.Lt_01A5:
push 12
push offset _Lt_01A9
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01A8
.Lt_01AA:
call _LN_ACTNWING@0
jmp .Lt_0059
.Lt_01A8:
push 12
push offset _Lt_01AC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01AB
.Lt_01AD:
call _LN_ACTNWSTF@0
jmp .Lt_0059
.Lt_01AB:
push 12
push offset _Lt_01AF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01AE
.Lt_01B0:
call _LN_ACTNKEY1@0
jmp .Lt_0059
.Lt_01AE:
push 12
push offset _Lt_01B2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01B1
.Lt_01B3:
call _LN_ACTNKEY2@0
jmp .Lt_0059
.Lt_01B1:
push 12
push offset _Lt_01B5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01B4
.Lt_01B6:
call _LN_ACTNISPT@0
jmp .Lt_0059
.Lt_01B4:
push 16
push offset _Lt_01B8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01B7
.Lt_01B9:
call _LN_ACTNFIREMOVE@0
jmp .Lt_0059
.Lt_01B7:
push 16
push offset _Lt_01BB
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01BA
.Lt_01BC:
call _LN_ACTNDUSTMOVE@0
jmp .Lt_0059
.Lt_01BA:
push 15
push offset _Lt_01BE
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01BD
.Lt_01BF:
call _LN_ACTNWEBMOVE@0
jmp .Lt_0059
.Lt_01BD:
push 12
push offset _Lt_01C1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01C0
.Lt_01C2:
call _LN_ACTNGRPL@0
jmp .Lt_0059
.Lt_01C0:
push 12
push offset _Lt_01C4
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01C3
.Lt_01C5:
call _LN_ACTNRAPL@0
jmp .Lt_0059
.Lt_01C3:
push 11
push offset _Lt_01C7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01C6
.Lt_01C8:
call _LN_CRTNIMP@0
jmp .Lt_0059
.Lt_01C6:
push 12
push offset _Lt_01CA
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01C9
.Lt_01CB:
call _LN_CRTNFIRE@0
jmp .Lt_0059
.Lt_01C9:
push 12
push offset _Lt_01CD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01CC
.Lt_01CE:
call _LN_CRTNDUST@0
jmp .Lt_0059
.Lt_01CC:
push 12
push offset _Lt_01D0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01CF
.Lt_01D1:
call _LN_CRTNSHKT@0
jmp .Lt_0059
.Lt_01CF:
push 12
push offset _Lt_01D3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01D2
.Lt_01D4:
call _LN_CRTNEMGD@0
jmp .Lt_0059
.Lt_01D2:
push 12
push offset _Lt_01D6
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01D5
.Lt_01D7:
call _LN_CRTNSPDR@0
jmp .Lt_0059
.Lt_01D5:
push 11
push offset _Lt_01D9
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01D8
.Lt_01DA:
call _LN_CRTNWEB@0
jmp .Lt_0059
.Lt_01D8:
push 12
push offset _Lt_01DC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01DB
.Lt_01DD:
call _LN_CRTNDTBY@0
jmp .Lt_0059
.Lt_01DB:
push 12
push offset _Lt_01DF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01DE
.Lt_01E0:
call _LN_CRTNGRML@0
jmp .Lt_0059
.Lt_01DE:
push 12
push offset _Lt_01E2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01E1
.Lt_01E3:
call _LN_CRTNPNDX@0
jmp .Lt_0059
.Lt_01E1:
push 12
push offset _Lt_01E5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01E4
.Lt_01E6:
call _LN_CRTNCCTS@0
jmp .Lt_0059
.Lt_01E4:
push 12
push offset _Lt_01E8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01E7
.Lt_01E9:
call _LN_CRTNBLDR@0
.Lt_01E7:
.Lt_0059:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0058:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl __Z6LNCALLR8FBSTRINGR8FBARRAY1IPN2FB5IMAGEEElll@20
__Z6LNCALLR8FBSTRINGR8FBARRAY1IPN2FB5IMAGEEElll@20:
push ebp
mov ebp, esp
sub esp, 12
.Lt_01EA:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 9
push offset _Lt_01EF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01EE
.Lt_01F0:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _LN_TITLE@8
jmp .Lt_01EC
.Lt_01EE:
push 8
push offset _Lt_01F2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01F1
.Lt_01F3:
mov ax, word ptr [ebp+24]
push eax
mov ax, word ptr [ebp+20]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _LN_STTS@16
jmp .Lt_01EC
.Lt_01F1:
push 12
push offset _Lt_01F5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01F4
.Lt_01F6:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _LN_SHOWTEXT@8
.Lt_01F4:
.Lt_01EC:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_01EB:
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl __Z6LNCALLR8FBSTRINGS0_R8FBARRAY1I10NAMES_TYPEE@12
__Z6LNCALLR8FBSTRINGS0_R8FBARRAY1I10NAMES_TYPEE@12:
push ebp
mov ebp, esp
sub esp, 24
.Lt_01F7:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 14
push offset _Lt_01FC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01FB
.Lt_01FD:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _SAVEGAME_SAVE@8
jmp .Lt_01F9
.Lt_01FB:
push 14
push offset _Lt_01FF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01FE
.Lt_0200:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _SAVEGAME_LOAD@8
jmp .Lt_01F9
.Lt_01FE:
push 11
push offset _Lt_0202
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0201
.Lt_0203:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push offset _ATTACK_TABLE
lea eax, [ebp-24]
push eax
call _LN_ATTK_TABLE@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0201:
.Lt_01F9:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_01F8:
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl __Z6LNCALLR8FBSTRINGS0_S0_R8FBARRAY1I10NAMES_TYPEE@16
__Z6LNCALLR8FBSTRINGS0_S0_R8FBARRAY1I10NAMES_TYPEE@16:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0204:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 12
push offset _Lt_0209
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0208
.Lt_020A:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _COMPARE_KEY@12
mov dword ptr [ebp-4], eax
jmp .Lt_0206
.Lt_0208:
mov dword ptr [ebp-4], 0
.Lt_020B:
.Lt_0206:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0205:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl __Z6LNCALLR8FBSTRINGll@12
__Z6LNCALLR8FBSTRINGll@12:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_020C:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 12
push offset _Lt_0209
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0210
.Lt_0211:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ROSE_CALC@8
mov dword ptr [ebp-4], eax
jmp .Lt_020E
.Lt_0210:
mov dword ptr [ebp-4], 0
.Lt_0212:
.Lt_020E:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_020D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_fb_ctor__puzzlumztask:
.Lt_0002:
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
push 255
push 0
push 1
push 0
push -1
push 4
push offset _FONTSHEETS
call _fb_ArrayRedimEx
add esp, 28
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
.Lt_0003:
ret
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
.balign 16
__GLOBAL__D:
.Lt_0214:
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _ATTACK_TABLE
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _QUEUE_TABLE
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _SAVE_TABLE
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _MAPS_TABLE
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _LEVELS_TABLE
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _NAMES_TABLE
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _INPUT_TABLE
call _fb_ArrayEraseObj@12
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push offset _BUNDLE_TABLE
call _fb_ArrayEraseObj@12
.Lt_0215:
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
_BUNDLE_TABLE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_INPUT_TABLE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_NAMES_TABLE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_LEVELS_TABLE:
.long 0
.long 0
.int 0
.int 24
.int 0
.int 8
.skip 96,0
.balign 4
_MAPS_TABLE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_SAVE_TABLE:
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
_ATTACK_TABLE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0

.section .bss
.balign 4
	.lcomm	_WIN_SI,2
.balign 4
	.lcomm	_MAPPATH_STR,12
.balign 4
	.lcomm	_MAP_STR,12
.balign 4
	.lcomm	_LVUPPATH_STR,12
.balign 4
	.lcomm	_LVUP_STR,12
.balign 4
	.lcomm	_MAPID_STR,12
.balign 4
	.lcomm	_THISPATH_STR,12
.balign 4
	.lcomm	_FONTPATH_STR,12
.balign 4
	.lcomm	_LOGOPATH_STR,12
.balign 4
	.lcomm	_SPRITEPATH_STR,12
.balign 4
	.lcomm	_PALPATH_STR,12
.balign 4
	.lcomm	_HELPPATH_STR,12
.balign 4
	.lcomm	_HELPFILENAME_STR,12
.balign 4
	.lcomm	_BUNDLE_FILENAME,12
.balign 4
	.lcomm	_HELP_FILENAME,12
.balign 4
	.lcomm	_MAP_FILENAME,12
.balign 4
	.lcomm	_LEVELS_FILENAME,12
.balign 4
	.lcomm	_INPUT_FILENAME,12
.balign 4
	.lcomm	_PALETTE_FILENAME,12
.balign 4
	.lcomm	_ATTACK_FILENAME,12
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
	.lcomm	_EVADEATTACK,2
.balign 4
	.lcomm	_ATTACKBLOCKED,2
.balign 4
	.lcomm	_HP_USE_SI,2
.balign 4
	.lcomm	_STR_USE_SI,2
.balign 4
	.lcomm	_ESS_USE_SI,2
.balign 4
	.lcomm	_HP_DMG_SI,2
.balign 4
	.lcomm	_STR_DMG_SI,2
.balign 4
	.lcomm	_ESS_DMG_SI,2
.balign 4
	.lcomm	_HP_DMG_BONUS_STR,12
.balign 4
	.lcomm	_STR_DMG_BONUS_STR,12
.balign 4
	.lcomm	_ESS_DMG_BONUS_STR,12
.balign 4
	.lcomm	_HP_DMG_BONUS_SI,2
.balign 4
	.lcomm	_STR_DMG_BONUS_SI,2
.balign 4
	.lcomm	_ESS_DMG_BONUS_SI,2
.balign 4
	.lcomm	_ENTITY_COUNT,2
.balign 4
	.lcomm	_ENTITY_INDEX,2
.balign 4
	.lcomm	_ATTK_PICT_STR,12
.balign 4
	.lcomm	_ATTK_NAME_STR,12
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
_Lt_005C:	.ascii	"ln_roe\0"
.balign 4
_Lt_005F:	.ascii	"ln_startup\0"
.balign 4
_Lt_0062:	.ascii	"ln_starttitle\0"
.balign 4
_Lt_0065:	.ascii	"ln_starthelp\0"
.balign 4
_Lt_0068:	.ascii	"ln_main\0"
.balign 4
_Lt_006B:	.ascii	"ln_command\0"
.balign 4
_Lt_006E:	.ascii	"ln_command2\0"
.balign 4
_Lt_0071:	.ascii	"ln_command3\0"
.balign 4
_Lt_0074:	.ascii	"ln_swapdata\0"
.balign 4
_Lt_0077:	.ascii	"ln_attack\0"
.balign 4
_Lt_007A:	.ascii	"ln_battle\0"
.balign 4
_Lt_007D:	.ascii	"ln_attkbite\0"
.balign 4
_Lt_0080:	.ascii	"ln_attkpnch\0"
.balign 4
_Lt_0083:	.ascii	"ln_attkwstf\0"
.balign 4
_Lt_0086:	.ascii	"ln_attkkick\0"
.balign 4
_Lt_0089:	.ascii	"ln_attkvnom\0"
.balign 4
_Lt_008C:	.ascii	"ln_attkdggr\0"
.balign 4
_Lt_008F:	.ascii	"ln_attkpike\0"
.balign 4
_Lt_0092:	.ascii	"ln_attkburn\0"
.balign 4
_Lt_0095:	.ascii	"ln_attkfire\0"
.balign 4
_Lt_0098:	.ascii	"ln_attkweb\0"
.balign 4
_Lt_009B:	.ascii	"ln_attktngl\0"
.balign 4
_Lt_009E:	.ascii	"ln_attklash\0"
.balign 4
_Lt_00A1:	.ascii	"ln_usecure\0"
.balign 4
_Lt_00A4:	.ascii	"ln_attkslep\0"
.balign 4
_Lt_00A7:	.ascii	"ln_victory\0"
.balign 4
_Lt_00AA:	.ascii	"ln_pillage\0"
.balign 4
_Lt_00AD:	.ascii	"ln_paylevelup\0"
.balign 4
_Lt_00B0:	.ascii	"ln_merchant\0"
.balign 4
_Lt_00B3:	.ascii	"ln_talk0001\0"
.balign 4
_Lt_00B6:	.ascii	"ln_abilitygain\0"
.balign 4
_Lt_00B9:	.ascii	"ln_levelup\0"
.balign 4
_Lt_00BC:	.ascii	"ln_gain\0"
.balign 4
_Lt_00BF:	.ascii	"ln_getit\0"
.balign 4
_Lt_00C2:	.ascii	"ln_attackusing\0"
.balign 4
_Lt_00C5:	.ascii	"ln_battleattack\0"
.balign 4
_Lt_00C8:	.ascii	"ln_defeated\0"
.balign 4
_Lt_00CB:	.ascii	"ln_portal\0"
.balign 4
_Lt_00CE:	.ascii	"ln_status\0"
.balign 4
_Lt_00D1:	.ascii	"ln_framstts\0"
.balign 4
_Lt_00D4:	.ascii	"ln_framsttsitms\0"
.balign 4
_Lt_00D7:	.ascii	"ln_sttsgpic\0"
.balign 4
_Lt_00DA:	.ascii	"ln_sttsitms\0"
.balign 4
_Lt_00DD:	.ascii	"ln_names\0"
.balign 4
_Lt_00E0:	.ascii	"ln_move\0"
.balign 4
_Lt_00E3:	.ascii	"ln_wingmove\0"
.balign 4
_Lt_00E6:	.ascii	"ln_firemove\0"
.balign 4
_Lt_00E9:	.ascii	"ln_webmove\0"
.balign 4
_Lt_00EC:	.ascii	"ln_castfire\0"
.balign 4
_Lt_00EF:	.ascii	"ln_castdust\0"
.balign 4
_Lt_00F2:	.ascii	"ln_castweb\0"
.balign 4
_Lt_00F5:	.ascii	"ln_castspdr\0"
.balign 4
_Lt_00F8:	.ascii	"ln_castccts\0"
.balign 4
_Lt_00FB:	.ascii	"ln_castdtby\0"
.balign 4
_Lt_00FE:	.ascii	"ln_gone\0"
.balign 4
_Lt_0101:	.ascii	"ln_delete2\0"
.balign 4
_Lt_0104:	.ascii	"ln_autolevelup\0"
.balign 4
_Lt_0107:	.ascii	"ln_statgain\0"
.balign 4
_Lt_010A:	.ascii	"ln_statmax\0"
.balign 4
_Lt_010D:	.ascii	"ln_nextaction\0"
.balign 4
_Lt_0110:	.ascii	"ln_newaction\0"
.balign 4
_Lt_0113:	.ascii	"ln_randomaction\0"
.balign 4
_Lt_0116:	.ascii	"ln_getaction\0"
.balign 4
_Lt_0119:	.ascii	"ln_putaction\0"
.balign 4
_Lt_011C:	.ascii	"ln_tempget\0"
.balign 4
_Lt_011F:	.ascii	"ln_tempput\0"
.balign 4
_Lt_0122:	.ascii	"ln_inbounds\0"
.balign 4
_Lt_0125:	.ascii	"ln_haveit\0"
.balign 4
_Lt_0128:	.ascii	"ln_hasit\0"
.balign 4
_Lt_012B:	.ascii	"ln_havehadit\0"
.balign 4
_Lt_012E:	.ascii	"ln_hashadit\0"
.balign 4
_Lt_0131:	.ascii	"ln_havegotit\0"
.balign 4
_Lt_0134:	.ascii	"ln_hasgotit\0"
.balign 4
_Lt_0137:	.ascii	"ln_winexp\0"
.balign 4
_Lt_013A:	.ascii	"ln_windggr\0"
.balign 4
_Lt_013D:	.ascii	"ln_winpike\0"
.balign 4
_Lt_0140:	.ascii	"ln_wingrpl\0"
.balign 4
_Lt_0143:	.ascii	"ln_winseed\0"
.balign 4
_Lt_0146:	.ascii	"ln_winkey1\0"
.balign 4
_Lt_0149:	.ascii	"ln_winkey2\0"
.balign 4
_Lt_014C:	.ascii	"ln_winit\0"
.balign 4
_Lt_014F:	.ascii	"ln_am\0"
.balign 4
_Lt_0152:	.ascii	"ln_are\0"
.balign 4
_Lt_0155:	.ascii	"ln_here\0"
.balign 4
_Lt_0158:	.ascii	"ln_there\0"
.balign 4
_Lt_015B:	.ascii	"ln_blankcheck\0"
.balign 4
_Lt_015E:	.ascii	"ln_okbutton\0"
.balign 4
_Lt_0161:	.ascii	"ln_wwait\0"
.balign 4
_Lt_0164:	.ascii	"ln_buttonwait\0"
.balign 4
_Lt_0167:	.ascii	"ln_commandwait\0"
.balign 4
_Lt_016A:	.ascii	"ln_frameput\0"
.balign 4
_Lt_016D:	.ascii	"ln_avgframe\0"
.balign 4
_Lt_0170:	.ascii	"ln_screenset\0"
.balign 4
_Lt_0173:	.ascii	"ln_findcrsr\0"
.balign 4
_Lt_0176:	.ascii	"ln_prflblnk\0"
.balign 4
_Lt_0179:	.ascii	"ln_prflset\0"
.balign 4
_Lt_017C:	.ascii	"ln_prflmake\0"
.balign 4
_Lt_017F:	.ascii	"ln_actncure\0"
.balign 4
_Lt_0182:	.ascii	"ln_actnbite\0"
.balign 4
_Lt_0185:	.ascii	"ln_actnpnch\0"
.balign 4
_Lt_0188:	.ascii	"ln_actnkick\0"
.balign 4
_Lt_018B:	.ascii	"ln_actndggr\0"
.balign 4
_Lt_018E:	.ascii	"ln_actnpike\0"
.balign 4
_Lt_0191:	.ascii	"ln_actnvnom\0"
.balign 4
_Lt_0194:	.ascii	"ln_actnfire\0"
.balign 4
_Lt_0197:	.ascii	"ln_actndust\0"
.balign 4
_Lt_019A:	.ascii	"ln_actnweb\0"
.balign 4
_Lt_019D:	.ascii	"ln_actnspdr\0"
.balign 4
_Lt_01A0:	.ascii	"ln_actnccts\0"
.balign 4
_Lt_01A3:	.ascii	"ln_actndtby\0"
.balign 4
_Lt_01A6:	.ascii	"ln_actnmove\0"
.balign 4
_Lt_01A9:	.ascii	"ln_actnwing\0"
.balign 4
_Lt_01AC:	.ascii	"ln_actnwstf\0"
.balign 4
_Lt_01AF:	.ascii	"ln_actnkey1\0"
.balign 4
_Lt_01B2:	.ascii	"ln_actnkey2\0"
.balign 4
_Lt_01B5:	.ascii	"ln_actnispt\0"
.balign 4
_Lt_01B8:	.ascii	"ln_actnfiremove\0"
.balign 4
_Lt_01BB:	.ascii	"ln_actndustmove\0"
.balign 4
_Lt_01BE:	.ascii	"ln_actnwebmove\0"
.balign 4
_Lt_01C1:	.ascii	"ln_actngrpl\0"
.balign 4
_Lt_01C4:	.ascii	"ln_actnrapl\0"
.balign 4
_Lt_01C7:	.ascii	"ln_crtnimp\0"
.balign 4
_Lt_01CA:	.ascii	"ln_crtnfire\0"
.balign 4
_Lt_01CD:	.ascii	"ln_crtndust\0"
.balign 4
_Lt_01D0:	.ascii	"ln_crtnshkt\0"
.balign 4
_Lt_01D3:	.ascii	"ln_crtnemgd\0"
.balign 4
_Lt_01D6:	.ascii	"ln_crtnspdr\0"
.balign 4
_Lt_01D9:	.ascii	"ln_crtnweb\0"
.balign 4
_Lt_01DC:	.ascii	"ln_crtndtby\0"
.balign 4
_Lt_01DF:	.ascii	"ln_crtngrml\0"
.balign 4
_Lt_01E2:	.ascii	"ln_crtnpndx\0"
.balign 4
_Lt_01E5:	.ascii	"ln_crtnccts\0"
.balign 4
_Lt_01E8:	.ascii	"ln_crtnbldr\0"
.balign 4
_Lt_01EF:	.ascii	"ln_title\0"
.balign 4
_Lt_01F2:	.ascii	"ln_stts\0"
.balign 4
_Lt_01F5:	.ascii	"ln_showtext\0"
.balign 4
_Lt_01FC:	.ascii	"savegame_save\0"
.balign 4
_Lt_01FF:	.ascii	"savegame_load\0"
.balign 4
_Lt_0202:	.ascii	"attk_table\0"
.balign 4
_Lt_0209:	.ascii	"Compare_Key\0"

.section .ctors
.int _fb_ctor__puzzlumztask

.section .dtors
.int __GLOBAL__D
