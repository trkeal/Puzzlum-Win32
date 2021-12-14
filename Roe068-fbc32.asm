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
.Lt_000A:
push dword ptr [ebp+8]
call _LoadRGBAFile
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_000D
mov dword ptr [ebp-4], 0
jmp .Lt_000B
.Lt_000D:
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
jmp .Lt_0015
.Lt_0018:
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov eax, dword ptr [ebp-12]
dec eax
mov dword ptr [ebp-80], eax
jmp .Lt_001A
.Lt_001D:
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
.Lt_001B:
inc dword ptr [ebp-76]
.Lt_001A:
mov ebx, dword ptr [ebp-80]
cmp dword ptr [ebp-76], ebx
jle .Lt_001D
.Lt_001C:
mov ebx, dword ptr [ebp-20]
add dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
sal ebx, 1
add dword ptr [ebp-44], ebx
.Lt_0016:
inc dword ptr [ebp-64]
.Lt_0015:
mov ebx, dword ptr [ebp-68]
cmp dword ptr [ebp-64], ebx
jle .Lt_0018
.Lt_0017:
push dword ptr [ebp-8]
call _fb_GfxImageDestroy@4
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-4], ebx
.Lt_000B:
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
.Lt_0023:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0026
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_0024
.Lt_0026:
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
push offset _Lt_0027
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
jmp .Lt_0029
.Lt_002C:
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
.Lt_002A:
add dword ptr [ebp-24], 3
.Lt_0029:
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp-24], ebx
jle .Lt_002C
.Lt_002B:
cmp dword ptr [ebp-32], 0
je .Lt_002E
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
jne .Lt_0030
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
jmp .Lt_002F
.Lt_0030:
mov ebx, dword ptr [ebp-44]
add ebx, dword ptr [ebp-28]
mov byte ptr [ebx+2], 61
.Lt_002F:
.Lt_002E:
.Lt_002D:
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
jmp .Lt_0024
lea ebx, [ebp-44]
push ebx
call _fb_StrDelete@4
.Lt_0024:
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
.Lt_0031:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jge .Lt_0034
mov dword ptr [ebp-4], 0
jmp .Lt_0032
.Lt_0034:
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
jmp .Lt_0036
.Lt_0039:
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
jle .Lt_003B
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
.Lt_003B:
.Lt_003A:
cmp dword ptr [ebp-32], -1
jle .Lt_003D
mov ebx, dword ptr [ebp-28]
sal ebx, 4
mov eax, dword ptr [ebp-32]
sar eax, 2
add ebx, eax
mov al, bl
mov ebx, dword ptr [ebp-12]
mov byte ptr [ebx], al
inc dword ptr [ebp-12]
.Lt_003D:
cmp dword ptr [ebp-36], -1
jle .Lt_003F
mov eax, dword ptr [ebp-32]
sal eax, 6
add eax, dword ptr [ebp-36]
mov bl, al
mov eax, dword ptr [ebp-12]
mov byte ptr [eax], bl
inc dword ptr [ebp-12]
.Lt_003F:
.Lt_0037:
add dword ptr [ebp-20], 4
.Lt_0036:
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebp-20], ebx
jle .Lt_0039
.Lt_0038:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_0032:
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
sub esp, 88
push ebx
push esi
.Lt_006A:
mov word ptr [_MOUSE_WIDTH], 320
mov word ptr [_MOUSE_HEIGHT], 240
mov word ptr [_SCREEN_WIDTH], 320
mov word ptr [_SCREEN_HEIGHT], 240
mov word ptr [_DISPLAY_WIDTH], 640
mov word ptr [_DISPLAY_HEIGHT], 480
push 0
push 0
push 16
push 32
push 17
call _fb_GfxScreen@20
push 30
push 40
call _fb_Width@8
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
push 1
push offset _Lt_0000
push -1
push offset _THISPATH_STR
call _fb_StrAssign@20
push 0
push 17
push offset _Lt_006C
push -1
push offset _FONTPATH_STR
call _fb_StrAssign@20
push 0
push 17
push offset _Lt_006D
push -1
push offset _LOGOPATH_STR
call _fb_StrAssign@20
push 0
push 19
push offset _Lt_006E
push -1
push offset _SPRITEPATH_STR
call _fb_StrAssign@20
push 0
push 12
push offset _Lt_006F
push -1
push offset _PALPATH_STR
call _fb_StrAssign@20
push 0
push 17
push offset _Lt_0070
push -1
push offset _MAPPATH_STR
call _fb_StrAssign@20
push offset _Lt_0054
push offset _PALETTE_FILENAME
call _PAL_LOAD@8
push offset _INPUT_TABLE
push offset _INPUT_FILENAME
call _LOAD_NAMES_FROM_FILE@8
push offset _LEVELS_TABLE
push offset _LEVELS_FILENAME
call _LOAD_NAMES_FROM_FILE@8
push offset _MAPS_TABLE
push offset _MAP_FILENAME
call _LOAD_NAMES_FROM_FILE@8
push offset _CLV_GLYPH
call _CLV_GLYPH_INI@4
push offset _CLV_GLYPH
call _CLV_GLYPH_INI@4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 26
push offset _Lt_0071
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
push 1
push 0
push offset _CLV_FONT
call _CLV_FONT_LOAD@16
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 23
push offset _Lt_0073
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
push 1
push 1
push offset _CLV_FONT
call _CLV_FONT_LOAD@16
lea eax, [ebp-24]
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
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 31
push offset _Lt_0075
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _png_load
add esp, 8
mov dword ptr [_GTMP], eax
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push -2147483648
push 0
push 0
mov eax, dword ptr [_GTMP]
push dword ptr [eax+12]
mov eax, dword ptr [_GTMP]
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
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 29
push offset _Lt_0077
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
push 192
push 0
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_BAR]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
.Lt_0079:
mov dword ptr [_RESTART_ROE], 0
mov eax, dword ptr [_CLV_BUFFER_SPLASH]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_007C:
push -1
call _fb_Inkey@0
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_007D
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_007C
.Lt_007D:
call _LN_STARTUP@0
.Lt_007E:
push -1
call _fb_Inkey@0
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_007F
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_007E
.Lt_007F:
push 0
push -1
push 0
push 1
push offset _Lt_0080
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_StrLcase2@8
push eax
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0081:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_0085
jmp .Lt_0082
.Lt_0085:
push offset _INPUT_TABLE
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 6
push offset _Lt_0086
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
push offset _C_STR
call _COMPARE_KEY@12
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
mov dword ptr [ebp-64], eax
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-64], 0
je .Lt_0089
mov eax, dword ptr [_CLV_BUFFER_TITLE]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
call _LN_STARTTITLE@0
.Lt_0089:
.Lt_0088:
mov dword ptr [_EXITCOMMAND], 0
.Lt_008B:
call _LN_COMMAND@0
mov dword ptr [_EXITCOMMAND3], 0
.Lt_008E:
call _LN_COMMAND3@0
push 2
push offset _Lt_0080
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
je .Lt_0092
mov dword ptr [_EXITCOMMAND3], -1
mov dword ptr [_EXITCOMMAND], -1
.Lt_0092:
.Lt_0091:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_0094
jmp .Lt_008F
.Lt_0094:
.Lt_0090:
push 1
push -1
push offset _C_STR
push 2
push offset _Lt_0096
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea ebx, [ebp-88]
push ebx
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 4
push offset _Lt_0095
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
jne .Lt_008E
.Lt_008F:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_0099
jmp .Lt_008C
.Lt_0099:
.Lt_008D:
push 1
push -1
push offset _C_STR
push 2
push offset _Lt_0096
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea ebx, [ebp-76]
push ebx
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 3
push offset _Lt_009A
call _fb_StrAllocTempDescZEx@8
push eax
push 1
call _fb_StrInstr@12
test eax, eax
jg .Lt_008B
.Lt_008C:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_009D
jmp .Lt_0082
.Lt_009D:
call _LN_MAIN@0
cmp dword ptr [_RESTART_ROE], 0
je .Lt_009F
jmp .Lt_0082
.Lt_009F:
.Lt_0083:
jmp .Lt_0081
.Lt_0082:
.Lt_007B:
jmp .Lt_0079
.Lt_007A:
.Lt_006B:
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
sub esp, 320
push ebx
.Lt_00A8:
push offset _BUNDLE_TABLE
call _WIPE_TABLE@4
push offset _NAMES_TABLE
call _WIPE_TABLE@4
push offset _LEVELS_TABLE
call _WIPE_TABLE@4
push offset _MAPS_TABLE
call _WIPE_TABLE@4
push 0
push 22
push offset _Lt_00AA
push -1
push offset _BUNDLE_FILENAME
call _fb_StrAssign@20
push offset _BUNDLE_TABLE
push offset _BUNDLE_FILENAME
call _LOAD_NAMES_FROM_FILE@8
push 0
push -1
push offset _BUNDLE_TABLE
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 5
push offset _Lt_00AB
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _HELP_FILENAME
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push 0
push -1
push offset _BUNDLE_TABLE
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 4
push offset _Lt_00AD
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _MAP_FILENAME
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 0
push -1
push offset _BUNDLE_TABLE
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 7
push offset _Lt_00AF
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _LEVELS_FILENAME
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push 0
push -1
push offset _BUNDLE_TABLE
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 6
push offset _Lt_00B1
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _INPUT_FILENAME
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push 0
push -1
push offset _BUNDLE_TABLE
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 8
push offset _Lt_00B3
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _PALETTE_FILENAME
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 16
push offset _Lt_00B5
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
call _LOAD_NAMES_FROM_FILE@8
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
push offset _LEVELS_TABLE
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 17
push offset _Lt_00B7
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
call _LOAD_NAMES_FROM_FILE@8
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
mov word ptr [_T_SI], 0
push offset _LEVELS_TABLE
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 13
push offset _Lt_00B9
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign@20
lea eax, [ebp-216]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [ebp-220]
lea eax, [ebp-216]
push eax
call _fb_StrDelete@4
jmp .Lt_00BC
.Lt_00BF:
push offset _LEVELS_TABLE
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push -1
push -1
movsx eax, word ptr [_T_SI]
push eax
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push 8
push offset _Lt_00C0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-244]
push eax
call _fb_StrAssign@20
lea eax, [ebp-244]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_T_SI]
fistp word ptr [_L_SIA+eax*2]
lea eax, [ebp-244]
push eax
call _fb_StrDelete@4
.Lt_00BD:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_00BC:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-220]
cmp eax, ebx
jle .Lt_00BF
.Lt_00BE:
push offset _MAPS_TABLE
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
push offset _MAP_STR
push -1
push -1
push offset _MAPPATH_STR
push -1
push offset _THISPATH_STR
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea ebx, [ebp-96]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-120]
push eax
call _LOAD_NAMES_FROM_FILE@8
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
push 0
push -1
push offset _MAPS_TABLE
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 9
push offset _Lt_00C6
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _MAPNAME_STR
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
push 0
push -1
push offset _MAPS_TABLE
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 7
push offset _Lt_00C8
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign@20
lea eax, [ebp-144]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _MAPID_STR
call _fb_StrAssign@20
lea eax, [ebp-144]
push eax
call _fb_StrDelete@4
push offset _MAPS_TABLE
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 7
push offset _Lt_00CA
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign@20
lea eax, [ebp-156]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_AA_SI]
lea eax, [ebp-156]
push eax
call _fb_StrDelete@4
push offset _MAPS_TABLE
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push 7
push offset _Lt_00CC
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign@20
lea eax, [ebp-168]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_DD_SI]
lea eax, [ebp-168]
push eax
call _fb_StrDelete@4
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
fdiv qword ptr [_Lt_0153]
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
fdiv qword ptr [_Lt_0153]
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
push dword ptr [_Lt_0154]
pop dword ptr [_TEXTDELAY_SF]
mov word ptr [_WIN_SI], 4
push 0
call _fb_Timer@0
sub esp,8
fstp qword ptr [esp]
call _fb_Randomize@12
push offset _.Lt_0057
call _fb_DataRestore@4
mov word ptr [_TTT_SI], 0
mov ax, word ptr [_WIN_SI]
mov word ptr [ebp-208], ax
jmp .Lt_00CF
.Lt_00D2:
movsx eax, word ptr [_TTT_SI]
sal eax, 2
add eax, dword ptr [_WIN_SIA]
lea ebx, [eax-2]
push ebx
call _fb_DataReadShort@4
movsx ebx, word ptr [_TTT_SI]
sal ebx, 2
add ebx, dword ptr [_WIN_SIA]
lea eax, [ebx]
push eax
call _fb_DataReadShort@4
.Lt_00D0:
movsx eax, word ptr [_TTT_SI]
inc eax
mov word ptr [_TTT_SI], ax
.Lt_00CF:
movsx eax, word ptr [_TTT_SI]
movsx ebx, word ptr [ebp-208]
cmp eax, ebx
jle .Lt_00D2
.Lt_00D1:
push offset _LEVELS_TABLE
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push -1
push -1
push offset _LVUP_STR
push -1
push -1
push offset _LVUPPATH_STR
push -1
push offset _THISPATH_STR
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea ebx, [ebp-180]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign@20
lea eax, [ebp-204]
push eax
call _LOAD_NAMES_FROM_FILE@8
lea eax, [ebp-204]
push eax
call _fb_StrDelete@4
mov word ptr [_T_SI], 0
push offset _LEVELS_TABLE
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push 13
push offset _Lt_00B9
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign@20
lea eax, [ebp-216]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [ebp-220]
lea eax, [ebp-216]
push eax
call _fb_StrDelete@4
jmp .Lt_00D8
.Lt_00DB:
push offset _LEVELS_TABLE
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push -1
push -1
movsx eax, word ptr [_T_SI]
push eax
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push 8
push offset _Lt_00C0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-244]
push eax
call _fb_StrAssign@20
lea eax, [ebp-244]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_T_SI]
fistp word ptr [_L_SIA+eax*2]
lea eax, [ebp-244]
push eax
call _fb_StrDelete@4
.Lt_00D9:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_00D8:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-220]
cmp eax, ebx
jle .Lt_00DB
.Lt_00DA:
push 0
push 9
push offset _Lt_00DE
push -1
push offset _CTRL_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fmul qword ptr [_Lt_0153]
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
fadd qword ptr [_Lt_0156]
fcomp qword ptr [_Lt_0153]
fnstsw ax
test ah, 0b01000000
jz .Lt_00E0
push 0
push 5
push offset _Lt_00E1
push -1
push offset _CTRL_STR
call _fb_StrConcatAssign@20
.Lt_00E0:
mov word ptr [_TY_SI], 1
mov bx, word ptr [_DD_SI]
mov word ptr [ebp-208], bx
jmp .Lt_00E3
.Lt_00E6:
push 0
push -1
push offset _MAPS_TABLE
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push -1
push -1
movsx ebx, word ptr [_TY_SI]
push ebx
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push 11
push offset _Lt_00E7
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-232]
push eax
call _fb_StrAssign@20
lea eax, [ebp-232]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _BG_STR
call _fb_StrAssign@20
lea eax, [ebp-232]
push eax
call _fb_StrDelete@4
push 0
push -1
push offset _MAPS_TABLE
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
push -1
movsx eax, word ptr [_TY_SI]
push eax
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push 11
push offset _Lt_00EA
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
lea eax, [ebp-244]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-256]
push eax
call _fb_StrAssign@20
lea eax, [ebp-256]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _FG_STR
call _fb_StrAssign@20
lea eax, [ebp-256]
push eax
call _fb_StrDelete@4
push 0
push -1
push offset _MAPS_TABLE
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push -1
movsx eax, word ptr [_TY_SI]
push eax
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push 11
push offset _Lt_00ED
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign@20
lea eax, [ebp-280]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _RG_STR
call _fb_StrAssign@20
lea eax, [ebp-280]
push eax
call _fb_StrDelete@4
push 0
push -1
movsx eax, word ptr [_TY_SI]
push eax
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push -1
push offset _R_STR
call _fb_StrAssign@20
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-284], ax
jmp .Lt_00F1
.Lt_00F4:
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
push offset _Lt_00F5
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul ebx, 108
lea eax, [_E_STRA+ebx+24]
push eax
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
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00F5
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 108
lea eax, [_E_STRA+ebx+36]
push eax
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
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrConcatAssign@20
push 0
push 9
push offset _Lt_00F6
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 108
lea eax, [_E_STRA+ebx+48]
push eax
call _fb_StrAssign@20
push 5
push offset _Lt_00F5
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00F8
.Lt_00F9:
call _LN_PRFLBLNK@0
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_00F8:
push 5
push offset _Lt_00FB
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00FA
.Lt_00FC:
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_00FD
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_00FE
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
push offset _Lt_00FB
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0157]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0158]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0157]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0158]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_015A]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_015B]
pop dword ptr [_PRFLESSSPD_SF]
push 5
push offset _Lt_0101
push -1
push offset _MAPNAME_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0100
.Lt_0102:
fld dword ptr [_PRFLIDTY_SF]
fcomp dword ptr [_Lt_0155]
fnstsw ax
test ah, 0b01000000
jz .Lt_0104
push 0
push 5
push offset _Lt_0105
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
.Lt_0104:
.Lt_0103:
.Lt_0100:
.Lt_00FF:
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_00FA:
push 5
push offset _Lt_0107
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0106
.Lt_0108:
call _LN_PRFLBLNK@0
push 0
push 5
push offset _Lt_0107
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0107
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_Lt_015C]
pop dword ptr [_PRFLIDTY_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_0106:
push 5
push offset _Lt_010A
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0109
.Lt_010B:
call _LN_PRFLBLNK@0
push 0
push 4
push offset _Lt_010C
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00FB
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
push offset _Lt_010A
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_015D]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_015E]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_015D]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_015E]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_015A]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_015C]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_0109:
push 5
push offset _Lt_010E
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_010D
.Lt_010F:
call _LN_PRFLBLNK@0
push 0
push 8
push offset _Lt_0110
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0111
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
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fcomp qword ptr [_Lt_015F]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0113
push 0
push 5
push offset _Lt_0114
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
.Lt_0113:
.Lt_0112:
push 0
push 5
push offset _Lt_010E
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0160]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0161]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_015C]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0160]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0161]
pop dword ptr [_PRFLSTRMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_010D:
push 5
push offset _Lt_0116
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0115
.Lt_0117:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_0118
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0119
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0116
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0162]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0161]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_015B]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_015C]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0157]
pop dword ptr [_PRFLEXP_SF]
push dword ptr [_Lt_0164]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_015C]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0162]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0161]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0162]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0165]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_0166]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_0115:
push 5
push offset _Lt_011B
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_011A
.Lt_011C:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_011D
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 21
push offset _Lt_011E
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_011B
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0164]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0158]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0167]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_015C]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0164]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0158]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0168]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_011A:
push 5
push offset _Lt_0120
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_011F
.Lt_0121:
call _LN_PRFLBLNK@0
push 0
push 13
push offset _Lt_0122
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0123
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
push offset _Lt_0120
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0169]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_016A]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_016B]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_016C]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_015B]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0169]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_016A]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_016D]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_016E]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_011F:
push 5
push offset _Lt_0125
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0124
.Lt_0126:
call _LN_PRFLBLNK@0
push 0
push 14
push offset _Lt_0127
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0123
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
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fstp dword ptr [_RR_SF]
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_016F]
fnstsw ax
test ah, 0b01000001
setz al
shr eax, 1
sbb eax, eax
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_0170]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0129
push 0
push 5
push offset _Lt_0114
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
.Lt_0129:
.Lt_0128:
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_0170]
fnstsw ax
test ah, 0b01000001
setz al
shr eax, 1
sbb eax, eax
fld dword ptr [_RR_SF]
fcomp dword ptr [_Lt_0155]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_012B
push 0
push 5
push offset _Lt_012C
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
.Lt_012B:
.Lt_012A:
push 0
push 5
push offset _Lt_0125
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_015D]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0171]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_015C]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_016C]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_015B]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_015D]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0171]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0172]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_0124:
push 5
push offset _Lt_012E
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_012D
.Lt_012F:
call _LN_PRFLBLNK@0
push 0
push 5
push offset _Lt_0130
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_012E
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_0155]
fnstsw ax
test ah, 0b01000000
jz .Lt_0132
.Lt_0133:
push 0
push 5
push offset _Lt_0134
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
jmp .Lt_0131
.Lt_0132:
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_015C]
fnstsw ax
test ah, 0b01000000
jz .Lt_0135
.Lt_0136:
push 0
push 5
push offset _Lt_0137
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
jmp .Lt_0131
.Lt_0135:
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_015B]
fnstsw ax
test ah, 0b01000000
jz .Lt_0138
.Lt_0139:
push 0
push 5
push offset _Lt_013A
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
.Lt_0138:
.Lt_0131:
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0171]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0171]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0171]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0171]
pop dword ptr [_PRFLSTRMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_012D:
push 5
push offset _Lt_013C
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_013B
.Lt_013D:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_013E
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_013F
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
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fmul qword ptr [_Lt_0153]
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
fadd qword ptr [_Lt_0156]
fcomp qword ptr [_Lt_0153]
fnstsw ax
test ah, 0b01000000
jz .Lt_0141
push 0
push 9
push offset _Lt_0142
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0143
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
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
lea eax, [ebp-320]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
.Lt_0141:
.Lt_0140:
push 0
push 5
push offset _Lt_013C
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0162]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0162]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0162]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0173]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0162]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0162]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0161]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_015B]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_0174]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_013B:
push 5
push offset _Lt_0148
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0147
.Lt_0149:
call _LN_PRFLBLNK@0
push 0
push 15
push offset _Lt_014A
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fmul qword ptr [_Lt_0153]
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
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b01000000
jz .Lt_014C
push 0
push 5
push offset _Lt_014D
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
jmp .Lt_014B
.Lt_014C:
push 0
push 5
push offset _Lt_014E
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
.Lt_014B:
push 0
push 5
push offset _Lt_0148
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0175]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0175]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_00F7
.Lt_0147:
push 5
push offset _Lt_0150
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_014F
.Lt_0151:
call _LN_PRFLBLNK@0
push 0
push 12
push offset _Lt_0152
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
push offset _Lt_0150
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0176]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0157]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0176]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLSET@0
.Lt_014F:
.Lt_00F7:
.Lt_00F2:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_00F1:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-284]
cmp eax, ebx
jle .Lt_00F4
.Lt_00F3:
.Lt_00E4:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_00E3:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-208]
cmp ebx, eax
jle .Lt_00E6
.Lt_00E5:
push 1
call _fb_FileClose@4
.Lt_00A9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STARTTITLE@0
_LN_STARTTITLE@0:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.Lt_017B:
.Lt_017D:
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
push offset _Lt_0180
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
push offset _Lt_0181
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
push offset _Lt_0182
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
push offset _Lt_0183
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
push offset _Lt_0184
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
push offset _Lt_0185
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
push offset _Lt_0186
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
push offset _Lt_0187
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
push offset _Lt_0188
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
push offset _Lt_0189
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
push offset _Lt_018A
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
push offset _Lt_018B
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push dword ptr [_CLV_BUFFER_TITLE]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _LN_COMMANDWAIT@0
push offset _INPUT_TABLE
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 8
push offset _Lt_018C
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
push offset _C_STR
call _COMPARE_KEY@12
movsx ebx, word ptr [_YM_SI]
cmp ebx, 21
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
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
mov dword ptr [ebp-32], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-32], 0
je .Lt_018F
call _LN_SCREENSET@0
mov dword ptr [_RESTART_ROE], 1
jmp .Lt_017E
.Lt_018F:
.Lt_018E:
push offset _INPUT_TABLE
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push 5
push offset _Lt_0191
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
lea eax, [ebp-44]
push eax
push offset _C_STR
call _COMPARE_KEY@12
movsx ebx, word ptr [_YM_SI]
cmp ebx, 23
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
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
mov dword ptr [ebp-48], eax
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-48], 0
je .Lt_0194
call _LN_SCREENSET@0
push 0
call _fb_End@4
.Lt_0194:
.Lt_0193:
push offset _INPUT_TABLE
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 5
push offset _Lt_00AB
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
push offset _C_STR
call _COMPARE_KEY@12
movsx ebx, word ptr [_YM_SI]
cmp ebx, 17
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
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
mov dword ptr [ebp-64], eax
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-64], 0
je .Lt_0198
call _LN_STARTHELP@0
.Lt_0198:
.Lt_0197:
.Lt_017F:
push offset _INPUT_TABLE
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset _Lt_019A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
push offset _C_STR
call _COMPARE_KEY@12
movsx ebx, word ptr [_YM_SI]
cmp ebx, 19
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
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
mov dword ptr [ebp-16], eax
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-16], 0
jne .Lt_017D
.Lt_017E:
.Lt_017C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STARTHELP@0
_LN_STARTHELP@0:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.Lt_01A9:
call _fb_FileFree@0
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_CLV_BUFFER_HELP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push 0
push dword ptr [ebp-4]
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
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
call _fb_FileOpen@24
.Lt_01AD:
push dword ptr [ebp-4]
call _fb_FileEof@4
not eax
test eax, eax
je .Lt_01AE
push 0
push -1
push offset _R_STR
push dword ptr [ebp-4]
call _fb_FileLineInput@16
push 13
push offset _Lt_01AF
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_01B1
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
.Lt_01B1:
.Lt_01B0:
push 11
push offset _Lt_01B2
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_01B4
push 0
push 0
push -1
push 1
push 22
call _fb_Locate@20
mov word ptr [_COLR_SI], 9
push 0
push 12
push offset _Lt_0189
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
push offset _Lt_01B5
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
.Lt_01B6:
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _LN_COMMANDWAIT@0
push offset _INPUT_TABLE
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 6
push offset _Lt_0086
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
lea eax, [ebp-56]
push eax
push offset _C_STR
call _COMPARE_KEY@12
movsx ebx, word ptr [_YM_SI]
cmp ebx, 24
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
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
mov dword ptr [ebp-60], eax
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-60], 0
je .Lt_01BB
push dword ptr [ebp-4]
call _fb_FileClose@4
jmp .Lt_01AA
.Lt_01BB:
.Lt_01BA:
.Lt_01B8:
push offset _INPUT_TABLE
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 9
push offset _Lt_019A
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
push offset _C_STR
call _COMPARE_KEY@12
not eax
movsx ebx, word ptr [_YM_SI]
cmp ebx, 22
sete bl
shr ebx, 1
sbb ebx, ebx
movsx ecx, word ptr [_XM_SI]
cmp ecx, 3
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
mov dword ptr [ebp-44], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-44], 0
jne .Lt_01B6
.Lt_01B7:
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
.Lt_01B4:
.Lt_01B3:
push 6
push offset _Lt_01BF
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_01C1
push dword ptr [ebp-4]
call _fb_FileClose@4
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
jmp .Lt_01AA
.Lt_01C1:
.Lt_01C0:
push 8
push offset _Lt_01C2
push -1
push 7
push offset _R_STR
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01C4
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
.Lt_01C4:
.Lt_01C3:
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
je .Lt_01C6
push -1
push 0
call _fb_SPACE@4
push eax
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_01C8
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
jmp .Lt_01C7
.Lt_01C8:
push 1
push 0
call _fb_PrintVoid@8
.Lt_01C7:
.Lt_01C6:
.Lt_01C5:
jmp .Lt_01AD
.Lt_01AE:
push dword ptr [ebp-4]
call _fb_FileClose@4
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _CINPUT@0
.Lt_01AA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_MAIN@0
_LN_MAIN@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_01CF:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-4], ax
jmp .Lt_01D2
.Lt_01D5:
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-8], ax
jmp .Lt_01D7
.Lt_01DA:
mov word ptr [_A_SI], 0
mov word ptr [_D_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+72]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b01000000
jz .Lt_01DC
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_Lt_0156]
push dword ptr [_Lt_0156+4]
pop dword ptr [_G_DFA+eax+76]
pop dword ptr [_G_DFA+eax+72]
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_GETACTION@0
push 5
push offset _Lt_01DD
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
je .Lt_01DF
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_01DF:
.Lt_01DE:
push 4
push 1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 108
lea eax, [_E_STRA+ebx+24]
push eax
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1819042167
jne .Lt_01E2
.Lt_01E3:
jmp .Lt_01E0
.Lt_01E2:
cmp dword ptr [ebp-12], 1919185011
jne .Lt_01E4
.Lt_01E5:
call _LN_CRTNSPDR@0
jmp .Lt_01E0
.Lt_01E4:
cmp dword ptr [ebp-12], 1600284023
jne .Lt_01E6
.Lt_01E7:
call _LN_CRTNWEB@0
jmp .Lt_01E0
.Lt_01E6:
cmp dword ptr [ebp-12], 2036495460
jne .Lt_01E8
.Lt_01E9:
call _LN_CRTNDTBY@0
jmp .Lt_01E0
.Lt_01E8:
cmp dword ptr [ebp-12], 1819112039
jne .Lt_01EA
.Lt_01EB:
call _LN_CRTNGRML@0
jmp .Lt_01E0
.Lt_01EA:
cmp dword ptr [ebp-12], 1953196147
jne .Lt_01EC
.Lt_01ED:
call _LN_CRTNSHKT@0
jmp .Lt_01E0
.Lt_01EC:
cmp dword ptr [ebp-12], 1684499813
jne .Lt_01EE
.Lt_01EF:
call _LN_CRTNEMGD@0
jmp .Lt_01E0
.Lt_01EE:
cmp dword ptr [ebp-12], 1601203561
jne .Lt_01F0
.Lt_01F1:
call _LN_CRTNIMP@0
jmp .Lt_01E0
.Lt_01F0:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_01F2
.Lt_01F4:
call _LN_CRTNFIRE@0
jmp .Lt_01E0
.Lt_01F2:
cmp dword ptr [ebp-12], 2019847792
jne .Lt_01F5
.Lt_01F6:
call _LN_CRTNPNDX@0
jmp .Lt_01E0
.Lt_01F5:
cmp dword ptr [ebp-12], 1937007459
jne .Lt_01F7
.Lt_01F9:
call _LN_CRTNCCTS@0
jmp .Lt_01E0
.Lt_01F7:
cmp dword ptr [ebp-12], 1919183970
jne .Lt_01FA
.Lt_01FB:
call _LN_CRTNBLDR@0
jmp .Lt_01E0
.Lt_01FA:
cmp dword ptr [ebp-12], 1953723748
jne .Lt_01FC
.Lt_01FD:
call _LN_CRTNDUST@0
.Lt_01FC:
.Lt_01E0:
.Lt_01DC:
.Lt_01DB:
.Lt_01D8:
movsx eax, word ptr [_TY_SI]
inc eax
mov word ptr [_TY_SI], ax
.Lt_01D7:
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [ebp-8]
cmp eax, ebx
jle .Lt_01DA
.Lt_01D9:
.Lt_01D3:
movsx ebx, word ptr [_TX_SI]
inc ebx
mov word ptr [_TX_SI], bx
.Lt_01D2:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [ebp-4]
cmp ebx, eax
jle .Lt_01D5
.Lt_01D4:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-4], ax
jmp .Lt_01FF
.Lt_0202:
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-8], ax
jmp .Lt_0204
.Lt_0207:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_Lt_0208]
push dword ptr [_Lt_0208+4]
pop dword ptr [_G_DFA+eax+76]
pop dword ptr [_G_DFA+eax+72]
.Lt_0205:
movsx eax, word ptr [_TY_SI]
inc eax
mov word ptr [_TY_SI], ax
.Lt_0204:
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [ebp-8]
cmp eax, ebx
jle .Lt_0207
.Lt_0206:
.Lt_0200:
movsx ebx, word ptr [_TX_SI]
inc ebx
mov word ptr [_TX_SI], bx
.Lt_01FF:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [ebp-4]
cmp ebx, eax
jle .Lt_0202
.Lt_0201:
.Lt_01D0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_COMMAND@0
_LN_COMMAND@0:
.Lt_020B:
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
.Lt_020C:
ret
.balign 16

.globl _LN_COMMAND2@0
_LN_COMMAND2@0:
.Lt_020D:
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
jle .Lt_0210
mov eax, dword ptr [_CLV_BUFFER_STATUS]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
mov word ptr [_STATX_SI], 24
call _LN_STATUS@0
.Lt_0210:
.Lt_020F:
.Lt_020E:
ret
.balign 16

.globl _LN_COMMAND3@0
_LN_COMMAND3@0:
push ebp
mov ebp, esp
sub esp, 208
push ebx
push esi
.Lt_0211:
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
push offset _Lt_0213
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 0
push 1
push offset __ZN10NAMES_TYPED1Ev
push offset __ZN10NAMES_TYPEC1Ev
push 24
push offset _NAMES_TABLE
call _fb_ArrayRedimObj
add esp, 28
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [_NAMES_TABLE]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
mov ebx, dword ptr [_NAMES_TABLE]
lea eax, [ebx+12]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 12
mov dword ptr [ebp-44], 2
mov dword ptr [ebp-40], 18
lea eax, [ebp-36]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 6
rep stosd
pop edi
pop eax
push 0
push 0
push 0
push 0
push 2
push -1
push -1
push 12
lea eax, [ebp-60]
push eax
call _fb_ArrayRedimEx
add esp, 36
mov word ptr [ebp-64], 0
mov word ptr [ebp-68], 0
mov word ptr [ebp-72], 0
lea eax, [ebp-132]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 15
rep stosd
pop edi
pop eax
lea eax, [ebp-132]
mov dword ptr [ebp-168], eax
lea eax, [ebp-132]
mov dword ptr [ebp-164], eax
mov dword ptr [ebp-160], 60
mov dword ptr [ebp-156], 12
mov dword ptr [ebp-152], 1
mov dword ptr [ebp-148], 49
mov dword ptr [ebp-144], 5
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 4
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
je .Lt_0217
mov word ptr [_TITLED_SI], 1
call _LN_COMMAND2@0
jmp .Lt_0216
.Lt_0217:
mov word ptr [_TITLED_SI], 0
call _LN_COMMAND2@0
.Lt_0216:
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
push 7
push offset _Lt_021A
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0219
.Lt_021B:
push offset _SAVE_TABLE
lea eax, [ebp-12]
push eax
call _SAVEGAME_SAVE@8
push 0
push 2
push offset _Lt_0080
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_STARTTITLE@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-168]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_0212
jmp .Lt_0218
.Lt_0219:
push 7
push offset _Lt_021D
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_021C
.Lt_021E:
push offset _SAVE_TABLE
lea eax, [ebp-12]
push eax
call _SAVEGAME_LOAD@8
push 0
push 2
push offset _Lt_0080
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_STARTTITLE@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-168]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_0212
.Lt_021C:
.Lt_0218:
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0220
mov word ptr [_STATX_SI], 24
call _LN_GETACTION@0
push offset _INPUT_TABLE
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 5
push offset _Lt_0221
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign@20
lea eax, [ebp-196]
push eax
push offset _C_STR
call _COMPARE_KEY@12
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
mov dword ptr [ebp-200], eax
lea eax, [ebp-196]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-200], 0
je .Lt_0224
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_PAYLEVELUP@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-168]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_0212
.Lt_0224:
.Lt_0223:
push 5
push offset _Lt_0229
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0228
.Lt_022A:
mov word ptr [_D_SI], 0
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-168]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_0212
jmp .Lt_0227
.Lt_0228:
push 7
push offset _Lt_022C
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_022B
.Lt_022D:
mov word ptr [_D_SI], 1
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-168]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_0212
jmp .Lt_0227
.Lt_022B:
push 7
push offset _Lt_022F
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_022E
.Lt_0230:
mov word ptr [_D_SI], 2
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-168]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_0212
jmp .Lt_0227
.Lt_022E:
push 7
push offset _Lt_0232
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0231
.Lt_0233:
mov word ptr [_D_SI], 3
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-168]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_0212
jmp .Lt_0227
.Lt_0231:
push 7
push offset _Lt_0235
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0234
.Lt_0236:
mov word ptr [_D_SI], 4
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
mov dword ptr [_EXITCOMMAND3], -1
lea eax, [ebp-168]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_0212
.Lt_0234:
.Lt_0227:
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
je .Lt_0238
mov word ptr [_D_SI], 0
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_0238:
.Lt_0237:
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
je .Lt_023A
mov word ptr [_D_SI], 1
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_023A:
.Lt_0239:
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
je .Lt_023C
mov word ptr [_D_SI], 2
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_023C:
.Lt_023B:
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
je .Lt_023E
mov word ptr [_D_SI], 3
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_023E:
.Lt_023D:
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
je .Lt_0240
mov word ptr [_D_SI], 4
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_0240:
.Lt_023F:
push 5
push offset _Lt_01DD
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
je .Lt_0242
movsx eax, word ptr [_LB_SI]
cmp eax, -1
jne .Lt_0244
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
je .Lt_0246
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_STATX_SI]
sub ebx, eax
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027C]
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
fistp word ptr [ebp-64]
movsx ebx, word ptr [_YM_SI]
add ebx, -14
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027C]
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
fistp word ptr [ebp-68]
movsx ebx, word ptr [ebp-64]
movsx eax, word ptr [ebp-68]
imul eax, 5
add ebx, eax
inc ebx
mov word ptr [ebp-72], bx
movsx ebx, word ptr [ebp-72]
cmp ebx, 1
setge bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [ebp-72]
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
imul eax, 108
lea ecx, [_E_STRA+eax+12]
push ecx
fstp qword ptr [ebp-208]
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fld qword ptr [ebp-208]
fcompp
fnstsw ax
test ah, 0b01000001
setnz al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0248
push 0
push -1
push 4
movsx eax, word ptr [ebp-72]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
je .Lt_024A
push 0
push -1
push offset _AA_STR
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
jmp .Lt_0249
.Lt_024A:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
.Lt_0249:
push 0
push 3
push offset _Lt_024B
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0248:
.Lt_0247:
.Lt_0246:
.Lt_0245:
jmp .Lt_0243
.Lt_0244:
push 0
push -1
push offset _ACTION_STR
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
push 0
push -1
push 0
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-120]
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
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
push -1
lea ebx, [ebp-108]
push ebx
call _fb_StrAssign@20
push 0
push -1
push -1
lea ebx, [ebp-108]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
call _fb_CVL@4
test eax, eax
jle .Lt_024D
mov word ptr [ebp-72], 1
lea eax, [ebp-96]
push eax
call _fb_CVL@4
mov word ptr [ebp-204], ax
jmp .Lt_024F
.Lt_0252:
push 0
push -1
push 4
movsx eax, word ptr [ebp-72]
sal eax, 2
add eax, -3
push eax
lea eax, [ebp-108]
push eax
call _fb_StrMid@12
push eax
push -1
push offset _AA_STR
call _fb_StrAssign@20
push -1
lea eax, [ebp-132]
push eax
push -1
push offset _AA_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0254
push 0
push -1
movsx eax, word ptr [ebp-72]
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
call _fb_CVL@4
inc eax
mov word ptr [ebp-72], ax
.Lt_0254:
.Lt_0253:
.Lt_0250:
movsx eax, word ptr [ebp-72]
inc eax
mov word ptr [ebp-72], ax
.Lt_024F:
movsx eax, word ptr [ebp-72]
movsx ebx, word ptr [ebp-204]
cmp eax, ebx
jle .Lt_0252
.Lt_0251:
lea ebx, [ebp-120]
push ebx
call _fb_CVL@4
test eax, eax
jle .Lt_0256
push 7
push offset _Lt_0259
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0258
.Lt_025A:
push 0
push -1
lea eax, [ebp-120]
push eax
call _fb_CVL@4
dec eax
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027F]
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
fmul qword ptr [_Lt_027F]
lea eax, [ebp-120]
push eax
fstp qword ptr [ebp-208]
call _fb_CVL@4
add eax, 8
mov ecx, 5
cdq
idiv ecx
mov eax, edx
push eax
fild dword ptr [esp]
add esp, 4
fadd qword ptr [ebp-208]
fadd qword ptr [_Lt_0156]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
jmp .Lt_0257
.Lt_0258:
push 7
push offset _Lt_025C
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_025B
.Lt_025D:
push 0
push -1
lea eax, [ebp-120]
push eax
call _fb_CVL@4
dec eax
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027F]
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
fmul qword ptr [_Lt_027F]
lea eax, [ebp-120]
push eax
fstp qword ptr [ebp-208]
call _fb_CVL@4
add eax, 10
mov ecx, 5
cdq
idiv ecx
mov eax, edx
push eax
fild dword ptr [esp]
add esp, 4
fadd qword ptr [ebp-208]
fadd qword ptr [_Lt_0156]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
jmp .Lt_0257
.Lt_025B:
push 7
push offset _Lt_025F
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_025E
.Lt_0260:
push 0
push -1
lea eax, [ebp-120]
push eax
call _fb_CVL@4
add eax, -5
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-120]
push eax
call _fb_CVL@4
cmp eax, 1
jge .Lt_0262
push 0
push -1
lea eax, [ebp-120]
push eax
call _fb_CVL@4
lea ebx, [ebp-96]
push ebx
mov ebx, eax
call _fb_CVL@4
add ebx, eax
push ebx
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
.Lt_0262:
.Lt_0261:
jmp .Lt_0257
.Lt_025E:
push 7
push offset _Lt_0264
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0263
.Lt_0265:
push 0
push -1
lea eax, [ebp-120]
push eax
call _fb_CVL@4
add eax, 5
push eax
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-120]
push eax
call _fb_CVL@4
lea ebx, [ebp-96]
push ebx
mov ebx, eax
call _fb_CVL@4
cmp ebx, eax
jle .Lt_0267
push 0
push -1
lea eax, [ebp-120]
push eax
call _fb_CVL@4
lea ebx, [ebp-96]
push ebx
mov ebx, eax
call _fb_CVL@4
sub ebx, eax
push ebx
call _fb_MKL@4
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
.Lt_0267:
.Lt_0266:
.Lt_0263:
.Lt_0257:
push 0
push -1
push 4
lea eax, [ebp-120]
push eax
call _fb_CVL@4
sal eax, 2
add eax, -3
push eax
lea eax, [ebp-108]
push eax
call _fb_StrMid@12
push eax
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
.Lt_0256:
.Lt_0255:
.Lt_024D:
.Lt_024C:
.Lt_0243:
.Lt_0242:
.Lt_0241:
call _LN_PUTACTION@0
call _fb_Timer@0
fstp dword ptr [_ST_SF]
.Lt_0220:
.Lt_021F:
mov word ptr [_STATX_SI], 24
push offset _INPUT_TABLE
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 6
push offset _Lt_0086
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
lea eax, [ebp-180]
push eax
push offset _C_STR
call _COMPARE_KEY@12
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
mov dword ptr [ebp-184], eax
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-184], 0
je .Lt_026A
call _LN_STARTTITLE@0
lea eax, [ebp-168]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_0212
.Lt_026A:
.Lt_0269:
movsx eax, word ptr [_LB_SI]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_YM_SI]
cmp ebx, 2
setge bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
movsx ebx, word ptr [_YM_SI]
cmp ebx, 22
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_026D
movsx ebx, word ptr [_XM_SI]
cmp ebx, 2
setge bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_XM_SI]
cmp eax, 22
setle al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_026F
movsx eax, word ptr [_YM_SI]
add eax, -2
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027C]
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
movsx eax, word ptr [_DY_SI]
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
faddp
fadd qword ptr [_Lt_0282]
fistp word ptr [_TEMPY_SI]
movsx eax, word ptr [_XM_SI]
add eax, -2
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027C]
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
movsx eax, word ptr [_EX_SI]
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
faddp
fadd qword ptr [_Lt_0282]
fistp word ptr [_TEMPX_SI]
mov ax, word ptr [_TEMPY_SI]
mov word ptr [_DY_SI], ax
mov ax, word ptr [_TEMPX_SI]
mov word ptr [_EX_SI], ax
push 0
push 3
push offset _Lt_024B
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_026F:
.Lt_026E:
.Lt_026D:
.Lt_026C:
movsx eax, word ptr [_EX_SI]
cmp eax, 1
jge .Lt_0271
.Lt_0272:
mov word ptr [_EX_SI], 1
jmp .Lt_0270
.Lt_0271:
movsx eax, word ptr [_EX_SI]
movsx ebx, word ptr [_AA_SI]
cmp eax, ebx
jle .Lt_0273
.Lt_0274:
mov bx, word ptr [_AA_SI]
mov word ptr [_EX_SI], bx
.Lt_0273:
.Lt_0270:
movsx ebx, word ptr [_DY_SI]
cmp ebx, 1
jge .Lt_0276
.Lt_0277:
mov word ptr [_DY_SI], 1
jmp .Lt_0275
.Lt_0276:
movsx ebx, word ptr [_DY_SI]
movsx eax, word ptr [_DD_SI]
cmp ebx, eax
jle .Lt_0278
.Lt_0279:
mov ax, word ptr [_DD_SI]
mov word ptr [_DY_SI], ax
.Lt_0278:
.Lt_0275:
movsx eax, word ptr [_RB_SI]
cmp eax, -1
jne .Lt_027B
push 0
push 2
push offset _Lt_0096
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_027B:
.Lt_027A:
lea eax, [ebp-168]
push eax
call _fb_ArrayDestructStr@4
lea eax, [ebp-60]
push eax
call _fb_ArrayStrErase@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0212:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_NAMES@0
_LN_NAMES@0:
.Lt_02AE:
.Lt_02AF:
ret
.balign 16

.globl _LN_SWAPDATA@0
_LN_SWAPDATA@0:
push ebx
push esi
.Lt_02B0:
mov word ptr [_T_SI], 0
.Lt_02B5:
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 9
movsx ecx, word ptr [_T_SI]
add eax, ecx
imul eax, 12
lea ecx, [_E_STRA+eax]
push ecx
push 0
push -1
movsx ecx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx esi, word ptr [_AA_SI]
imul eax, esi
add ecx, eax
imul ecx, 9
movsx eax, word ptr [_T_SI]
add ecx, eax
imul ecx, 12
lea eax, [_E_STRA+ecx]
push eax
call _fb_StrSwap@24
.Lt_02B3:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_02B2:
movsx eax, word ptr [_T_SI]
cmp eax, 1
jle .Lt_02B5
.Lt_02B4:
push 0
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+24]
push ecx
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
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add eax, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add eax, esi
imul eax, 108
lea esi, [_E_STRA+eax+24]
push esi
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
movsx esi, word ptr [_TY_SI]
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add eax, esi
imul eax, 108
lea esi, [_E_STRA+eax+24]
push esi
call _fb_StrAssignMid@16
push offset _TEMP2_STR
push 4
push 1
movsx esi, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add esi, ebx
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add esi, ebx
imul esi, 108
lea ebx, [_E_STRA+esi+24]
push ebx
call _fb_StrAssignMid@16
mov word ptr [_T_SI], 3
.Lt_02B9:
push 0
push -1
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ecx, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul ecx, esi
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx eax, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul eax, esi
add ecx, eax
dec ecx
movsx eax, word ptr [_AA_SI]
imul ecx, eax
add ebx, ecx
imul ebx, 9
movsx ecx, word ptr [_T_SI]
add ebx, ecx
imul ebx, 12
lea ecx, [_E_STRA+ebx]
push ecx
push 0
push -1
movsx ecx, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add ecx, ebx
imul ecx, 9
movsx ebx, word ptr [_T_SI]
add ecx, ebx
imul ecx, 12
lea ebx, [_E_STRA+ecx]
push ebx
call _fb_StrSwap@24
.Lt_02B7:
movsx ebx, word ptr [_T_SI]
inc ebx
mov word ptr [_T_SI], bx
.Lt_02B6:
movsx ebx, word ptr [_T_SI]
cmp ebx, 4
jle .Lt_02B9
.Lt_02B8:
mov word ptr [_T_SI], 0
.Lt_02BD:
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx eax, word ptr [_AA_SI]
imul ecx, eax
add ebx, ecx
imul ebx, 17
movsx ecx, word ptr [_T_SI]
add ebx, ecx
push dword ptr [_G_DFA+ebx*8+4]
push dword ptr [_G_DFA+ebx*8]
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
movsx eax, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add eax, esi
dec eax
movsx esi, word ptr [_AA_SI]
imul eax, esi
add ebx, eax
imul ebx, 17
movsx eax, word ptr [_T_SI]
add ebx, eax
movsx eax, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add eax, esi
imul eax, 17
movsx esi, word ptr [_T_SI]
add eax, esi
push dword ptr [_G_DFA+ebx*8]
push dword ptr [_G_DFA+ebx*8+4]
pop dword ptr [_G_DFA+eax*8+4]
pop dword ptr [_G_DFA+eax*8]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add ebx, esi
imul ebx, 17
movsx esi, word ptr [_T_SI]
add ebx, esi
pop dword ptr [_G_DFA+ebx*8]
pop dword ptr [_G_DFA+ebx*8+4]
.Lt_02BB:
movsx ebx, word ptr [_T_SI]
inc ebx
mov word ptr [_T_SI], bx
.Lt_02BA:
movsx ebx, word ptr [_T_SI]
cmp ebx, 16
jle .Lt_02BD
.Lt_02BC:
.Lt_02B1:
pop esi
pop ebx
ret
.balign 16

.globl _LN_ATTACK@0
_LN_ATTACK@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_02BE:
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702127970
jne .Lt_02C2
.Lt_02C4:
call _LN_ATTKBITE@0
jmp .Lt_02C0
.Lt_02C2:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_02C5
.Lt_02C7:
call _LN_ATTKPNCH@0
jmp .Lt_02C0
.Lt_02C5:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_02C8
.Lt_02CA:
call _LN_ATTKKICK@0
jmp .Lt_02C0
.Lt_02C8:
cmp dword ptr [ebp-4], 1836019318
jne .Lt_02CB
.Lt_02CC:
call _LN_ATTKVNOM@0
jmp .Lt_02C0
.Lt_02CB:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_02CD
.Lt_02CE:
call _LN_ATTKDGGR@0
jmp .Lt_02C0
.Lt_02CD:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_02CF
.Lt_02D0:
call _LN_ATTKPIKE@0
jmp .Lt_02C0
.Lt_02CF:
cmp dword ptr [ebp-4], 1701999971
jne .Lt_02D1
.Lt_02D3:
call _LN_USECURE@0
jmp .Lt_02C0
.Lt_02D1:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_02D4
.Lt_02D5:
call _LN_ATTKFIRE@0
jmp .Lt_02C0
.Lt_02D4:
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_02D6:
.Lt_02C0:
.Lt_02BF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_BATTLE@0
_LN_BATTLE@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_02D7:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul ebx, 136
movsx ecx, word ptr [_ESSSE_SI]
push ecx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+ebx+24]
fcompp
push eax
fnstsw ax
sahf
pop eax
setae bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_02DA
push offset _ATTACKPIC_STR
push 4
push 1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 108
lea eax, [_E_STRA+ebx+48]
push eax
call _fb_StrAssignMid@16
push offset _ATTACKNAME_STR
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul ebx, 136
movsx eax, word ptr [_STRUSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+ebx+16]
fsubrp
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+16]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
movsx eax, word ptr [_ESSSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+ebx+24]
fsubrp
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+24]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
fld qword ptr [_G_DFA+ebx+120]
fistp word ptr [_EVADEATTACK]
movsx ebx, word ptr [_EVADEATTACK]
push ebx
fild dword ptr [esp]
add esp, 4
push dword ptr [_Lt_0155]
fstp qword ptr [ebp-8]
call _fb_Rnd@4
movsx ebx, word ptr [_EVADEATTACK]
neg ebx
inc ebx
push ebx
fild dword ptr [esp]
add esp, 4
fxch st(1)
fmulp
fadd qword ptr [ebp-8]
fistp word ptr [_EVADEATTACK]
movsx ebx, word ptr [_ATTACKDAMAGE]
movsx ecx, word ptr [_EVADEATTACK]
imul ebx, ecx
push ebx
fild dword ptr [esp]
add esp, 4
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add esi, eax
dec esi
movsx eax, word ptr [_AA_SI]
imul esi, eax
add ebx, esi
imul ebx, 136
fsub qword ptr [_G_DFA+ebx+40]
fistp word ptr [_ATTACKBLOCKED]
movsx ebx, word ptr [_ATTACKBLOCKED]
test ebx, ebx
jge .Lt_02DE
mov word ptr [_ATTACKBLOCKED], 0
.Lt_02DE:
movsx ebx, word ptr [_ATTACKDAMAGE]
movsx esi, word ptr [_EVADEATTACK]
neg esi
inc esi
imul ebx, esi
movsx esi, word ptr [_ATTACKBLOCKED]
add ebx, esi
mov word ptr [_ATTACKDAMAGE], bx
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx eax, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul eax, esi
add ebx, eax
movsx eax, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ecx, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul ecx, esi
add eax, ecx
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
movsx eax, word ptr [_ATTACKDAMAGE]
push eax
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+ebx+8]
fsubrp
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+8]
call _LN_BATTLEATTACK@0
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add esi, eax
dec esi
movsx eax, word ptr [_AA_SI]
imul esi, eax
add ebx, esi
imul ebx, 136
fld qword ptr [_G_DFA+ebx+8]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b01000001
jz .Lt_02E0
call _LN_VICTORY@0
.Lt_02E0:
.Lt_02DF:
.Lt_02DC:
.Lt_02DB:
jmp .Lt_02D9
.Lt_02DA:
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_02D9:
.Lt_02D8:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKBITE@0
_LN_ATTKBITE@0:
push ebx
.Lt_02E4:
push 0
push 5
push offset _Lt_02C3
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02C3
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027D]
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
fadd qword ptr [_Lt_027F]
fistp word ptr [_ATTACKDAMAGE]
mov word ptr [_STRDAMAGE_SI], 2
call _LN_BATTLE@0
.Lt_02E5:
pop ebx
ret
.balign 16

.globl _LN_ATTKPNCH@0
_LN_ATTKPNCH@0:
push ebx
.Lt_02E6:
push 0
push 5
push offset _Lt_02C6
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02C6
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02E8]
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
fadd qword ptr [_Lt_027C]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02E9]
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
fadd qword ptr [_Lt_0153]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02E7:
pop ebx
ret
.balign 16

.globl _LN_ATTKWSTF@0
_LN_ATTKWSTF@0:
push ebx
.Lt_02EA:
push 0
push 5
push offset _Lt_0119
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0119
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027D]
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
fadd qword ptr [_Lt_027F]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02E8]
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
fadd qword ptr [_Lt_027D]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02EB:
pop ebx
ret
.balign 16

.globl _LN_ATTKKICK@0
_LN_ATTKKICK@0:
push ebx
.Lt_02EC:
push 0
push 5
push offset _Lt_02C9
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02C9
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027F]
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
fadd qword ptr [_Lt_027D]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02EE]
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
fadd qword ptr [_Lt_027C]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02ED:
pop ebx
ret
.balign 16

.globl _LN_ATTKVNOM@0
_LN_ATTKVNOM@0:
push ebx
.Lt_02EF:
push 0
push 5
push offset _Lt_0105
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0105
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027D]
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
fadd qword ptr [_Lt_02EE]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027D]
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
fadd qword ptr [_Lt_02F1]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02F0:
pop ebx
ret
.balign 16

.globl _LN_ATTKDGGR@0
_LN_ATTKDGGR@0:
push ebx
.Lt_02F2:
push 0
push 5
push offset _Lt_0114
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0114
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027D]
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
fadd qword ptr [_Lt_02E9]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02F1]
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
fadd qword ptr [_Lt_0156]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02F3:
pop ebx
ret
.balign 16

.globl _LN_ATTKPIKE@0
_LN_ATTKPIKE@0:
push ebx
.Lt_02F4:
push 0
push 5
push offset _Lt_012C
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_012C
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027C]
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
fadd qword ptr [_Lt_02F6]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027F]
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
fadd qword ptr [_Lt_02E9]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02F5:
pop ebx
ret
.balign 16

.globl _LN_ATTKBURN@0
_LN_ATTKBURN@0:
push ebx
.Lt_02F7:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02F9
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0153]
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
fadd qword ptr [_Lt_02F6]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027D]
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
fadd qword ptr [_Lt_02FC]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
push 5
push offset _Lt_01F3
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_02FB
call _LN_GONE@0
.Lt_02FB:
.Lt_02FA:
.Lt_02F8:
pop ebx
ret
.balign 16

.globl _LN_ATTKFIRE@0
_LN_ATTKFIRE@0:
push ebx
.Lt_02FD:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_01F3
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_0153]
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
fadd qword ptr [_Lt_02FC]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027D]
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
fadd qword ptr [_Lt_02FF]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02FE:
pop ebx
ret
.balign 16

.globl _LN_ATTKWEB@0
_LN_ATTKWEB@0:
push ebx
.Lt_0300:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_010A
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027F]
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
fadd qword ptr [_Lt_02FC]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0301:
pop ebx
ret
.balign 16

.globl _LN_ATTKTNGL@0
_LN_ATTKTNGL@0:
push ebx
.Lt_0302:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0304
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02E8]
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
fadd qword ptr [_Lt_02F1]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0303:
pop ebx
ret
.balign 16

.globl _LN_ATTKLASH@0
_LN_ATTKLASH@0:
push ebx
.Lt_0305:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0307
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_027F]
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
fadd qword ptr [_Lt_027F]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02EE]
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
fadd qword ptr [_Lt_02E9]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_0306:
pop ebx
ret
.balign 16

.globl _LN_USECURE@0
_LN_USECURE@0:
push ebx
push esi
.Lt_0308:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02E9]
fnstsw ax
test ah, 0b00000001
jnz .Lt_030B
push 4
push offset _Lt_02D2
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_02D2
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 5
push offset _Lt_02D2
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
imul ebx, 136
fld qword ptr [_Lt_0314]
fadd qword ptr [_G_DFA+ebx+24]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+24]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
movsx ecx, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx eax, word ptr [_AA_SI]
imul esi, eax
add ecx, esi
imul ecx, 136
fld qword ptr [_G_DFA+ecx+80]
fadd qword ptr [_G_DFA+ebx+8]
fadd qword ptr [_Lt_02F6]
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add esi, eax
dec esi
movsx eax, word ptr [_AA_SI]
imul esi, eax
add ebx, esi
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+8]
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx eax, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul eax, esi
add ebx, eax
movsx eax, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ecx, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul ecx, esi
add eax, ecx
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fadd qword ptr [_G_DFA+ebx+16]
fadd qword ptr [_Lt_02FC]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+16]
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add ebx, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add esi, eax
dec esi
movsx eax, word ptr [_AA_SI]
imul esi, eax
add ebx, esi
imul ebx, 136
fld qword ptr [_G_DFA+ebx+16]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b01000001
jz .Lt_030F
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx eax, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul eax, esi
add ebx, eax
movsx eax, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ecx, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul ecx, esi
add eax, ecx
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
push dword ptr [_Lt_0208]
push dword ptr [_Lt_0208+4]
pop dword ptr [_G_DFA+ebx+20]
pop dword ptr [_G_DFA+ebx+16]
.Lt_030F:
.Lt_030E:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
fld qword ptr [_G_DFA+ebx+8]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b01000001
jz .Lt_0311
call _LN_VICTORY@0
.Lt_0311:
.Lt_0310:
.Lt_030D:
.Lt_030C:
jmp .Lt_030A
.Lt_030B:
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_0313:
.Lt_0312:
.Lt_030A:
.Lt_0309:
pop esi
pop ebx
ret
.balign 16

.globl _LN_USESLEP@0
_LN_USESLEP@0:
push ebx
push esi
.Lt_0315:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02E9]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0318
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_031B
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 5
push offset _Lt_031B
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
imul ebx, 136
fld qword ptr [_Lt_0314]
fadd qword ptr [_G_DFA+ebx+24]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+24]
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+48]
push ecx
call _fb_StrAssignMid@16
push 4
push offset _Lt_01DD
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add eax, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add eax, esi
imul eax, 108
lea esi, [_E_STRA+eax+48]
push esi
call _fb_StrAssignMid@16
movsx esi, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ebx, word ptr [_AA_SI]
imul eax, ebx
add esi, eax
imul esi, 136
fld qword ptr [_G_DFA+esi+80]
fdiv qword ptr [_Lt_02F1]
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
mov si, word ptr [_TX_SI]
mov word ptr [_TEMPTX_SI], si
mov si, word ptr [_TY_SI]
mov word ptr [_TEMPTY_SI], si
movsx esi, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add esi, ebx
mov word ptr [_TX_SI], si
movsx esi, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx eax, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul eax, ebx
add esi, eax
mov word ptr [_TY_SI], si
call _LN_TEMPGET@0
push 5
push offset _Lt_01DD
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_031D
push 0
push 5
push offset _Lt_01DD
push -1
push offset _TEMPACTION_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fmul qword ptr [_Lt_02E8]
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
fadd qword ptr [_Lt_027F]
fistp word ptr [_TEMPDIS_SI]
call _LN_TEMPPUT@0
.Lt_031D:
.Lt_031C:
mov ax, word ptr [_TEMPTX_SI]
mov word ptr [_TX_SI], ax
mov ax, word ptr [_TEMPTY_SI]
mov word ptr [_TY_SI], ax
movsx eax, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ebx, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul ebx, esi
add eax, ebx
movsx ebx, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ecx, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul ecx, esi
add ebx, ecx
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_0324]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
fstp qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add eax, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add eax, esi
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b01000001
jz .Lt_031F
movsx eax, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ebx, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul ebx, esi
add eax, ebx
movsx ebx, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ecx, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul ecx, esi
add ebx, ecx
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_Lt_0208]
push dword ptr [_Lt_0208+4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_031F:
.Lt_031E:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
fld qword ptr [_G_DFA+eax+8]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b01000001
jz .Lt_0321
call _LN_VICTORY@0
.Lt_0321:
.Lt_0320:
.Lt_031A:
.Lt_0319:
jmp .Lt_0317
.Lt_0318:
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+48]
push ecx
call _fb_StrAssignMid@16
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+48]
push ecx
call _fb_StrAssignMid@16
.Lt_0323:
.Lt_0322:
.Lt_0317:
.Lt_0316:
pop esi
pop ebx
ret
.balign 16

.globl _LN_VICTORY@0
_LN_VICTORY@0:
push ebx
push esi
.Lt_0325:
call _LN_PRFLBLNK@0
push 0
push 6
push offset _Lt_0327
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+12]
push ecx
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0328
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
movsx ecx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add ecx, esi
imul ecx, 136
fld qword ptr [_G_DFA+ecx+8]
fstp dword ptr [_PRFLHP_SF]
movsx ecx, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ebx, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul ebx, esi
add ecx, ebx
movsx ebx, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx eax, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul eax, esi
add ebx, eax
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add ecx, ebx
imul ecx, 136
fld qword ptr [_G_DFA+ecx+16]
fstp dword ptr [_PRFLSTR_SF]
movsx ecx, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx eax, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul eax, ebx
add ecx, eax
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add eax, esi
dec eax
movsx esi, word ptr [_AA_SI]
imul eax, esi
add ecx, eax
imul ecx, 136
fld qword ptr [_G_DFA+ecx+24]
fstp dword ptr [_PRFLESS_SF]
movsx ecx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add ecx, esi
imul ecx, 136
fld qword ptr [_G_DFA+ecx+48]
fstp dword ptr [_PRFLEXP_SF]
movsx ecx, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ebx, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul ebx, esi
add ecx, ebx
movsx ebx, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx eax, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul eax, esi
add ebx, eax
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add ecx, ebx
imul ecx, 136
fld qword ptr [_G_DFA+ecx+56]
fstp dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0329]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLMAKE@0
.Lt_0326:
pop esi
pop ebx
ret
.balign 16

.globl _LN_PILLAGE@0
_LN_PILLAGE@0:
push ebx
push esi
.Lt_032A:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
fld qword ptr [_G_DFA+eax+48]
fistp word ptr [_EXPGAIN_SI]
movsx eax, word ptr [_EXPGAIN_SI]
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add eax, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add eax, esi
imul eax, 136
fadd qword ptr [_G_DFA+eax+56]
fistp word ptr [_EXPGAIN_SI]
movsx eax, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add eax, esi
imul eax, 136
movsx esi, word ptr [_EXPGAIN_SI]
push esi
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add eax, esi
imul eax, 136
fstp qword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ebx, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul ebx, esi
add eax, ebx
movsx ebx, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ecx, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul ecx, esi
add ebx, ecx
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fistp word ptr [_STRGAIN_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_STRGAIN_SI]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+16]
call _LN_DEFEATED@0
call _LN_WINDGGR@0
call _LN_WINPIKE@0
call _LN_WINGRPL@0
call _LN_WINSEED@0
call _LN_WINKEY1@0
call _LN_WINKEY2@0
.Lt_032B:
pop esi
pop ebx
ret
.balign 16

.globl _LN_PAYLEVELUP@0
_LN_PAYLEVELUP@0:
push ebp
mov ebp, esp
sub esp, 168
push ebx
.Lt_032C:
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
jle .Lt_032F
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_EXPSHOP]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
.Lt_0330:
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
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
movsx eax, word ptr [_L_SIA+ebx*2]
push eax
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0331
push -1
push offset _MENU_STR
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
push 5
push offset _Lt_0116
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0335
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0337
push 0
push 5
push offset _Lt_0338
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_033A
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0338
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_033A:
.Lt_0339:
.Lt_0337:
.Lt_0336:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b00000001
jnz .Lt_033E
push 0
push 5
push offset _Lt_033F
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0341
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_033F
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_0341:
.Lt_0340:
.Lt_033E:
.Lt_033D:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0345
push 0
push 5
push offset _Lt_02C3
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0347
push 0
push -1
push -1
push 2
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02C3
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_0347:
.Lt_0346:
.Lt_0345:
.Lt_0344:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b00000001
jnz .Lt_034B
push 0
push 5
push offset _Lt_02C6
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_034D
push 0
push -1
push -1
push 2
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02C6
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_034D:
.Lt_034C:
.Lt_034B:
.Lt_034A:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0153]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0351
push 0
push 5
push offset _Lt_02C9
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0353
push 0
push -1
push -1
push 10
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02C9
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_0353:
.Lt_0352:
.Lt_0351:
.Lt_0350:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_027C]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0357
push 0
push 5
push offset _Lt_02D2
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0359
push 0
push -1
push -1
push 20
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02D2
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_0359:
.Lt_0358:
.Lt_0357:
.Lt_0356:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_02EE]
fnstsw ax
test ah, 0b00000001
jnz .Lt_035D
push 0
push 5
push offset _Lt_0105
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_035F
push 0
push -1
push -1
push 30
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0105
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_035F:
.Lt_035E:
.Lt_035D:
.Lt_035C:
.Lt_0335:
.Lt_0334:
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0362
push -1
push offset _MENU_STR
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
push offset _MENU_STR
call _fb_StrAssign@20
push -1
push offset _MENU_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_02E9]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov word ptr [_MENUITEM_SI], 1
mov ax, word ptr [_MENUSIZE_SI]
mov word ptr [ebp-84], ax
jmp .Lt_0366
.Lt_0369:
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
jle .Lt_036B
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push 5
push 2
push offset _Lt_036F
push -1
push -1
movsx eax, word ptr [_MENUCOST_SI]
push eax
call _fb_IntToStr@4
push eax
push 5
push offset _Lt_036E
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
push -1
push 1
push offset _Lt_036D
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
push offset _Lt_0096
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_036C
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
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
lea eax, [ebp-168]
push eax
call _fb_StrDelete@4
.Lt_036B:
.Lt_036A:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_0378
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_036C
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
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
.Lt_0378:
.Lt_0377:
.Lt_0367:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_0366:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-84]
cmp eax, ebx
jle .Lt_0369
.Lt_0368:
.Lt_037B:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_00F5
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
jne .Lt_037D
movsx ebx, word ptr [_XM_SI]
cmp ebx, 15
jne .Lt_037F
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
je .Lt_0381
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
.Lt_0381:
.Lt_0380:
.Lt_037F:
.Lt_037E:
.Lt_037D:
.Lt_037C:
push 5
push offset _Lt_0331
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_0362
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
push offset _Lt_00F5
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0383
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_0385
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_ABILITYGAIN@0
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_0385:
.Lt_0384:
jmp .Lt_0330
.Lt_0383:
.Lt_0382:
push 5
push offset _Lt_0331
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0387
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_0389
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_LEVELUP@0
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_0389:
.Lt_0388:
jmp .Lt_0330
.Lt_0387:
.Lt_0386:
push 5
push offset _Lt_0362
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_038B
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_038A
.Lt_038B:
jmp .Lt_037B
.Lt_038A:
.Lt_032F:
.Lt_032E:
.Lt_032D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_MERCHANT@0
_LN_MERCHANT@0:
push ebp
mov ebp, esp
sub esp, 168
push ebx
push esi
.Lt_0391:
.Lt_0393:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0395
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
push offset _Lt_0114
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0397
push 0
push -1
push -1
push 5
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0114
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_0397:
.Lt_0396:
push 0
push 5
push offset _Lt_012C
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_039B
push 0
push -1
push -1
push 20
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_012C
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_039B:
.Lt_039A:
push 0
push 5
push offset _Lt_039E
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_03A0
push 0
push -1
push -1
push 15
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_039E
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_03A0:
.Lt_039F:
push 0
push 5
push offset _Lt_03A3
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_03A5
push 0
push -1
push -1
push 15
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03A3
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_03A5:
.Lt_03A4:
push 0
push 5
push offset _Lt_0119
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_03A9
push 0
push -1
push -1
push 10
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0119
push -1
push offset _MENU_STR
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _MENU_STR
call _fb_StrAssign@20
.Lt_03A9:
.Lt_03A8:
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0362
push -1
push offset _MENU_STR
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
push offset _MENU_STR
call _fb_StrAssign@20
push -1
push offset _MENU_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_02E9]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 9
push offset _Lt_0142
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
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
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 13
push offset _Lt_03AF
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
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
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push offset _SPRITEPATH_STR
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 8
push offset _Lt_03B3
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+24]
push ecx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
lea eax, [ebp-80]
push eax
movsx eax, word ptr [_VIEWX_SI]
add eax, 6
mov word ptr [ebp-56], ax
lea eax, [ebp-56]
push eax
mov word ptr [ebp-52], 10
lea eax, [ebp-52]
push eax
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
mov word ptr [_MENUITEM_SI], 1
mov ax, word ptr [_MENUSIZE_SI]
mov word ptr [ebp-84], ax
jmp .Lt_03B7
.Lt_03BA:
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
jle .Lt_03BC
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push 5
push 2
push offset _Lt_036F
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
push offset _Lt_036E
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
push -1
push 1
push offset _Lt_036D
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
push offset _Lt_0096
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_036C
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
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
lea eax, [ebp-168]
push eax
call _fb_StrDelete@4
.Lt_03BC:
.Lt_03BB:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_03C5
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_036C
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
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
.Lt_03C5:
.Lt_03C4:
.Lt_03B8:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_03B7:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-84]
cmp eax, ebx
jle .Lt_03BA
.Lt_03B9:
.Lt_03C8:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_00F5
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
jne .Lt_03CA
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_VIEWX_SI]
cmp ebx, eax
jne .Lt_03CC
movsx eax, word ptr [_YM_SI]
cmp eax, 13
setge al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_YM_SI]
movsx ecx, word ptr [_MENUSIZE_SI]
add ecx, 12
cmp ebx, ecx
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_03CE
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
.Lt_03CE:
.Lt_03CD:
.Lt_03CC:
.Lt_03CB:
.Lt_03CA:
.Lt_03C9:
push 5
push offset _Lt_0331
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_0362
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
push offset _Lt_00F5
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_03D0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_03D2
push 0
push 2
push offset _Lt_0226
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
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
movsx ecx, word ptr [_MENUCOST_SI]
push ecx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add eax, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add eax, esi
imul eax, 136
fstp qword ptr [_G_DFA+eax+48]
jmp .Lt_0393
.Lt_03D2:
.Lt_03D1:
jmp .Lt_0393
.Lt_03D0:
.Lt_03CF:
push 5
push offset _Lt_0331
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_03D4
movsx eax, word ptr [_TX_SI]
movsx esi, word ptr [_TY_SI]
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add eax, esi
imul eax, 136
movsx esi, word ptr [_MENUCOST_SI]
push esi
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_03D6
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_LEVELUP@0
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
jmp .Lt_0393
.Lt_03D6:
.Lt_03D5:
jmp .Lt_0393
.Lt_03D4:
.Lt_03D3:
push 5
push offset _Lt_0362
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_03D8
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_03D7
.Lt_03D8:
jmp .Lt_03C8
.Lt_03D7:
.Lt_0395:
.Lt_0394:
.Lt_0392:
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
sub esp, 200
push ebx
push esi
.Lt_03DE:
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
jle .Lt_03E1
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
push offset _Lt_03E2
push -1
push offset _MENU_STR
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
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
fdiv qword ptr [_Lt_02E9]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 12
push offset _Lt_03E5
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
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
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push 20
push offset _Lt_03E7
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
lea eax, [ebp-80]
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
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push 22
push offset _Lt_03E9
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign@20
lea eax, [ebp-92]
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
lea eax, [ebp-92]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push 22
push offset _Lt_03EB
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign@20
lea eax, [ebp-104]
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
lea eax, [ebp-104]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push 23
push offset _Lt_03ED
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign@20
lea eax, [ebp-116]
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
lea eax, [ebp-116]
push eax
call _fb_StrDelete@4
push offset _SPRITEPATH_STR
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push 8
push offset _Lt_03B3
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+24]
push ecx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign@20
lea eax, [ebp-148]
push eax
movsx eax, word ptr [ebp-32]
add eax, 6
mov word ptr [ebp-124], ax
lea eax, [ebp-124]
push eax
movsx eax, word ptr [ebp-28]
add eax, 5
mov word ptr [ebp-120], ax
lea eax, [ebp-120]
push eax
push dword ptr [_CLV_BUFFER_MERCHANT]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-148]
push eax
call _fb_StrDelete@4
mov word ptr [_MENUITEM_SI], 1
mov ax, word ptr [_MENUSIZE_SI]
mov word ptr [ebp-152], ax
jmp .Lt_03F4
.Lt_03F7:
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
jle .Lt_03F9
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push -1
movsx eax, word ptr [_MENUCOST_SI]
push eax
call _fb_IntToStr@4
push eax
push -1
push 3
push offset _Lt_03FA
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_036C
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
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign@20
lea eax, [ebp-200]
push eax
movsx eax, word ptr [ebp-28]
movsx ecx, word ptr [_MENUITEM_SI]
add eax, ecx
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
lea eax, [ebp-200]
push eax
call _fb_StrDelete@4
.Lt_03F9:
.Lt_03F8:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_0400
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_036C
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-176]
push eax
call _fb_StrAssign@20
lea eax, [ebp-176]
push eax
movsx eax, word ptr [ebp-28]
movsx ecx, word ptr [_MENUITEM_SI]
add eax, ecx
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
lea eax, [ebp-176]
push eax
call _fb_StrDelete@4
.Lt_0400:
.Lt_03FF:
.Lt_03F5:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_03F4:
movsx eax, word ptr [_MENUITEM_SI]
movsx ecx, word ptr [ebp-152]
cmp eax, ecx
jle .Lt_03F7
.Lt_03F6:
.Lt_0403:
.Lt_0404:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_00F5
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
jne .Lt_0408
movsx ecx, word ptr [_XM_SI]
movsx eax, word ptr [_VIEWX_SI]
cmp ecx, eax
jne .Lt_040A
movsx eax, word ptr [_YM_SI]
cmp eax, 13
setge al
shr eax, 1
sbb eax, eax
movsx ecx, word ptr [_YM_SI]
movsx esi, word ptr [_MENUSIZE_SI]
add esi, 12
cmp ecx, esi
setle cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_040C
movsx ecx, word ptr [_YM_SI]
add ecx, -12
mov word ptr [_MENUSELECT_SI], cx
push 0
push -1
push 4
movsx ecx, word ptr [_MENUSELECT_SI]
sal ecx, 3
add ecx, -7
push ecx
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
.Lt_040C:
.Lt_040B:
.Lt_040A:
.Lt_0409:
.Lt_0408:
.Lt_0407:
.Lt_0406:
push 5
push offset _Lt_03E2
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0404
.Lt_0405:
push 5
push offset _Lt_03E2
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_040E
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_040D
.Lt_040E:
call _LN_MERCHANT@0
.Lt_040D:
.Lt_03E1:
.Lt_03E0:
.Lt_03DF:
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
sub esp, 12
push ebx
.Lt_0411:
push 0
push -1
push offset _MENUSELECT_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrConcatAssign@20
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
movsx eax, word ptr [_MENUCOST_SI]
push eax
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+ebx+48]
fsubrp
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+48]
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_0414
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
imul ebx, 108
lea eax, [_E_STRA+ebx]
push eax
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 7
push offset _Lt_0415
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-12]
push eax
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
.Lt_0414:
.Lt_0413:
.Lt_0412:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_LEVELUP@0
_LN_LEVELUP@0:
push ebp
mov ebp, esp
sub esp, 144
push ebx
push esi
.Lt_0417:
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 5
push offset _Lt_00F5
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_041A
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
fld qword ptr [_G_DFA+ebx+80]
sub esp, 4
fistp dword ptr [esp]
pop ecx
movsx ebx, word ptr [_L_SIA+ecx*2]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_041C
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
fld qword ptr [_G_DFA+ebx+80]
sub esp, 4
fistp dword ptr [esp]
pop ecx
movsx ebx, word ptr [_L_SIA+ecx*2]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+48]
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fmul qword ptr [_Lt_027F]
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
fadd qword ptr [_Lt_0156]
fistp word ptr [_R1_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+88]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+8]
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fmul qword ptr [_Lt_027F]
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
fadd qword ptr [_Lt_0156]
fistp word ptr [_R2_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+96]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+16]
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fmul qword ptr [_Lt_027F]
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
fadd qword ptr [_Lt_0156]
fistp word ptr [_R3_SI]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+104]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+24]
mov word ptr [_R4_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+32]
mov word ptr [_R5_SI], 0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+112]
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_041E
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0446]
push dword ptr [_Lt_0447]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_0448]
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
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 16
push offset _Lt_041F
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 8
push offset _Lt_0421
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-24]
push ebx
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
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
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
push 64
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 9
push offset _Lt_0425
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
push 80
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
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
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
push 80
push 272
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
push 9
push offset _Lt_0429
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
push 96
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
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
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-120]
push eax
push 96
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 11
push offset _Lt_042D
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
push 112
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push 11
push offset _Lt_042F
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign@20
lea eax, [ebp-144]
push eax
push 120
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-144]
push eax
call _fb_StrDelete@4
.Lt_041E:
.Lt_041D:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0449]
fnstsw ax
sahf
jae .Lt_0432
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_0156]
fadd qword ptr [_G_DFA+eax+80]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fstp qword ptr [_G_DFA+eax+80]
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0434
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 12
push offset _Lt_0435
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
push 136
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
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
imul eax, 136
push dword ptr [_G_DFA+eax+84]
push dword ptr [_G_DFA+eax+80]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 3
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
push 136
push 288
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
movsx eax, word ptr [_L_SIA+ebx*2]
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fsub qword ptr [_G_DFA+eax+48]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b00000001
jnz .Lt_043A
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 6
push offset _Lt_043B
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
push 152
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 2
push offset _Lt_036F
push -1
push 5
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
movsx eax, word ptr [_L_SIA+ebx*2]
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fsub qword ptr [_G_DFA+eax+48]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0096
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
push 152
push 264
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
.Lt_043A:
.Lt_0439:
.Lt_0434:
.Lt_0433:
.Lt_0432:
.Lt_0431:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0441
call _LN_OKBUTTON@0
.Lt_0441:
.Lt_0440:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0153]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_00FB
push -1
push 4
push 1
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 108
lea ecx, [_E_STRA+ebx+24]
push ecx
mov ebx, eax
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0443
push 0
push 5
push offset _Lt_0105
push -1
push offset _GETIT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0105
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0445
push 0
push -1
push offset _GETIT_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrConcatAssign@20
call _LN_GAIN@0
.Lt_0445:
.Lt_0444:
.Lt_0443:
.Lt_0442:
.Lt_041C:
.Lt_041B:
.Lt_041A:
.Lt_0419:
.Lt_0418:
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
sub esp, 12
push ebx
.Lt_044C:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_044F
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
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 7
push offset _Lt_0415
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-12]
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
.Lt_044F:
.Lt_044E:
.Lt_044D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_GETIT@0
_LN_GETIT@0:
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
.Lt_0451:
push 1
push offset _Lt_0000
push -1
push offset _GETIT_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0454
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 0
push -1
push offset _GETIT_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrConcatAssign@20
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
je .Lt_0456
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0446]
push dword ptr [_Lt_0447]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_0448]
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
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 7
push offset _Lt_0415
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
push 40
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-12]
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
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 5
push offset _Lt_0458
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-24]
push ebx
push 56
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_045A
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 108
lea ecx, [_E_STRA+ebx]
push ecx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ecx, [ebp-36]
push ecx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
call _LN_OKBUTTON@0
.Lt_0456:
.Lt_0455:
.Lt_0454:
.Lt_0453:
.Lt_0452:
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
sub esp, 24
push ebx
push esi
.Lt_045F:
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
je .Lt_0462
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
imul ebx, 108
lea eax, [_E_STRA+ebx]
push eax
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 5
push offset _Lt_0463
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
push 40
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-12]
push eax
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
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 3
push offset _Lt_0465
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
push 56
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax]
push ecx
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
call _LN_OKBUTTON@0
.Lt_0462:
.Lt_0461:
.Lt_0460:
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
sub esp, 84
push ebx
push esi
.Lt_0469:
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
je .Lt_046C
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
imul ebx, 108
lea eax, [_E_STRA+ebx]
push eax
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 5
push offset _Lt_0463
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
push 40
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
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
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax]
push ecx
push 64
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
push offset _Lt_046E
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrAssign@20
lea ecx, [ebp-24]
push ecx
push 80
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ecx, [ebp-24]
push ecx
call _fb_StrDelete@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 5
push -1
movsx ecx, word ptr [_ATTACKDAMAGE]
push ecx
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
push 80
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 5
push offset _Lt_0472
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
push 88
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
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
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
push 88
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
call _LN_OKBUTTON@0
.Lt_046C:
.Lt_046B:
.Lt_046A:
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
sub esp, 180
push ebx
push esi
.Lt_0478:
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
je .Lt_047B
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
imul ebx, 108
lea eax, [_E_STRA+ebx]
push eax
push 32
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset _Lt_047C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
push 40
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax]
push ecx
push 48
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
push offset _Lt_047E
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrAssign@20
lea ecx, [ebp-24]
push ecx
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ecx, [ebp-24]
push ecx
call _fb_StrDelete@4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_036F
push -1
push 5
push -1
movsx ecx, word ptr [_EXPGAIN_SI]
push ecx
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
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
push 64
push 264
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 5
push offset _Lt_0483
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
push 72
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset _Lt_036F
push -1
push 5
push -1
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
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
push 72
push 264
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
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
push 5
push offset _Lt_0488
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-120]
push eax
push 88
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
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
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign@20
lea eax, [ebp-144]
push eax
push 88
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-144]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 5
push offset _Lt_048C
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign@20
lea eax, [ebp-156]
push eax
push 96
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-156]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 5
push -1
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
push dword ptr [_G_DFA+eax+20]
push dword ptr [_G_DFA+eax+16]
call _fb_DoubleToStr@8
push eax
push -1
push 1
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 5
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
lea eax, [ebp-180]
push eax
push 96
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
call _LN_OKBUTTON@0
.Lt_047B:
.Lt_047A:
.Lt_0479:
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
sub esp, 200
push ebx
.Lt_0492:
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
fadd qword ptr [_Lt_04F7]
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
jge .Lt_0495
mov word ptr [ebp-4], 0
.Lt_0495:
movsx eax, word ptr [ebp-4]
cmp eax, 20
jle .Lt_0497
mov word ptr [ebp-4], 20
.Lt_0497:
movsx eax, word ptr [ebp-8]
test eax, eax
jge .Lt_0499
mov word ptr [ebp-8], 0
.Lt_0499:
movsx eax, word ptr [ebp-8]
cmp eax, 21
jle .Lt_049B
mov word ptr [ebp-8], 21
.Lt_049B:
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
fadd qword ptr [_Lt_04F7]
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
jge .Lt_049D
mov word ptr [ebp-4], 0
.Lt_049D:
movsx eax, word ptr [ebp-4]
cmp eax, 20
jle .Lt_049F
mov word ptr [ebp-4], 20
.Lt_049F:
movsx eax, word ptr [ebp-8]
test eax, eax
jge .Lt_04A1
mov word ptr [ebp-8], 0
.Lt_04A1:
movsx eax, word ptr [ebp-8]
cmp eax, 21
jle .Lt_04A3
mov word ptr [ebp-8], 21
.Lt_04A3:
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
jge .Lt_04A5
mov word ptr [_DX1_SI], 1
.Lt_04A5:
.Lt_04A4:
movsx eax, word ptr [_DY1_SI]
cmp eax, 1
jge .Lt_04A7
mov word ptr [_DY1_SI], 1
.Lt_04A7:
.Lt_04A6:
movsx eax, word ptr [_DX2_SI]
movsx ebx, word ptr [_AA_SI]
cmp eax, ebx
jle .Lt_04A9
mov bx, word ptr [_AA_SI]
mov word ptr [_DX2_SI], bx
.Lt_04A9:
.Lt_04A8:
movsx ebx, word ptr [_DY2_SI]
movsx eax, word ptr [_DD_SI]
cmp ebx, eax
jle .Lt_04AB
mov ax, word ptr [_DD_SI]
mov word ptr [_DY2_SI], ax
.Lt_04AB:
.Lt_04AA:
mov ax, word ptr [_DX1_SI]
mov word ptr [_TTX], ax
mov ax, word ptr [_DX2_SI]
mov word ptr [ebp-72], ax
jmp .Lt_04AD
.Lt_04B0:
mov ax, word ptr [_DY1_SI]
mov word ptr [_TTY], ax
mov ax, word ptr [_DY2_SI]
mov word ptr [ebp-76], ax
jmp .Lt_04B2
.Lt_04B5:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 4
push offset _Lt_04B8
push -1
push 5
push offset _Lt_00F5
push -1
push 4
push 5
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TTY]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-120]
push eax
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TX_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-64]
add eax, ebx
add eax, 9
mov word ptr [ebp-84], ax
lea eax, [ebp-84]
push eax
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-60]
add eax, ebx
add eax, 9
mov word ptr [ebp-80], ax
lea eax, [ebp-80]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
push offset _SPRITEPATH_STR
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
push 0
push -1
push 4
push offset _Lt_04B8
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
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
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
lea eax, [ebp-164]
push eax
call _fb_StrAssign@20
lea eax, [ebp-164]
push eax
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TX_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-64]
add eax, ebx
add eax, 9
mov word ptr [ebp-128], ax
lea eax, [ebp-128]
push eax
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-60]
add eax, ebx
add eax, 9
mov word ptr [ebp-124], ax
lea eax, [ebp-124]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-164]
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
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
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
fistp word ptr [ebp-168]
jmp .Lt_04C2
.Lt_04C5:
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
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_0134
push -1
lea eax, [ebp-180]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04C8
.Lt_04C9:
mov word ptr [ebp-68], 1
jmp .Lt_04C6
.Lt_04C8:
push 5
push offset _Lt_0137
push -1
lea eax, [ebp-180]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04CA
.Lt_04CB:
mov word ptr [ebp-68], 1
jmp .Lt_04C6
.Lt_04CA:
push 5
push offset _Lt_013A
push -1
lea eax, [ebp-180]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04CC
.Lt_04CD:
mov word ptr [ebp-68], 1
.Lt_04CC:
.Lt_04C6:
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [ebp-68]
test eax, eax
jle .Lt_04CF
push offset _SPRITEPATH_STR
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push 8
push offset _Lt_03B3
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
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-200]
push eax
call _fb_StrAssign@20
lea eax, [ebp-200]
push eax
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [_TX_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-64]
add eax, ebx
add eax, 9
mov word ptr [ebp-176], ax
lea eax, [ebp-176]
push eax
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-60]
add eax, ebx
add eax, 9
mov word ptr [ebp-172], ax
lea eax, [ebp-172]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-200]
push eax
call _fb_StrDelete@4
.Lt_04CF:
.Lt_04CE:
.Lt_04C3:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_04C2:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-168]
cmp eax, ebx
jle .Lt_04C5
.Lt_04C4:
push 5
push offset _Lt_01DD
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_04D5
push offset _SPRITEPATH_STR
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 12
push offset _Lt_04D8
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
mov word ptr [ebp-172], ax
lea eax, [ebp-172]
push eax
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-60]
add eax, ebx
add eax, 9
mov word ptr [ebp-168], ax
lea eax, [ebp-168]
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-184]
push eax
call _fb_StrDelete@4
.Lt_04D5:
.Lt_04D4:
.Lt_04B3:
movsx eax, word ptr [_TTY]
inc eax
mov word ptr [_TTY], ax
.Lt_04B2:
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [ebp-76]
cmp eax, ebx
jle .Lt_04B5
.Lt_04B4:
.Lt_04AE:
movsx ebx, word ptr [_TTX]
inc ebx
mov word ptr [_TTX], bx
.Lt_04AD:
movsx ebx, word ptr [_TTX]
movsx eax, word ptr [ebp-72]
cmp ebx, eax
jle .Lt_04B0
.Lt_04AF:
mov ax, word ptr [_DX1_SI]
mov word ptr [_TTX], ax
mov ax, word ptr [_DX2_SI]
mov word ptr [ebp-72], ax
jmp .Lt_04DB
.Lt_04DE:
mov ax, word ptr [_DY1_SI]
mov word ptr [_TTY], ax
mov ax, word ptr [_DY2_SI]
mov word ptr [ebp-76], ax
jmp .Lt_04E0
.Lt_04E3:
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
push offset _Lt_039E
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_04E4
push -1
push offset _TEMPACTION_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_04E6
movsx eax, word ptr [_TEMPDIS_SI]
test eax, eax
jle .Lt_04E8
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
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_TEMPDIS_SI]
imul ecx, ebx
add eax, ecx
imul eax, 3
movsx ecx, word ptr [ebp-60]
add eax, ecx
add eax, 9
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TEMPY2_SF]
movsx eax, word ptr [_TTX]
movsx ecx, word ptr [_TX_SI]
sub eax, ecx
movsx ecx, word ptr [_TEMPD_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_TEMPDIS_SI]
imul ebx, ecx
add eax, ebx
imul eax, 3
movsx ebx, word ptr [ebp-64]
add eax, ebx
add eax, 9
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TEMPX2_SF]
push 0
push 4278190080
push 4290806528
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPY2_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPX2_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPY1_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPX1_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_LINE@36
mov word ptr [_T_SF], 0
mov ax, word ptr [_TEMPDIS_SI]
mov word ptr [ebp-80], ax
movsx eax, word ptr [_TEMPDIS_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_02E9]
fistp word ptr [ebp-84]
movsx eax, word ptr [ebp-84]
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-88], eax
jmp .Lt_04EC
.Lt_04EF:
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [_TY_SI]
sub eax, ebx
movsx ebx, word ptr [_TEMPD_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_T_SF]
imul ecx, ebx
add eax, ecx
imul eax, 3
add eax, 11
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TEMPY_SF]
movsx eax, word ptr [_TTX]
movsx ecx, word ptr [_TX_SI]
sub eax, ecx
movsx ecx, word ptr [_TEMPD_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_T_SF]
imul ebx, ecx
add eax, ebx
imul eax, 3
add eax, 11
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TEMPX_SF]
fild word ptr [_T_SF]
fstp dword ptr [_TT_SF]
movsx eax, word ptr [_TEMPDIS_SI]
cmp eax, 1
jg .Lt_04F1
fild word ptr [_T_SF]
fstp dword ptr [_TT_SF]
jmp .Lt_04F0
.Lt_04F1:
movsx eax, word ptr [_T_SF]
movsx ebx, word ptr [_TEMPDIS_SI]
dec ebx
cmp eax, ebx
jge .Lt_04F3
push dword ptr [_Lt_04F9]
pop dword ptr [_TT_SF]
jmp .Lt_04F2
.Lt_04F3:
movsx ebx, word ptr [_T_SF]
movsx eax, word ptr [_TEMPDIS_SI]
sub ebx, eax
inc ebx
push ebx
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TT_SF]
.Lt_04F2:
.Lt_04F0:
fld dword ptr [_TT_SF]
fcomp dword ptr [_Lt_0163]
fnstsw ax
test ah, 0b00000001
jnz .Lt_04F5
push 4278190080
push 4290822336
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPY_SF]
fsub dword ptr [_TT_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_TT_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_TT_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_04F8]
fmul dword ptr [_TEMPX_SF]
fsub dword ptr [_TT_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
.Lt_04F5:
.Lt_04F4:
.Lt_04ED:
movsx ebx, word ptr [_T_SF]
movsx eax, word ptr [ebp-84]
add ebx, eax
mov word ptr [_T_SF], bx
.Lt_04EC:
cmp dword ptr [ebp-88], 0
jne .Lt_04F6
movsx ebx, word ptr [_T_SF]
movsx eax, word ptr [ebp-80]
cmp ebx, eax
jge .Lt_04EF
jmp .Lt_04EE
.Lt_04F6:
movsx eax, word ptr [_T_SF]
movsx ebx, word ptr [ebp-80]
cmp eax, ebx
jle .Lt_04EF
.Lt_04EE:
.Lt_04E8:
.Lt_04E7:
.Lt_04E6:
.Lt_04E5:
.Lt_04E1:
movsx ebx, word ptr [_TTY]
inc ebx
mov word ptr [_TTY], bx
.Lt_04E0:
movsx ebx, word ptr [_TTY]
movsx eax, word ptr [ebp-76]
cmp ebx, eax
jle .Lt_04E3
.Lt_04E2:
.Lt_04DC:
movsx eax, word ptr [_TTX]
inc eax
mov word ptr [_TTX], ax
.Lt_04DB:
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [ebp-72]
cmp eax, ebx
jle .Lt_04DE
.Lt_04DD:
.Lt_0493:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_TITLE@8
_LN_TITLE@8:
push ebp
mov ebp, esp
sub esp, 12
.Lt_04FD:
push 1
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
mov word ptr [_COLR_SI], 9
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 37
push offset _Lt_04FF
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
.Lt_04FE:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LN_STATUS@0
_LN_STATUS@0:
.Lt_0501:
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 24
push 4
call _FRAME_STATUS@8
push 24
push 14
call _FRAME_INVENTORY@8
.Lt_0502:
ret
.balign 16

.globl _LN_FRAMSTTS@0
_LN_FRAMSTTS@0:
.Lt_0503:
fild word ptr [_STATX_SI]
fstp dword ptr [_FRAMEX1_SF]
movsx eax, word ptr [_STATX_SI]
add eax, 14
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_FRAMEX2_SF]
push dword ptr [_Lt_016B]
pop dword ptr [_FRAMEY1_SF]
push dword ptr [_Lt_016D]
pop dword ptr [_FRAMEY2_SF]
mov word ptr [_FRAMEC1_SI], 4
mov word ptr [_FRAMEC2_SI], 12
call _LN_FRAMEPUT@0
.Lt_0504:
ret
.balign 16

.globl _LN_FRAMSTTSITMS@0
_LN_FRAMSTTSITMS@0:
.Lt_0505:
fild word ptr [_STATX_SI]
fstp dword ptr [_FRAMEX1_SF]
movsx eax, word ptr [_STATX_SI]
add eax, 14
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_FRAMEX2_SF]
push dword ptr [_Lt_0507]
pop dword ptr [_FRAMEY1_SF]
push dword ptr [_Lt_0508]
pop dword ptr [_FRAMEY2_SF]
mov word ptr [_FRAMEC1_SI], 4
mov word ptr [_FRAMEC2_SI], 12
call _LN_FRAMEPUT@0
.Lt_0506:
ret
.balign 16

.globl _LN_STTS@16
_LN_STTS@16:
push ebp
mov ebp, esp
sub esp, 216
push ebx
.Lt_0509:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 3
push offset _Lt_050B
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
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
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 2
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fld qword ptr [_Lt_0523]
fadd qword ptr [_G_DFA+ebx+80]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_036F
push -1
push 5
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push 6
push offset _Lt_050E
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
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
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 2
push offset _Lt_036C
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
inc eax
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
push 3
push offset _Lt_0513
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
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
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
fadd qword ptr [_Lt_0524]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
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
add eax, 3
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
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push 2
push offset _Lt_0516
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign@20
lea eax, [ebp-108]
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
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
fadd qword ptr [_Lt_0524]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-120]
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
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 4
push offset _Lt_0519
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
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
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
fadd qword ptr [_Lt_0524]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign@20
lea eax, [ebp-144]
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
lea eax, [ebp-144]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 2
push offset _Lt_0516
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign@20
lea eax, [ebp-156]
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
lea eax, [ebp-156]
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
fadd qword ptr [_Lt_0524]
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
add eax, 10
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
push 4
push offset _Lt_051E
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
lea eax, [ebp-180]
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
lea eax, [ebp-180]
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
fadd qword ptr [_Lt_0524]
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
lea eax, [ebp-192]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 2
push offset _Lt_0516
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign@20
lea eax, [ebp-204]
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
lea eax, [ebp-204]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
fadd qword ptr [_Lt_0524]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign@20
lea eax, [ebp-216]
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
lea eax, [ebp-216]
push eax
call _fb_StrDelete@4
.Lt_050A:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _LN_STTSGPIC@0
_LN_STTSGPIC@0:
.Lt_0525:
.Lt_0526:
ret
.balign 16

.globl _LN_STTSITMS@0
_LN_STTSITMS@0:
.Lt_0527:
.Lt_0528:
ret
.balign 16

.globl _LN_MOVE@0
_LN_MOVE@0:
push ebx
.Lt_0529:
push 4
push offset _Lt_033F
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_033F
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 9
push offset _Lt_052B
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
imul ebx, 136
fld qword ptr [_G_DFA+ebx+16]
fcomp qword ptr [_Lt_0156]
push eax
fnstsw ax
sahf
pop eax
setae bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_ARE_SI]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_052D
mov word ptr [_MOVE_SI], 1
push 0
push 5
push offset _Lt_052E
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx eax, word ptr [_HERE_SI]
test eax, eax
jle .Lt_0530
mov word ptr [_MOVE_SI], 0
.Lt_0530:
push 0
push 5
push offset _Lt_052E
push -1
push offset _THERE_STR
call _fb_StrAssign@20
call _LN_THERE@0
movsx eax, word ptr [_THERE_SI]
test eax, eax
jle .Lt_0532
mov word ptr [_MOVE_SI], 0
.Lt_0532:
push 0
push 5
push offset _Lt_0533
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
push 0
push 13
push offset _Lt_0534
push -1
push offset _THERE_STR
call _fb_StrAssign@20
call _LN_THERE@0
movsx eax, word ptr [_HERE_SI]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_THERE_SI]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0536
mov word ptr [_MOVE_SI], 0
.Lt_0536:
movsx ebx, word ptr [_MOVE_SI]
cmp ebx, 1
jne .Lt_0538
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
je .Lt_053A
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_053C
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
mov word ptr [_EX_SI], ax
movsx eax, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add eax, ebx
mov word ptr [_DY_SI], ax
.Lt_053C:
.Lt_053B:
.Lt_053A:
.Lt_0539:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_04F7]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fstp qword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_0538:
.Lt_0537:
.Lt_052D:
.Lt_052C:
.Lt_052A:
pop ebx
ret
.balign 16

.globl _LN_WINGMOVE@0
_LN_WINGMOVE@0:
push ebx
.Lt_0543:
push 4
push offset _Lt_033F
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_033F
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 9
push offset _Lt_052B
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
imul ebx, 136
fld qword ptr [_G_DFA+ebx+16]
fcomp qword ptr [_Lt_027C]
push eax
fnstsw ax
sahf
pop eax
setae bl
shr ebx, 1
sbb ebx, ebx
movsx eax, word ptr [_ARE_SI]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0546
mov word ptr [_MOVE_SI], 1
movsx eax, word ptr [_MOVE_SI]
cmp eax, 1
jne .Lt_0548
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
je .Lt_054A
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_054C
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_EX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
mov word ptr [_DY_SI], bx
.Lt_054C:
.Lt_054B:
.Lt_054A:
.Lt_0549:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fld qword ptr [_Lt_0282]
fadd qword ptr [_G_DFA+ebx+16]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+16]
call _LN_SWAPDATA@0
.Lt_0548:
.Lt_0547:
.Lt_0546:
.Lt_0545:
.Lt_0544:
pop ebx
ret
.balign 16

.globl _LN_FIREMOVE@0
_LN_FIREMOVE@0:
push ebx
.Lt_0551:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0554
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
je .Lt_0558
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_055A
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_EX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
mov word ptr [_DY_SI], bx
.Lt_055A:
.Lt_0559:
.Lt_0558:
.Lt_0557:
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_033F
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
imul ebx, 136
fld qword ptr [_Lt_04F7]
fadd qword ptr [_G_DFA+ebx+16]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+16]
call _LN_SWAPDATA@0
.Lt_0556:
.Lt_0555:
jmp .Lt_0553
.Lt_0554:
call _LN_GONE@0
.Lt_0553:
.Lt_0552:
pop ebx
ret
.balign 16

.globl _LN_WEBMOVE@0
_LN_WEBMOVE@0:
push ebx
.Lt_055D:
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
je .Lt_0560
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_0562
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
mov word ptr [_EX_SI], bx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
mov word ptr [_DY_SI], bx
.Lt_0562:
.Lt_0561:
.Lt_0560:
.Lt_055F:
push 4
push offset _Lt_033F
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_033F
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
imul ebx, 136
fld qword ptr [_Lt_04F7]
fadd qword ptr [_G_DFA+ebx+16]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+16]
call _LN_SWAPDATA@0
.Lt_055E:
pop ebx
ret
.balign 16

.globl _LN_CASTFIRE@0
_LN_CASTFIRE@0:
push ebx
.Lt_0565:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02FF]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0568
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_01F3
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
imul ebx, 136
fld qword ptr [_Lt_056B]
fadd qword ptr [_G_DFA+ebx+24]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+24]
call _LN_PRFLBLNK@0
push 0
push 6
push offset _Lt_0569
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_056A
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
push offset _Lt_01F3
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
push offset _Lt_033F
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
push dword ptr [_Lt_056C]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0157]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0175]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_056C]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_015E]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0175]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0568:
.Lt_0567:
.Lt_0566:
pop ebx
ret
.balign 16

.globl _LN_CASTDUST@0
_LN_CASTDUST@0:
push ebx
.Lt_056D:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02E9]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0570
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_00E1
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
imul ebx, 136
fld qword ptr [_Lt_0314]
fadd qword ptr [_G_DFA+ebx+24]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+24]
call _LN_PRFLBLNK@0
push 0
push 12
push offset _Lt_0571
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_033F
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
push offset _Lt_00E1
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
push offset _Lt_033F
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
push dword ptr [_Lt_056C]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0157]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0175]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_056C]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_015E]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0175]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0570:
.Lt_056F:
.Lt_056E:
pop ebx
ret
.balign 16

.globl _LN_CASTWEB@0
_LN_CASTWEB@0:
push ebx
.Lt_0572:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0576]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0575
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_0577]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fstp qword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 4
push offset _Lt_010C
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00FB
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
push offset _Lt_010A
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
push offset _Lt_033F
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
push dword ptr [_Lt_015B]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_015D]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_015E]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_015D]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_015E]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_015A]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_015C]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0575:
.Lt_0574:
.Lt_0573:
pop ebx
ret
.balign 16

.globl _LN_CASTSPDR@0
_LN_CASTSPDR@0:
push ebx
.Lt_0578:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_057C]
fnstsw ax
test ah, 0b00000001
jnz .Lt_057B
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_057D]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fstp qword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_00FD
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_00FE
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
push offset _Lt_00FB
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
push offset _Lt_033F
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
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0157]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0158]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0157]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0158]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_015A]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_015B]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_057B:
.Lt_057A:
.Lt_0579:
pop ebx
ret
.balign 16

.globl _LN_CASTCCTS@0
_LN_CASTCCTS@0:
.Lt_057E:
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_0580
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_01F8
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0581]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0157]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0158]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_015B]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0157]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0158]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_015A]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_015B]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_057F:
ret
.balign 16

.globl _LN_CASTDTBY@0
_LN_CASTDTBY@0:
push ebx
.Lt_0582:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0587]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0585
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_0588]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fstp qword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_011D
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_0586
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
push offset _Lt_011B
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
push offset _Lt_033F
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
push dword ptr [_Lt_0589]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0164]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0158]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0167]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_015C]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0164]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0158]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0168]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0155]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0585:
.Lt_0584:
.Lt_0583:
pop ebx
ret
.balign 16

.globl _LN_GONE@0
_LN_GONE@0:
.Lt_058A:
call _LN_PRFLBLNK@0
call _LN_PRFLSET@0
.Lt_058B:
ret
.balign 16

.globl _LN_DELETE2@0
_LN_DELETE2@0:
.Lt_058C:
call _LN_PRFLBLNK@0
call _LN_PRFLMAKE@0
.Lt_058D:
ret
.balign 16

.globl _LN_AUTOLEVELUP@0
_LN_AUTOLEVELUP@0:
.Lt_058E:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jne .Lt_0591
call _LN_LEVELUP@0
.Lt_0591:
.Lt_0590:
.Lt_058F:
ret
.balign 16

.globl _LN_STATGAIN@0
_LN_STATGAIN@0:
push ebx
push esi
.Lt_0592:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
fld qword ptr [_G_DFA+ebx+32]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fstp qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
fld qword ptr [_G_DFA+ebx+112]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fstp qword ptr [_G_DFA+eax+24]
.Lt_0593:
pop esi
pop ebx
ret
.balign 16

.globl _LN_STATMAX@0
_LN_STATMAX@0:
push ebx
push esi
.Lt_0594:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
fld qword ptr [_G_DFA+eax+8]
fcomp qword ptr [_G_DFA+ebx+88]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0597
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
push dword ptr [_G_DFA+ebx+88]
push dword ptr [_G_DFA+ebx+92]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
.Lt_0597:
.Lt_0596:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
fld qword ptr [_G_DFA+ebx+16]
fcomp qword ptr [_G_DFA+eax+96]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_0599
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
push dword ptr [_G_DFA+eax+96]
push dword ptr [_G_DFA+eax+100]
pop dword ptr [_G_DFA+ebx+20]
pop dword ptr [_G_DFA+ebx+16]
.Lt_0599:
.Lt_0598:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
movsx ebx, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_G_DFA+ebx+104]
fnstsw ax
test ah, 0b01000001
jnz .Lt_059B
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
push dword ptr [_G_DFA+ebx+104]
push dword ptr [_G_DFA+ebx+108]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
.Lt_059B:
.Lt_059A:
.Lt_0595:
pop esi
pop ebx
ret
.balign 16

.globl _LN_NEXTACTION@0
_LN_NEXTACTION@0:
.Lt_059C:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jne .Lt_059F
call _LN_NEWACTION@0
call _LN_PUTACTION@0
.Lt_05A1:
.Lt_05A0:
jmp .Lt_059E
.Lt_059F:
call _LN_GETACTION@0
.Lt_059E:
.Lt_059D:
ret
.balign 16

.globl _LN_NEWACTION@0
_LN_NEWACTION@0:
push ebx
.Lt_05A2:
call _LN_GETACTION@0
push 5
push offset _Lt_01DD
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
je .Lt_05A5
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fmul qword ptr [_Lt_027D]
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
fadd qword ptr [_Lt_0156]
fistp word ptr [_D_SI]
call _LN_RANDOMACTION@0
mov word ptr [_DIS_SI], 0
.Lt_05A5:
.Lt_05A4:
.Lt_05A3:
pop ebx
ret
.balign 16

.globl _LN_RANDOMACTION@0
_LN_RANDOMACTION@0:
push ebx
.Lt_05A8:
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [_R_SI]
push dword ptr [_Lt_0155]
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
jne .Lt_05AB
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
jmp .Lt_05AA
.Lt_05AB:
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
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
.Lt_05AA:
.Lt_05A9:
pop ebx
ret
.balign 16

.globl _LN_GETACTION@0
_LN_GETACTION@0:
push ebx
.Lt_05AC:
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_DIS_SI], ax
.Lt_05AD:
pop ebx
ret
.balign 16

.globl _LN_PUTACTION@0
_LN_PUTACTION@0:
push ebx
.Lt_05AE:
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
imul ebx, 108
lea eax, [_E_STRA+ebx+36]
push eax
call _fb_StrAssignMid@16
movsx eax, word ptr [_DIS_SI]
push eax
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
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
.Lt_05AF:
pop ebx
ret
.balign 16

.globl _LN_TEMPGET@0
_LN_TEMPGET@0:
push ebx
.Lt_05B0:
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_TEMPDIS_SI], ax
.Lt_05B1:
pop ebx
ret
.balign 16

.globl _LN_TEMPPUT@0
_LN_TEMPPUT@0:
push ebx
.Lt_05B2:
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
imul ebx, 108
lea eax, [_E_STRA+ebx+36]
push eax
call _fb_StrAssignMid@16
movsx eax, word ptr [_TEMPDIS_SI]
push eax
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
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
.Lt_05B3:
pop ebx
ret
.balign 16

.globl _LN_INBOUNDS@0
_LN_INBOUNDS@0:
push ebx
push esi
.Lt_05B4:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
movsx ecx, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
movsx esi, word ptr [_AA_SI]
cmp ecx, esi
setle cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ebx, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul ebx, esi
add ecx, ebx
cmp ecx, 1
setge cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
movsx esi, word ptr [_DD_SI]
cmp ecx, esi
setle cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_05B7
mov word ptr [_INBOUNDS_SI], 1
jmp .Lt_05B6
.Lt_05B7:
mov word ptr [_INBOUNDS_SI], 0
.Lt_05B6:
.Lt_05B5:
pop esi
pop ebx
ret
.balign 16

.globl _LN_HAVEIT@0
_LN_HAVEIT@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_05BC:
mov word ptr [_HAVEIT_SI], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
fdiv qword ptr [_Lt_027D]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-4], ax
jmp .Lt_05BF
.Lt_05C2:
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
jne .Lt_05C4
movsx eax, word ptr [_HAVEIT_SI]
inc eax
mov word ptr [_HAVEIT_SI], ax
.Lt_05C4:
.Lt_05C3:
.Lt_05C0:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_05BF:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_05C2
.Lt_05C1:
.Lt_05BD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HASIT@0
_LN_HASIT@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
.Lt_05C5:
mov word ptr [_HASIT_SI], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+12]
push ecx
push -1
push offset _T_STR
call _fb_StrAssign@20
push -1
push offset _T_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-4], ax
jmp .Lt_05C8
.Lt_05CB:
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
jne .Lt_05CD
movsx eax, word ptr [_HASIT_SI]
inc eax
mov word ptr [_HASIT_SI], ax
.Lt_05CD:
.Lt_05CC:
.Lt_05C9:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_05C8:
movsx eax, word ptr [_TT_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_05CB
.Lt_05CA:
.Lt_05C6:
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
sub esp, 16
push ebx
.Lt_05CE:
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
fdiv qword ptr [_Lt_027D]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-4], ax
jmp .Lt_05D1
.Lt_05D4:
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
jne .Lt_05D6
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
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _T_STR
call _fb_StrAssign@20
mov ax, word ptr [_T_SI]
mov word ptr [_TT_SI], ax
.Lt_05D6:
.Lt_05D5:
.Lt_05D2:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_05D1:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_05D4
.Lt_05D3:
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
imul ebx, 108
lea eax, [_E_STRA+ebx+12]
push eax
call _fb_StrAssign@20
.Lt_05CF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HASHADIT@0
_LN_HASHADIT@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
.Lt_05D8:
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+12]
push ecx
push -1
push offset _T_STR
call _fb_StrAssign@20
push -1
push offset _T_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-4], ax
jmp .Lt_05DB
.Lt_05DE:
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
jne .Lt_05E0
push 0
push -1
push -1
movsx eax, word ptr [_T_SI]
sal eax, 2
movsx ecx, word ptr [_TT_SI]
sal ecx, 2
sub eax, ecx
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
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _T_STR
call _fb_StrAssign@20
mov ax, word ptr [_T_SI]
mov word ptr [_TT_SI], ax
.Lt_05E0:
.Lt_05DF:
.Lt_05DC:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_05DB:
movsx eax, word ptr [_TT_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_05DE
.Lt_05DD:
push 0
push -1
push offset _T_STR
push -1
movsx ecx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add ecx, esi
imul ecx, 108
lea esi, [_E_STRA+ecx+12]
push esi
call _fb_StrAssign@20
.Lt_05D9:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HAVEGOTIT@0
_LN_HAVEGOTIT@0:
push ebx
.Lt_05E2:
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul ebx, 108
lea eax, [_E_STRA+ebx+12]
push eax
call _fb_StrAssign@20
push 0
push -1
push offset _HAVEGOTIT_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrConcatAssign@20
.Lt_05E3:
pop ebx
ret
.balign 16

.globl _LN_HASGOTIT@0
_LN_HASGOTIT@0:
push ebx
push esi
.Lt_05E4:
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+12]
push ecx
push -1
push offset _T_STR
call _fb_StrAssign@20
push 0
push -1
push offset _T_STR
push -1
movsx ecx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add ecx, esi
imul ecx, 108
lea esi, [_E_STRA+ecx+12]
push esi
call _fb_StrAssign@20
push 0
push -1
push offset _HASGOTIT_STR
push -1
movsx esi, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add esi, ebx
imul esi, 108
lea ebx, [_E_STRA+esi+12]
push ebx
call _fb_StrConcatAssign@20
.Lt_05E5:
pop esi
pop ebx
ret
.balign 16

.globl _LN_WINEXP@0
_LN_WINEXP@0:
push ebx
push esi
.Lt_05E6:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
fld qword ptr [_G_DFA+eax+48]
fistp word ptr [_GETIT_SI]
movsx eax, word ptr [_GETIT_SI]
test eax, eax
jle .Lt_05E9
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
push offset _Lt_05EA
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
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
movsx ecx, word ptr [_GETIT_SI]
push ecx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_TY_SI]
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 136
fstp qword ptr [_G_DFA+eax+8]
call _LN_GETIT@0
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add eax, esi
movsx esi, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add eax, esi
imul eax, 136
push dword ptr [_Lt_0208]
push dword ptr [_Lt_0208+4]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
.Lt_05E9:
.Lt_05E8:
.Lt_05E7:
pop esi
pop ebx
ret
.balign 16

.globl _LN_WINDGGR@0
_LN_WINDGGR@0:
.Lt_05EB:
push 0
push 5
push offset _Lt_0114
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05EC:
ret
.balign 16

.globl _LN_WINPIKE@0
_LN_WINPIKE@0:
.Lt_05ED:
push 0
push 5
push offset _Lt_012C
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05EE:
ret
.balign 16

.globl _LN_WINGRPL@0
_LN_WINGRPL@0:
.Lt_05EF:
push 0
push 5
push offset _Lt_039E
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05F0:
ret
.balign 16

.globl _LN_WINSEED@0
_LN_WINSEED@0:
.Lt_05F1:
push 0
push 5
push offset _Lt_03A3
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05F2:
ret
.balign 16

.globl _LN_WINKEY1@0
_LN_WINKEY1@0:
.Lt_05F3:
push 0
push 5
push offset _Lt_014D
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05F4:
ret
.balign 16

.globl _LN_WINKEY2@0
_LN_WINKEY2@0:
.Lt_05F5:
push 0
push 5
push offset _Lt_014E
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05F6:
ret
.balign 16

.globl _LN_WINIT@0
_LN_WINIT@0:
.Lt_05F7:
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
jne .Lt_05FA
jmp .Lt_05F8
.Lt_05FA:
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jle .Lt_05FC
jmp .Lt_05F8
.Lt_05FC:
call _LN_GETIT@0
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
.Lt_05F8:
ret
.balign 16

.globl _LN_AM@0
_LN_AM@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_05FD:
mov word ptr [_AM_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _AM_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [ebp-4]
jmp .Lt_0600
.Lt_0603:
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
jne .Lt_0605
movsx eax, word ptr [_AM_SI]
inc eax
mov word ptr [_AM_SI], ax
.Lt_0605:
.Lt_0604:
.Lt_0601:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0600:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_0603
.Lt_0602:
.Lt_05FE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ARE@0
_LN_ARE@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
.Lt_0606:
mov word ptr [_ARE_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _ARE_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [ebp-4]
jmp .Lt_0609
.Lt_060C:
push -1
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+24]
push ecx
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
jne .Lt_060E
movsx eax, word ptr [_ARE_SI]
inc eax
mov word ptr [_ARE_SI], ax
.Lt_060E:
.Lt_060D:
.Lt_060A:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0609:
movsx eax, word ptr [_T_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_060C
.Lt_060B:
.Lt_0607:
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
sub esp, 4
push ebx
.Lt_060F:
mov word ptr [_HERE_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _HERE_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [ebp-4]
jmp .Lt_0612
.Lt_0615:
push -1
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
jne .Lt_0617
movsx eax, word ptr [_HERE_SI]
inc eax
mov word ptr [_HERE_SI], ax
.Lt_0617:
.Lt_0616:
.Lt_0613:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0612:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_0615
.Lt_0614:
.Lt_0610:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_THERE@0
_LN_THERE@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
.Lt_0618:
mov word ptr [_THERE_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _THERE_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [ebp-4]
jmp .Lt_061B
.Lt_061E:
push -1
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+24]
push ecx
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
jne .Lt_0620
movsx eax, word ptr [_THERE_SI]
inc eax
mov word ptr [_THERE_SI], ax
.Lt_0620:
.Lt_061F:
.Lt_061C:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_061B:
movsx eax, word ptr [_T_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_061E
.Lt_061D:
.Lt_0619:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_BLANKCHECK@0
_LN_BLANKCHECK@0:
.Lt_0621:
push 0
push -1
push offset _BLANKCHECK_STR
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_INBOUNDS@0
movsx eax, word ptr [_INBOUNDS_SI]
cmp eax, 1
jne .Lt_0624
call _LN_ARE@0
jmp .Lt_0623
.Lt_0624:
mov word ptr [_ARE_SI], -1
.Lt_0623:
mov ax, word ptr [_ARE_SI]
mov word ptr [_BLANKCHECK_SI], ax
.Lt_0622:
ret
.balign 16

.globl _LN_OKBUTTON@0
_LN_OKBUTTON@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0625:
push dword ptr [_CLV_BUFFER_MENU]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 4
push offset _Lt_0627
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
.Lt_0626:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WWAIT@0
_LN_WWAIT@0:
push ebx
.Lt_0629:
.Lt_062B:
call _LN_BUTTONWAIT@0
.Lt_062D:
push 5
push offset _Lt_062E
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
jne .Lt_062B
.Lt_062C:
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_062A:
pop ebx
ret
.balign 16

.globl _LN_BUTTONWAIT@0
_LN_BUTTONWAIT@0:
.Lt_0633:
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0634:
ret
.balign 16

.globl _LN_COMMANDWAIT@0
_LN_COMMANDWAIT@0:
push ebx
.Lt_0635:
push 0
push 3
push offset _Lt_0637
push -1
push offset _C_STR
call _fb_StrAssign@20
mov word ptr [_LB_SI], 0
.Lt_0638:
push 3
push offset _Lt_0637
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
je .Lt_0639
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_0638
.Lt_0639:
.Lt_0636:
pop ebx
ret
.balign 16

.globl _LN_FRAMEPUT@0
_LN_FRAMEPUT@0:
.Lt_063C:
push 0
push 4
push 4278190080
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_063E]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_063E]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 2
push 4278190080
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_04F9]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_04F9]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_0163]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_063F]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0640]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4286808963
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_015C]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_0163]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_0163]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0640]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_063F]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4286808963
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0163]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_015C]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_0163]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0641]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0641]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4290822336
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0155]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_0155]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_0163]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4286808963
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0641]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0641]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0155]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_0155]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0642]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0641]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0643]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04F8]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_0155]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
.Lt_063D:
ret
.balign 16

.globl _LN_AVGFRAME@0
_LN_AVGFRAME@0:
push ebp
mov ebp, esp
sub esp, 32
.Lt_0644:
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
.Lt_0645:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_SCREENSET@0
_LN_SCREENSET@0:
.Lt_0646:
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0647:
ret
.balign 16

.globl _LN_FINDCRSR@0
_LN_FINDCRSR@0:
.Lt_0648:
call _fb_GetY@0
mov word ptr [_CRSRY_SI], ax
push 0
call _fb_Pos@4
mov word ptr [_CRSRX_SI], ax
.Lt_0649:
ret
.balign 16

.globl _LN_SHOWTEXT@8
_LN_SHOWTEXT@8:
push ebp
mov ebp, esp
.Lt_064A:
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
.Lt_064B:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LN_PRFLBLNK@0
_LN_PRFLBLNK@0:
.Lt_064C:
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
push offset _Lt_00F5
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
push offset _Lt_00F5
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
push offset _Lt_00F6
push -1
push offset _PRFLGPICACTN_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLEXP_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLEVAD_SF]
push dword ptr [_Lt_0163]
pop dword ptr [_PRFLBLNK_SF]
.Lt_064D:
ret
.balign 16

.globl _LN_PRFLSET@0
_LN_PRFLSET@0:
push ebx
.Lt_064E:
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
imul ebx, 108
lea eax, [_E_STRA+ebx+12]
push eax
call _fb_StrAssign@20
push offset _PRFLGPIC_STR
push 4
push 1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul ebx, 108
lea eax, [_E_STRA+ebx+36]
push eax
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLGPICACTN_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
imul ebx, 108
lea eax, [_E_STRA+ebx+60]
push eax
call _fb_StrAssign@20
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLIDTY_SF]
fstp qword ptr [_G_DFA+eax]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLHP_SF]
fstp qword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLSTR_SF]
fstp qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLESS_SF]
fstp qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLSPD_SF]
fstp qword ptr [_G_DFA+eax+32]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLARMR_SF]
fstp qword ptr [_G_DFA+eax+40]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLEXP_SF]
fstp qword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLVALU_SF]
fstp qword ptr [_G_DFA+eax+56]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLPIRC_SF]
fstp qword ptr [_G_DFA+eax+64]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLCHCK_SF]
fstp qword ptr [_G_DFA+eax+72]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLLV_SF]
fstp qword ptr [_G_DFA+eax+80]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLHPMAX_SF]
fstp qword ptr [_G_DFA+eax+88]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLSTRMAX_SF]
fstp qword ptr [_G_DFA+eax+96]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLESSMAX_SF]
fstp qword ptr [_G_DFA+eax+104]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLESSSPD_SF]
fstp qword ptr [_G_DFA+eax+112]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLEVAD_SF]
fstp qword ptr [_G_DFA+eax+120]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld dword ptr [_PRFLBLNK_SF]
fstp qword ptr [_G_DFA+eax+128]
.Lt_064F:
pop ebx
ret
.balign 16

.globl _LN_PRFLMAKE@0
_LN_PRFLMAKE@0:
push ebx
push esi
.Lt_0650:
push 0
push -1
push offset _PRFLIDTY_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax]
push ecx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLACTN_STR
push -1
movsx ecx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add ecx, esi
imul ecx, 108
lea esi, [_E_STRA+ecx+12]
push esi
call _fb_StrAssign@20
push offset _PRFLGPIC_STR
push 4
push 1
movsx esi, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add esi, ebx
imul esi, 108
lea ebx, [_E_STRA+esi+24]
push ebx
call _fb_StrAssignMid@16
push 0
push -1
push offset _PRFLCMND_STR
push -1
movsx ebx, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx eax, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul eax, esi
add ebx, eax
movsx eax, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ecx, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul ecx, esi
add eax, ecx
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 108
lea eax, [_E_STRA+ebx+36]
push eax
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLGPICACTN_STR
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+48]
push ecx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLACTNCT_STR
push -1
movsx ecx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
movsx esi, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add esi, ebx
dec esi
movsx ebx, word ptr [_AA_SI]
imul esi, ebx
add ecx, esi
imul ecx, 108
lea esi, [_E_STRA+ecx+60]
push esi
call _fb_StrAssign@20
movsx esi, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add esi, ebx
imul esi, 136
fld dword ptr [_PRFLIDTY_SF]
fstp qword ptr [_G_DFA+esi]
movsx esi, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx eax, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul eax, ebx
add esi, eax
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add esi, eax
imul esi, 136
fld dword ptr [_PRFLHP_SF]
fstp qword ptr [_G_DFA+esi+8]
movsx esi, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add ecx, ebx
dec ecx
movsx ebx, word ptr [_AA_SI]
imul ecx, ebx
add esi, ecx
imul esi, 136
fld dword ptr [_PRFLSTR_SF]
fstp qword ptr [_G_DFA+esi+16]
movsx esi, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add esi, ebx
imul esi, 136
fld dword ptr [_PRFLESS_SF]
fstp qword ptr [_G_DFA+esi+24]
movsx esi, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx eax, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul eax, ebx
add esi, eax
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add esi, eax
imul esi, 136
fld dword ptr [_PRFLSPD_SF]
fstp qword ptr [_G_DFA+esi+32]
movsx esi, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add ecx, ebx
dec ecx
movsx ebx, word ptr [_AA_SI]
imul ecx, ebx
add esi, ecx
imul esi, 136
fld dword ptr [_PRFLARMR_SF]
fstp qword ptr [_G_DFA+esi+40]
movsx esi, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add esi, ebx
imul esi, 136
fld dword ptr [_PRFLEXP_SF]
fstp qword ptr [_G_DFA+esi+48]
movsx esi, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx eax, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul eax, ebx
add esi, eax
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add esi, eax
imul esi, 136
fld dword ptr [_PRFLVALU_SF]
fstp qword ptr [_G_DFA+esi+56]
movsx esi, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add ecx, ebx
dec ecx
movsx ebx, word ptr [_AA_SI]
imul ecx, ebx
add esi, ecx
imul esi, 136
fld dword ptr [_PRFLPIRC_SF]
fstp qword ptr [_G_DFA+esi+64]
movsx esi, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add esi, ebx
imul esi, 136
fld dword ptr [_PRFLCHCK_SF]
fstp qword ptr [_G_DFA+esi+72]
movsx esi, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx eax, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul eax, ebx
add esi, eax
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add esi, eax
imul esi, 136
fld dword ptr [_PRFLLV_SF]
fstp qword ptr [_G_DFA+esi+80]
movsx esi, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add ecx, ebx
dec ecx
movsx ebx, word ptr [_AA_SI]
imul ecx, ebx
add esi, ecx
imul esi, 136
fld dword ptr [_PRFLHPMAX_SF]
fstp qword ptr [_G_DFA+esi+88]
movsx esi, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add esi, ebx
imul esi, 136
fld dword ptr [_PRFLSTRMAX_SF]
fstp qword ptr [_G_DFA+esi+96]
movsx esi, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx eax, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul eax, ebx
add esi, eax
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add esi, eax
imul esi, 136
fld dword ptr [_PRFLESSMAX_SF]
fstp qword ptr [_G_DFA+esi+104]
movsx esi, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add esi, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add ecx, ebx
dec ecx
movsx ebx, word ptr [_AA_SI]
imul ecx, ebx
add esi, ecx
imul esi, 136
fld dword ptr [_PRFLESSSPD_SF]
fstp qword ptr [_G_DFA+esi+112]
movsx esi, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add esi, ebx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx eax, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul eax, ecx
add ebx, eax
dec ebx
movsx eax, word ptr [_AA_SI]
imul ebx, eax
add esi, ebx
imul esi, 136
fld dword ptr [_PRFLEVAD_SF]
fstp qword ptr [_G_DFA+esi+120]
movsx esi, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx eax, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul eax, ebx
add esi, eax
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add esi, eax
imul esi, 136
fld dword ptr [_PRFLBLNK_SF]
fstp qword ptr [_G_DFA+esi+128]
.Lt_0651:
pop esi
pop ebx
ret
.balign 16

.globl _LN_ACTNCURE@0
_LN_ACTNCURE@0:
.Lt_0652:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0655
jmp .Lt_0653
.Lt_0655:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0657
jmp .Lt_0653
.Lt_0657:
push 0
push 29
push offset _Lt_0658
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_065A
call _LN_USECURE@0
jmp .Lt_0653
.Lt_065A:
.Lt_0659:
.Lt_0653:
ret
.balign 16

.globl _LN_ACTNBITE@0
_LN_ACTNBITE@0:
.Lt_065B:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_065E
jmp .Lt_065C
.Lt_065E:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0660
jmp .Lt_065C
.Lt_0660:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0662
call _LN_ATTKBITE@0
jmp .Lt_065C
.Lt_0662:
.Lt_0661:
.Lt_065C:
ret
.balign 16

.globl _LN_ACTNPNCH@0
_LN_ACTNPNCH@0:
.Lt_0663:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0666
jmp .Lt_0664
.Lt_0666:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0668
jmp .Lt_0664
.Lt_0668:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_066A
call _LN_ATTKPNCH@0
jmp .Lt_0664
.Lt_066A:
.Lt_0669:
.Lt_0664:
ret
.balign 16

.globl _LN_ACTNKICK@0
_LN_ACTNKICK@0:
.Lt_066B:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_066E
jmp .Lt_066C
.Lt_066E:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0670
jmp .Lt_066C
.Lt_0670:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0672
call _LN_ATTKKICK@0
jmp .Lt_066C
.Lt_0672:
.Lt_0671:
.Lt_066C:
ret
.balign 16

.globl _LN_ACTNDGGR@0
_LN_ACTNDGGR@0:
.Lt_0673:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0676
jmp .Lt_0674
.Lt_0676:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0678
jmp .Lt_0674
.Lt_0678:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_067A
call _LN_ATTKDGGR@0
jmp .Lt_0674
.Lt_067A:
.Lt_0679:
.Lt_0674:
ret
.balign 16

.globl _LN_ACTNPIKE@0
_LN_ACTNPIKE@0:
.Lt_067B:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_067E
jmp .Lt_067C
.Lt_067E:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0680
jmp .Lt_067C
.Lt_0680:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0682
call _LN_ATTKPIKE@0
jmp .Lt_067C
.Lt_0682:
.Lt_0681:
.Lt_067C:
ret
.balign 16

.globl _LN_ACTNVNOM@0
_LN_ACTNVNOM@0:
.Lt_0683:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0686
jmp .Lt_0684
.Lt_0686:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0688
jmp .Lt_0684
.Lt_0688:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_068A
call _LN_ATTKVNOM@0
jmp .Lt_0684
.Lt_068A:
.Lt_0689:
.Lt_0684:
ret
.balign 16

.globl _LN_ACTNFIRE@0
_LN_ACTNFIRE@0:
.Lt_068B:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_068E
jmp .Lt_068C
.Lt_068E:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0690
call _LN_CASTFIRE@0
jmp .Lt_068C
.Lt_0690:
.Lt_068F:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0692
call _LN_ATTKFIRE@0
jmp .Lt_068C
.Lt_0692:
.Lt_0691:
.Lt_068C:
ret
.balign 16

.globl _LN_ACTNDUST@0
_LN_ACTNDUST@0:
.Lt_0693:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0696
jmp .Lt_0694
.Lt_0696:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0698
call _LN_CASTDUST@0
jmp .Lt_0694
.Lt_0698:
.Lt_0697:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_069A
call _LN_USESLEP@0
jmp .Lt_0694
.Lt_069A:
.Lt_0699:
.Lt_0694:
ret
.balign 16

.globl _LN_ACTNWEB@0
_LN_ACTNWEB@0:
.Lt_069B:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_069E
jmp .Lt_069C
.Lt_069E:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06A0
call _LN_CASTWEB@0
jmp .Lt_069C
.Lt_06A0:
.Lt_069F:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06A2
call _LN_ATTKWEB@0
jmp .Lt_069C
.Lt_06A2:
.Lt_06A1:
.Lt_069C:
ret
.balign 16

.globl _LN_ACTNSPDR@0
_LN_ACTNSPDR@0:
.Lt_06A3:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_06A6
jmp .Lt_06A4
.Lt_06A6:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06A8
call _LN_CASTSPDR@0
jmp .Lt_06A4
.Lt_06A8:
.Lt_06A7:
.Lt_06A4:
ret
.balign 16

.globl _LN_ACTNCCTS@0
_LN_ACTNCCTS@0:
.Lt_06A9:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_06AC
jmp .Lt_06AA
.Lt_06AC:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06AE
call _LN_CASTCCTS@0
jmp .Lt_06AA
.Lt_06AE:
.Lt_06AD:
.Lt_06AA:
ret
.balign 16

.globl _LN_ACTNDTBY@0
_LN_ACTNDTBY@0:
.Lt_06AF:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_06B2
jmp .Lt_06B0
.Lt_06B2:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06B4
call _LN_CASTDTBY@0
jmp .Lt_06B0
.Lt_06B4:
.Lt_06B3:
.Lt_06B0:
ret
.balign 16

.globl _LN_ACTNMOVE@0
_LN_ACTNMOVE@0:
.Lt_06B5:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_06B8
jmp .Lt_06B6
.Lt_06B8:
call _LN_MOVE@0
.Lt_06B6:
ret
.balign 16

.globl _LN_ACTNWING@0
_LN_ACTNWING@0:
.Lt_06B9:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00F5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_06BC
jmp .Lt_06BA
.Lt_06BC:
call _LN_WINGMOVE@0
.Lt_06BA:
ret
.balign 16

.globl _LN_ACTNWSTF@0
_LN_ACTNWSTF@0:
push ebx
.Lt_06BD:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_0150
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06C0
mov word ptr [_DIS_SI], 2
push 0
push 9
push offset _Lt_052B
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06C2
mov ax, word ptr [_TX_SI]
mov word ptr [_TEMPTX_SI], ax
mov ax, word ptr [_TY_SI]
mov word ptr [_TEMPTY_SI], ax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
add eax, ecx
mov word ptr [_TX_SI], ax
movsx eax, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+4]
add eax, ebx
mov word ptr [_TY_SI], ax
mov word ptr [_DIS_SI], 1
call _LN_SWAPDATA@0
mov ax, word ptr [_TEMPTX_SI]
mov word ptr [_TX_SI], ax
mov ax, word ptr [_TEMPTY_SI]
mov word ptr [_TY_SI], ax
jmp .Lt_06BE
.Lt_06C2:
.Lt_06C1:
.Lt_06C0:
.Lt_06BF:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06C4
call _LN_ATTKWSTF@0
.Lt_06C4:
.Lt_06C3:
.Lt_06BE:
pop ebx
ret
.balign 16

.globl _LN_ACTNKEY1@0
_LN_ACTNKEY1@0:
.Lt_06C5:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_012E
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06C8
push 0
push 5
push offset _Lt_0134
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_06CA
push 0
push 5
push offset _Lt_0134
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
push 0
push 5
push offset _Lt_014D
push -1
push offset _HAVEHADIT_STR
call _fb_StrAssign@20
call _LN_HAVEHADIT@0
call _LN_DELETE2@0
.Lt_06CA:
.Lt_06C9:
.Lt_06C8:
.Lt_06C7:
.Lt_06C6:
ret
.balign 16

.globl _LN_ACTNKEY2@0
_LN_ACTNKEY2@0:
.Lt_06CB:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_012E
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06CE
push 0
push 5
push offset _Lt_0137
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_06D0
push 0
push 5
push offset _Lt_0137
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
push 0
push 5
push offset _Lt_014E
push -1
push offset _HAVEHADIT_STR
call _fb_StrAssign@20
call _LN_HAVEHADIT@0
call _LN_DELETE2@0
.Lt_06D0:
.Lt_06CF:
.Lt_06CE:
.Lt_06CD:
.Lt_06CC:
ret
.balign 16

.globl _LN_ACTNISPT@0
_LN_ACTNISPT@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
.Lt_06D1:
mov word ptr [ebp-4], 0
mov word ptr [_DIS_SI], 1
call _LN_PUTACTION@0
push 0
push 5
push offset _Lt_00F5
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
je .Lt_06D4
jmp .Lt_06D2
.Lt_06D4:
push 9
push offset _Lt_0142
push -1
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ecx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ecx, eax
add ebx, ecx
movsx ecx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ecx, esi
dec ecx
movsx esi, word ptr [_AA_SI]
imul ecx, esi
add ebx, ecx
imul ebx, 108
lea ecx, [_E_STRA+ebx]
push ecx
call _fb_StrCompare@16
test eax, eax
jne .Lt_06D6
call _LN_MERCHANT@0
jmp .Lt_06D2
.Lt_06D6:
.Lt_06D5:
push 11
push offset _Lt_0118
push -1
movsx eax, word ptr [_TX_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+2]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add eax, ebx
movsx ebx, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx esi, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul esi, ecx
add ebx, esi
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_06D8
call _LN_TALK0001@0
jmp .Lt_06D2
.Lt_06D8:
.Lt_06D7:
push 0
push 9
push offset _Lt_06D9
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06DB
call _LN_PILLAGE@0
push 0
push 5
push offset _Lt_0328
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06DD
call _LN_DELETE2@0
.Lt_06DD:
.Lt_06DC:
jmp .Lt_06D2
.Lt_06DB:
.Lt_06DA:
push 0
push 5
push offset _Lt_012E
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06DF
mov word ptr [ebp-4], 0
mov word ptr [_T_SI], 1
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add eax, esi
movsx esi, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add esi, ecx
dec esi
movsx ecx, word ptr [_AA_SI]
imul esi, ecx
add eax, esi
imul eax, 108
lea esi, [_E_STRA+eax+12]
push esi
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
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
jmp .Lt_06E1
.Lt_06E4:
push 0
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TX_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ecx, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul ecx, esi
add eax, ecx
movsx ecx, word ptr [_TY_SI]
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ebx, word ptr [_D_SIA+esi+4]
movsx esi, word ptr [_DIS_SI]
imul ebx, esi
add ecx, ebx
dec ecx
movsx ebx, word ptr [_AA_SI]
imul ecx, ebx
add eax, ecx
imul eax, 108
lea ecx, [_E_STRA+eax+12]
push ecx
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_0134
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_06E7
.Lt_06E8:
mov word ptr [ebp-4], 1
jmp .Lt_06E5
.Lt_06E7:
push 5
push offset _Lt_0137
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_06E9
.Lt_06EA:
mov word ptr [ebp-4], 1
jmp .Lt_06E5
.Lt_06E9:
push 5
push offset _Lt_013A
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_06EB
.Lt_06EC:
mov word ptr [ebp-4], 1
.Lt_06EB:
.Lt_06E5:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_06E2:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_06E1:
movsx eax, word ptr [_T_SI]
movsx ecx, word ptr [ebp-8]
cmp eax, ecx
jle .Lt_06E4
.Lt_06E3:
movsx ecx, word ptr [ebp-4]
test ecx, ecx
jne .Lt_06EE
call _LN_DELETE2@0
.Lt_06EE:
.Lt_06ED:
jmp .Lt_06D2
.Lt_06DF:
.Lt_06DE:
.Lt_06D2:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNFIREMOVE@0
_LN_ACTNFIREMOVE@0:
.Lt_06F1:
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_052B
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_06F4
call _LN_GONE@0
jmp .Lt_06F2
.Lt_06F4:
.Lt_06F3:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06F6
call _LN_FIREMOVE@0
jmp .Lt_06F2
.Lt_06F6:
.Lt_06F5:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06F8
call _LN_ATTKBURN@0
call _LN_GONE@0
jmp .Lt_06F2
.Lt_06F8:
.Lt_06F7:
call _LN_GONE@0
.Lt_06F2:
ret
.balign 16

.globl _LN_ACTNDUSTMOVE@0
_LN_ACTNDUSTMOVE@0:
.Lt_06F9:
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_052B
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_06FC
call _LN_GONE@0
jmp .Lt_06FA
.Lt_06FC:
.Lt_06FB:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06FE
call _LN_FIREMOVE@0
jmp .Lt_06FA
.Lt_06FE:
.Lt_06FD:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0700
call _LN_USESLEP@0
call _LN_GONE@0
jmp .Lt_06FA
.Lt_0700:
.Lt_06FF:
call _LN_GONE@0
.Lt_06FA:
ret
.balign 16

.globl _LN_ACTNWEBMOVE@0
_LN_ACTNWEBMOVE@0:
.Lt_0701:
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_052B
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0704
jmp .Lt_0702
.Lt_0704:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0706
call _LN_WEBMOVE@0
jmp .Lt_0702
.Lt_0706:
.Lt_0705:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0708
call _LN_ATTKTNGL@0
call _LN_GONE@0
jmp .Lt_0702
.Lt_0708:
.Lt_0707:
.Lt_0702:
ret
.balign 16

.globl _LN_ACTNGRPL@0
_LN_ACTNGRPL@0:
push ebx
push esi
.Lt_0709:
movsx eax, word ptr [_DIS_SI]
cmp eax, 3
jne .Lt_070C
push 0
push 5
push offset _Lt_04E4
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
call _LN_PUTACTION@0
call _LN_ACTNRAPL@0
jmp .Lt_070A
.Lt_070C:
.Lt_070B:
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
imul ebx, 136
fld qword ptr [_G_DFA+ebx+16]
fcomp qword ptr [_Lt_02F1]
push eax
fnstsw ax
test ah, 0b00000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_070E
push 0
push 9
push offset _Lt_052B
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
call _LN_PUTACTION@0
jmp .Lt_070A
.Lt_070E:
.Lt_070D:
movsx ebx, word ptr [_DIS_SI]
test ebx, ebx
jne .Lt_0710
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fld qword ptr [_Lt_071C]
fadd qword ptr [_G_DFA+ebx+16]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+16]
.Lt_0710:
.Lt_070F:
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 3
jge .Lt_0712
movsx ebx, word ptr [_DIS_SI]
inc ebx
mov word ptr [_DIS_SI], bx
.Lt_0712:
.Lt_0711:
push 0
push 9
push offset _Lt_052B
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
push 4
push offset _Lt_02C6
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_039E
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
cmp ebx, -1
jne .Lt_0714
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
jmp .Lt_070A
.Lt_0714:
.Lt_0713:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0716
call _LN_PUTACTION@0
jmp .Lt_070A
.Lt_0716:
.Lt_0715:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0718
call _LN_PUTACTION@0
push 0
push 5
push offset _Lt_04E4
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push offset _Lt_02C6
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_039E
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_PUTACTION@0
call _LN_ATTKLASH@0
jmp .Lt_070A
.Lt_0718:
.Lt_0717:
push 0
push 9
push offset _Lt_0719
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_071B
push 0
push 5
push offset _Lt_04E4
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push offset _Lt_02C6
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_039E
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_PUTACTION@0
jmp .Lt_070A
.Lt_071B:
.Lt_071A:
.Lt_070A:
pop esi
pop ebx
ret
.balign 16

.globl _LN_ACTNRAPL@0
_LN_ACTNRAPL@0:
push ebx
.Lt_071F:
push 4
push offset _Lt_02C6
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_039E
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jne .Lt_0722
push 0
push 9
push offset _Lt_052B
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_00F5
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
jmp .Lt_0720
.Lt_0722:
.Lt_0721:
push 0
push 9
push offset _Lt_052B
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
cmp ebx, -1
jne .Lt_0724
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jle .Lt_0726
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_0726:
.Lt_0725:
jmp .Lt_0720
.Lt_0724:
.Lt_0723:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0728
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jle .Lt_072A
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_072A:
.Lt_0729:
.Lt_0728:
.Lt_0727:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_072C
call _LN_ATTKLASH@0
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
jmp .Lt_0720
.Lt_072C:
.Lt_072B:
push 0
push 9
push offset _Lt_0719
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_072E
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_052B
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jne .Lt_0730
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
jmp .Lt_0720
.Lt_0730:
.Lt_072F:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0732
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
je .Lt_0734
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0736
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul ecx, ebx
add eax, ecx
mov word ptr [_EX_SI], ax
movsx eax, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+4]
movsx ecx, word ptr [_DIS_SI]
imul ebx, ecx
add eax, ebx
mov word ptr [_DY_SI], ax
.Lt_0736:
.Lt_0735:
.Lt_0734:
.Lt_0733:
call _LN_SWAPDATA@0
mov ax, word ptr [_TX_SI]
mov word ptr [_TEMPTX_SI], ax
mov ax, word ptr [_TY_SI]
mov word ptr [_TEMPTY_SI], ax
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx ecx, word ptr [_D_SIA+ebx+2]
add eax, ecx
mov word ptr [_TX_SI], ax
movsx eax, word ptr [_TY_SI]
movsx ecx, word ptr [_D_SI]
imul ecx, 6
movsx ebx, word ptr [_D_SIA+ecx+4]
add eax, ebx
mov word ptr [_TY_SI], ax
call _LN_GETACTION@0
movsx eax, word ptr [_DIS_SI]
dec eax
mov word ptr [_DIS_SI], ax
call _LN_PUTACTION@0
mov ax, word ptr [_TEMPTX_SI]
mov word ptr [_TX_SI], ax
mov ax, word ptr [_TEMPTY_SI]
mov word ptr [_TY_SI], ax
jmp .Lt_0720
.Lt_0732:
.Lt_0731:
.Lt_072E:
.Lt_072D:
.Lt_0720:
pop ebx
ret
.balign 16

.globl _LN_CRTNIMP@0
_LN_CRTNIMP@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0739:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_073B
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_073E
.Lt_073F:
call _LN_ACTNMOVE@0
jmp .Lt_073C
.Lt_073E:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_0740
.Lt_0741:
call _LN_ACTNFIRE@0
jmp .Lt_073C
.Lt_0740:
cmp dword ptr [ebp-4], 1953526633
jne .Lt_0742
.Lt_0743:
call _LN_ACTNISPT@0
jmp .Lt_073C
.Lt_0742:
cmp dword ptr [ebp-4], 1735289207
jne .Lt_0744
.Lt_0746:
call _LN_ACTNWING@0
.Lt_0744:
.Lt_073C:
call _LN_AUTOLEVELUP@0
.Lt_073A:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNFIRE@0
_LN_CRTNFIRE@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0747:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 0
push 29
push offset _Lt_0749
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_074C
.Lt_074D:
call _LN_ACTNFIREMOVE@0
.Lt_074C:
.Lt_074A:
.Lt_0748:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNDUST@0
_LN_CRTNDUST@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_074E:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 0
push 25
push offset _Lt_0750
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_0753
.Lt_0754:
call _LN_ACTNDUSTMOVE@0
.Lt_0753:
.Lt_0751:
.Lt_074F:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNSHKT@0
_LN_CRTNSHKT@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0755:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0757
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_075A
.Lt_075B:
call _LN_ACTNMOVE@0
jmp .Lt_0758
.Lt_075A:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_075C
.Lt_075D:
call _LN_ACTNFIRE@0
jmp .Lt_0758
.Lt_075C:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_075E
.Lt_075F:
call _LN_ACTNBITE@0
jmp .Lt_0758
.Lt_075E:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_0760
.Lt_0761:
call _LN_ACTNPNCH@0
jmp .Lt_0758
.Lt_0760:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_0762
.Lt_0763:
call _LN_ACTNKICK@0
jmp .Lt_0758
.Lt_0762:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_0764
.Lt_0765:
call _LN_ACTNDGGR@0
jmp .Lt_0758
.Lt_0764:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_0766
.Lt_0767:
call _LN_ACTNPIKE@0
.Lt_0766:
.Lt_0758:
call _LN_AUTOLEVELUP@0
.Lt_0756:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNEMGD@0
_LN_CRTNEMGD@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0768:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0757
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_076C
.Lt_076D:
call _LN_ACTNMOVE@0
jmp .Lt_076A
.Lt_076C:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_076E
.Lt_076F:
call _LN_ACTNFIRE@0
jmp .Lt_076A
.Lt_076E:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_0770
.Lt_0771:
call _LN_ACTNBITE@0
jmp .Lt_076A
.Lt_0770:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_0772
.Lt_0773:
call _LN_ACTNPNCH@0
jmp .Lt_076A
.Lt_0772:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_0774
.Lt_0775:
call _LN_ACTNKICK@0
jmp .Lt_076A
.Lt_0774:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_0776
.Lt_0777:
call _LN_ACTNDGGR@0
jmp .Lt_076A
.Lt_0776:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_0778
.Lt_0779:
call _LN_ACTNPIKE@0
.Lt_0778:
.Lt_076A:
call _LN_AUTOLEVELUP@0
.Lt_0769:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNSPDR@0
_LN_CRTNSPDR@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_077A:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_077C
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_077F
.Lt_0780:
call _LN_ACTNMOVE@0
jmp .Lt_077D
.Lt_077F:
cmp dword ptr [ebp-4], 1600284023
jne .Lt_0781
.Lt_0782:
call _LN_ACTNWEB@0
jmp .Lt_077D
.Lt_0781:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_0783
.Lt_0784:
call _LN_ACTNBITE@0
jmp .Lt_077D
.Lt_0783:
cmp dword ptr [ebp-4], 1836019318
jne .Lt_0785
.Lt_0786:
call _LN_ACTNKICK@0
.Lt_0785:
.Lt_077D:
call _LN_AUTOLEVELUP@0
.Lt_077B:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNWEB@0
_LN_CRTNWEB@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0787:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 5
push offset _Lt_033F
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_078A
call _LN_NEXTACTION@0
.Lt_078A:
.Lt_0789:
push 0
push 29
push offset _Lt_078B
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_078E
.Lt_078F:
call _LN_ACTNWEBMOVE@0
jmp .Lt_078C
.Lt_078E:
cmp dword ptr [ebp-4], 1919185011
jne .Lt_0790
.Lt_0791:
call _LN_ACTNSPDR@0
.Lt_0790:
.Lt_078C:
call _LN_AUTOLEVELUP@0
.Lt_0788:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNDTBY@0
_LN_CRTNDTBY@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0792:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0794
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_0797
.Lt_0798:
call _LN_ACTNMOVE@0
jmp .Lt_0795
.Lt_0797:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_0799
.Lt_079A:
call _LN_ACTNFIRE@0
jmp .Lt_0795
.Lt_0799:
cmp dword ptr [ebp-4], 2036495460
jne .Lt_079B
.Lt_079C:
call _LN_ACTNDTBY@0
jmp .Lt_0795
.Lt_079B:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_079D
.Lt_079E:
call _LN_ACTNBITE@0
jmp .Lt_0795
.Lt_079D:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_079F
.Lt_07A0:
call _LN_ACTNKICK@0
jmp .Lt_0795
.Lt_079F:
cmp dword ptr [ebp-4], 1953723748
jne .Lt_07A1
.Lt_07A2:
call _LN_ACTNDUST@0
.Lt_07A1:
.Lt_0795:
call _LN_AUTOLEVELUP@0
.Lt_0793:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNGRML@0
_LN_CRTNGRML@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_07A3:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_07A5
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_07A8
.Lt_07A9:
call _LN_ACTNMOVE@0
jmp .Lt_07A6
.Lt_07A8:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_07AA
.Lt_07AB:
call _LN_ACTNFIRE@0
jmp .Lt_07A6
.Lt_07AA:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_07AC
.Lt_07AD:
call _LN_ACTNBITE@0
jmp .Lt_07A6
.Lt_07AC:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_07AE
.Lt_07AF:
call _LN_ACTNPNCH@0
jmp .Lt_07A6
.Lt_07AE:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_07B0
.Lt_07B1:
call _LN_ACTNKICK@0
jmp .Lt_07A6
.Lt_07B0:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_07B2
.Lt_07B3:
call _LN_ACTNDGGR@0
jmp .Lt_07A6
.Lt_07B2:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_07B4
.Lt_07B5:
call _LN_ACTNPIKE@0
.Lt_07B4:
.Lt_07A6:
call _LN_AUTOLEVELUP@0
.Lt_07A4:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNPNDX@0
_LN_CRTNPNDX@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_07B6:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 37
push offset _Lt_07B8
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_07BB
.Lt_07BC:
call _LN_ACTNMOVE@0
jmp .Lt_07B9
.Lt_07BB:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_07BD
.Lt_07BE:
call _LN_ACTNFIRE@0
jmp .Lt_07B9
.Lt_07BD:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_07BF
.Lt_07C0:
call _LN_ACTNBITE@0
jmp .Lt_07B9
.Lt_07BF:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_07C1
.Lt_07C2:
call _LN_ACTNPNCH@0
jmp .Lt_07B9
.Lt_07C1:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_07C3
.Lt_07C4:
call _LN_ACTNKICK@0
jmp .Lt_07B9
.Lt_07C3:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_07C5
.Lt_07C6:
call _LN_ACTNDGGR@0
jmp .Lt_07B9
.Lt_07C5:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_07C7
.Lt_07C8:
call _LN_ACTNPIKE@0
jmp .Lt_07B9
.Lt_07C7:
cmp dword ptr [ebp-4], 1919185011
jne .Lt_07C9
.Lt_07CA:
call _LN_ACTNSPDR@0
jmp .Lt_07B9
.Lt_07C9:
cmp dword ptr [ebp-4], 1600284023
jne .Lt_07CB
.Lt_07CC:
call _LN_ACTNWEB@0
jmp .Lt_07B9
.Lt_07CB:
cmp dword ptr [ebp-4], 1836019318
jne .Lt_07CD
.Lt_07CE:
call _LN_ACTNVNOM@0
jmp .Lt_07B9
.Lt_07CD:
cmp dword ptr [ebp-4], 1701999971
jne .Lt_07CF
.Lt_07D0:
call _LN_ACTNCURE@0
jmp .Lt_07B9
.Lt_07CF:
cmp dword ptr [ebp-4], 1953526633
jne .Lt_07D1
.Lt_07D2:
call _LN_ACTNISPT@0
jmp .Lt_07B9
.Lt_07D1:
cmp dword ptr [ebp-4], 1819308647
jne .Lt_07D3
.Lt_07D4:
call _LN_ACTNGRPL@0
jmp .Lt_07B9
.Lt_07D3:
cmp dword ptr [ebp-4], 1819304306
jne .Lt_07D5
.Lt_07D6:
call _LN_ACTNRAPL@0
jmp .Lt_07B9
.Lt_07D5:
cmp dword ptr [ebp-4], 1684366707
jne .Lt_07D7
.Lt_07D8:
call _LN_ACTNCCTS@0
jmp .Lt_07B9
.Lt_07D7:
cmp dword ptr [ebp-4], 1718907767
jne .Lt_07D9
.Lt_07DA:
call _LN_ACTNWSTF@0
jmp .Lt_07B9
.Lt_07D9:
cmp dword ptr [ebp-4], 1735289207
jne .Lt_07DB
.Lt_07DC:
call _LN_ACTNWING@0
jmp .Lt_07B9
.Lt_07DB:
cmp dword ptr [ebp-4], 830039403
jne .Lt_07DD
.Lt_07DE:
call _LN_ACTNKEY1@0
jmp .Lt_07B9
.Lt_07DD:
cmp dword ptr [ebp-4], 846816619
jne .Lt_07DF
.Lt_07E0:
call _LN_ACTNKEY2@0
.Lt_07DF:
.Lt_07B9:
call _LN_AUTOLEVELUP@0
.Lt_07B7:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNCCTS@0
_LN_CRTNCCTS@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_07E1:
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
push offset _Lt_052E
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx eax, word ptr [_HERE_SI]
test eax, eax
jle .Lt_07E4
push 4
push offset _Lt_0533
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
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
.Lt_07E4:
.Lt_07E3:
push 0
push 5
push offset _Lt_07E5
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx ebx, word ptr [_HERE_SI]
test ebx, ebx
jle .Lt_07E7
push 4
push offset _Lt_07E8
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
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
.Lt_07E7:
.Lt_07E6:
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1684366707
jne .Lt_07EB
.Lt_07EC:
call _LN_ACTNCCTS@0
.Lt_07EB:
.Lt_07E9:
call _LN_AUTOLEVELUP@0
.Lt_07E2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNBLDR@0
_LN_CRTNBLDR@0:
push ebx
.Lt_07ED:
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
push offset _Lt_0533
push -1
push 4
push 5
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_07F0
push 4
push offset _Lt_07F1
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
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
call _LN_GONE@0
jmp .Lt_07EE
.Lt_07F0:
.Lt_07EF:
push 5
push offset _Lt_052E
push -1
push 4
push 5
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 108
lea eax, [_E_STRA+ebx+24]
push eax
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_07F3
push 4
push offset _Lt_07E5
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
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
call _LN_GONE@0
jmp .Lt_07EE
.Lt_07F3:
.Lt_07F2:
call _LN_AUTOLEVELUP@0
.Lt_07EE:
pop ebx
ret
.balign 16

.globl _CINPUT@0
_CINPUT@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_07F4:
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
jne .Lt_07F7
push 0
push 3
push offset _Lt_0637
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_07F7:
push 2
push offset _Lt_07F8
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
je .Lt_07FA
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
push offset _Lt_07FC
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 5
push offset _Lt_07FB
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_07FA:
.Lt_07F9:
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
je .Lt_0800
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
push offset _Lt_07FC
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 3
push offset _Lt_0801
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0800:
.Lt_07FF:
push offset _YMOUSE_SI
push offset _XMOUSE_SI
push offset _RB_SI
push offset _LB_SI
call _MOUSESTATUS@16
movsx eax, word ptr [_YMOUSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_02E9]
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
fadd qword ptr [_Lt_0156]
fistp word ptr [_YM_SI]
movsx eax, word ptr [_XMOUSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_02E9]
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
fadd qword ptr [_Lt_0156]
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
je .Lt_0805
mov cx, word ptr [_LB_SI]
mov word ptr [_LLB_SI], cx
mov cx, word ptr [_LB_SI]
mov word ptr [_L1B_SI], cx
jmp .Lt_0804
.Lt_0805:
mov word ptr [_LB_SI], 0
.Lt_0804:
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
je .Lt_0807
mov ax, word ptr [_RB_SI]
mov word ptr [_RRB_SI], ax
mov ax, word ptr [_RB_SI]
mov word ptr [_R1B_SI], ax
jmp .Lt_0806
.Lt_0807:
mov word ptr [_RB_SI], 0
.Lt_0806:
.Lt_07F5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CURSORPUT@0
_CURSORPUT@0:
push ebp
mov ebp, esp
sub esp, 60
.Lt_0812:
push -1
push 1
push offset _Lt_0814
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0816
push 0
push -1
push offset _C_STR
push -1
push offset _CLAST_STR
call _fb_StrAssign@20
.Lt_0816:
.Lt_0815:
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
push offset _Lt_0045
push -1
push -1
movzx eax, word ptr [_YMOUSE_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 2
push offset _Lt_0045
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
.Lt_0813:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PROGRESS_PUT@64
_PROGRESS_PUT@64:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.Lt_081C:
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
jg .Lt_081F
push 0
push -1
push 2
push offset _Lt_0814
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
push offset _Lt_07FC
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 2
push offset _Lt_07FC
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
push dword ptr [ebp+56]
call _fb_StrAssign@20
jmp .Lt_081E
.Lt_081F:
push 0
push -1
push 2
push offset _Lt_0814
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
push offset _Lt_07FC
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
push 2
push offset _Lt_0823
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
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+56]
call _fb_StrAssign@20
.Lt_081E:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_081D
mov eax, dword ptr [ebp+44]
and eax, 1
je .Lt_0829
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
.Lt_0829:
.Lt_0828:
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
fdiv qword ptr [_Lt_0153]
fxch st(1)
faddp
push -1
push dword ptr [ebp+16]
fstp qword ptr [ebp-52]
call _fb_StrLen@8
dec eax
sal eax, 3
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0153]
fld qword ptr [ebp-52]
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
fdiv qword ptr [_Lt_0153]
fxch st(1)
faddp
push -1
push dword ptr [ebp+56]
fstp qword ptr [ebp-60]
call _fb_StrLen@8
dec eax
sal eax, 3
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_0153]
fld qword ptr [ebp-60]
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
fdiv qword ptr [_Lt_0153]
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
.Lt_081D:
pop ebx
mov esp, ebp
pop ebp
ret 64
.balign 16

.globl _GRAPHICPUT@24
_GRAPHICPUT@24:
push ebp
mov ebp, esp
sub esp, 152
push ebx
.Lt_082C:
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
push offset _Lt_082E
push -1
push dword ptr [ebp+24]
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0830
push 0
push -1
push 2
push offset _Lt_0831
push -1
push dword ptr [ebp+24]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 1
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 5
push offset _Lt_0833
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push -1
push dword ptr [ebp+28]
push -1
push offset _THISPATH_STR
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
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
lea eax, [ebp-92]
push eax
call _fb_StrAssign@20
lea eax, [ebp-92]
push eax
call _png_load
add esp, 8
mov dword ptr [ebp-32], eax
lea eax, [ebp-92]
push eax
call _fb_StrDelete@4
push 0
push -1
push 2
push offset _Lt_0838
push -1
push dword ptr [ebp+24]
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 1
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push -1
push 5
push offset _Lt_0833
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
push dword ptr [ebp+28]
push -1
push offset _THISPATH_STR
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
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-152]
push eax
call _fb_StrAssign@20
lea eax, [ebp-152]
push eax
call _png_load
add esp, 8
mov dword ptr [ebp-28], eax
lea eax, [ebp-152]
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
.Lt_0830:
.Lt_082F:
push -1
push dword ptr [ebp+24]
call _fb_StrLen@8
cmp eax, 11
je .Lt_083F
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
push offset _Lt_0823
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_083F:
.Lt_083E:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_082D:
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _SUSPEND@8
_SUSPEND@8:
push ebp
mov ebp, esp
push ebx
push esi
.Lt_0842:
.Lt_0844:
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0846:
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
je .Lt_0844
.Lt_0845:
.Lt_0843:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CLS2@0
_CLS2@0:
.Lt_0849:
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_084B]
push dword ptr [_Lt_0447]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_0163]
push 0
call _fb_GfxLine@36
.Lt_084A:
ret
.balign 16

.globl _FILE_PUT_CONTENTS@8
_FILE_PUT_CONTENTS@8:
push ebp
mov ebp, esp
sub esp, 4
.Lt_084C:
mov dword ptr [ebp-4], 0
call _fb_FileFree@0
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 2
push 0
push dword ptr [ebp+8]
call _fb_FileOpen@24
push -1
push dword ptr [ebp+12]
push 0
push dword ptr [ebp-4]
call _fb_FilePutStr@16
push dword ptr [ebp-4]
call _fb_FileClose@4
.Lt_084D:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FILE_GET_CONTENTS@4
_FILE_GET_CONTENTS@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_084E:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
call _fb_FileFree@0
mov dword ptr [ebp-28], eax
push 0
push dword ptr [ebp-28]
push 0
push 1
push 0
push dword ptr [ebp+8]
call _fb_FileOpen@24
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
jg .Lt_0852
jl .Lt_0853
cmp eax, 0
ja .Lt_0852
.Lt_0853:
xor ecx, ecx
.Lt_0852:
and ebx, ecx
je .Lt_0851
push 1
push dword ptr [ebp-28]
call _fb_FileSeek@8
push -1
lea ecx, [ebp-24]
push ecx
push dword ptr [ebp-28]
call _fb_FileTell@4
push edx
push eax
push dword ptr [ebp-28]
call _fb_FileGetStrLarge@20
.Lt_0851:
.Lt_0850:
push dword ptr [ebp-28]
call _fb_FileClose@4
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
.Lt_084F:
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
sub esp, 16
push ebx
.Lt_0854:
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
.Lt_0859:
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
sal eax, 2
mov ecx, dword ptr [ebp+12]
add eax, dword ptr [ecx]
mov dword ptr [eax], ebx
.Lt_0857:
inc dword ptr [ebp-16]
.Lt_0856:
cmp dword ptr [ebp-16], 255
jle .Lt_0859
.Lt_0858:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_0855:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _MOUSESTATUS@16
_MOUSESTATUS@16:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_085A:
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
.Lt_085B:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _CLV_BUFFER_STACK@4
_CLV_BUFFER_STACK@4:
push ebp
mov ebp, esp
.Lt_0860:
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
jne .Lt_0863
.Lt_0864:
push 1
push dword ptr [_CLV_BUFFER_TITLE]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0862
.Lt_0863:
mov eax, dword ptr [_CLV_BUFFER_HELP]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0865
.Lt_0866:
push 1
push dword ptr [_CLV_BUFFER_HELP]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0862
.Lt_0865:
mov eax, dword ptr [_CLV_BUFFER_PORTAL]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0867
.Lt_0868:
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
jmp .Lt_0862
.Lt_0867:
mov eax, dword ptr [_CLV_BUFFER_STATUS]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0869
.Lt_086A:
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
jmp .Lt_0862
.Lt_0869:
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_086B
.Lt_086C:
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
jmp .Lt_0862
.Lt_086B:
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_086D
.Lt_086E:
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
jmp .Lt_0862
.Lt_086D:
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_086F
.Lt_0870:
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
.Lt_086F:
.Lt_0862:
mov eax, dword ptr [_CLV_BUFFER_SPLASH]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
je .Lt_0872
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
.Lt_0872:
.Lt_0871:
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
push dword ptr [_Lt_0163]
push dword ptr [_Lt_0163]
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
.Lt_0861:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FRAME_STATUS@8
_FRAME_STATUS@8:
push ebp
mov ebp, esp
sub esp, 300
push ebx
.Lt_0873:
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
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 3
push offset _Lt_050B
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-36]
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
lea ebx, [ebp-36]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fld qword ptr [_Lt_0523]
fadd qword ptr [_G_DFA+ebx+80]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
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
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 2
push offset _Lt_036F
push -1
push 5
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push 6
push offset _Lt_050E
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
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset _Lt_036C
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
inc eax
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
push 3
push offset _Lt_0513
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign@20
lea eax, [ebp-108]
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
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
fadd qword ptr [_Lt_0524]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
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
add eax, 3
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
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 2
push offset _Lt_0516
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
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
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
fadd qword ptr [_Lt_0524]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign@20
lea eax, [ebp-144]
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
lea eax, [ebp-144]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 4
push offset _Lt_0519
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign@20
lea eax, [ebp-156]
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
lea eax, [ebp-156]
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
fadd qword ptr [_Lt_0524]
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
lea eax, [ebp-168]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push 2
push offset _Lt_0516
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
lea eax, [ebp-180]
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
lea eax, [ebp-180]
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
fadd qword ptr [_Lt_0524]
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
add eax, 10
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
push 4
push offset _Lt_051E
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign@20
lea eax, [ebp-204]
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
lea eax, [ebp-204]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
fadd qword ptr [_Lt_0524]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign@20
lea eax, [ebp-216]
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
lea eax, [ebp-216]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
push 0
push 2
push offset _Lt_0516
push -1
lea eax, [ebp-228]
push eax
call _fb_StrAssign@20
lea eax, [ebp-228]
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
lea eax, [ebp-228]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
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
fadd qword ptr [_Lt_0524]
sub esp,8
fstp qword ptr [esp]
call _fb_DoubleToStr@8
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign@20
lea eax, [ebp-240]
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
lea eax, [ebp-240]
push eax
call _fb_StrDelete@4
call _LN_GETACTION@0
movsx eax, word ptr [_D_SI]
test eax, eax
jne .Lt_0888
.Lt_0889:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_088B
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign@20
lea eax, [ebp-300]
push eax
lea eax, [ebp+12]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-288], ax
lea eax, [ebp-288]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-300]
push eax
call _fb_StrDelete@4
jmp .Lt_0887
.Lt_0888:
movsx eax, word ptr [_D_SI]
cmp eax, 1
jne .Lt_088D
.Lt_088E:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_0890
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign@20
lea eax, [ebp-300]
push eax
lea eax, [ebp+12]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-288], ax
lea eax, [ebp-288]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-300]
push eax
call _fb_StrDelete@4
jmp .Lt_0887
.Lt_088D:
movsx eax, word ptr [_D_SI]
cmp eax, 2
jne .Lt_0892
.Lt_0893:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_0895
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign@20
lea eax, [ebp-300]
push eax
lea eax, [ebp+12]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-288], ax
lea eax, [ebp-288]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-300]
push eax
call _fb_StrDelete@4
jmp .Lt_0887
.Lt_0892:
movsx eax, word ptr [_D_SI]
cmp eax, 3
jne .Lt_0897
.Lt_0898:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_089A
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign@20
lea eax, [ebp-300]
push eax
lea eax, [ebp+12]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-288], ax
lea eax, [ebp-288]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-300]
push eax
call _fb_StrDelete@4
jmp .Lt_0887
.Lt_0897:
movsx eax, word ptr [_D_SI]
cmp eax, 4
jne .Lt_089C
.Lt_089D:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_089F
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign@20
lea eax, [ebp-300]
push eax
lea eax, [ebp+12]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-288], ax
lea eax, [ebp-288]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-300]
push eax
call _fb_StrDelete@4
.Lt_089C:
.Lt_0887:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 4
push offset _Lt_04B8
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
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign@20
lea eax, [ebp-284]
push eax
movsx eax, word ptr [ebp+12]
add eax, 6
mov word ptr [ebp-248], ax
lea eax, [ebp-248]
push eax
movsx eax, word ptr [ebp+8]
add eax, 5
mov word ptr [ebp-244], ax
lea eax, [ebp-244]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-284]
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
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [ebp-288]
jmp .Lt_08A7
.Lt_08AA:
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
jne .Lt_08AC
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
.Lt_08AC:
.Lt_08AB:
.Lt_08A8:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_08A7:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-288]
cmp eax, ebx
jle .Lt_08AA
.Lt_08A9:
.Lt_0874:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FRAME_INVENTORY@8
_FRAME_INVENTORY@8:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_08AD:
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
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [ebp-36]
jmp .Lt_08B0
.Lt_08B3:
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
fdiv qword ptr [_Lt_027F]
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
fmul qword ptr [_Lt_027C]
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
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push 8
push offset _Lt_03B3
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
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
movsx eax, word ptr [ebp+12]
movsx ebx, word ptr [ebp-28]
add eax, ebx
mov word ptr [ebp-44], ax
lea eax, [ebp-44]
push eax
movsx eax, word ptr [ebp+8]
movsx ebx, word ptr [ebp-32]
add eax, ebx
mov word ptr [ebp-40], ax
lea eax, [ebp-40]
push eax
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _GRAPHICPUT@24
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
push -1
push offset _R_STR
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_08B9
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
.Lt_08B9:
.Lt_08B8:
.Lt_08B1:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_08B0:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-36]
cmp eax, ebx
jle .Lt_08B3
.Lt_08B2:
.Lt_08AE:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FRAME_TITLE@8
_FRAME_TITLE@8:
push ebp
mov ebp, esp
sub esp, 36
.Lt_08BA:
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
jne .Lt_08BD
.Lt_08BE:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 8
push offset _Lt_08BF
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
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
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_08BC
.Lt_08BD:
movsx eax, word ptr [_TITLED_SI]
cmp eax, 1
jne .Lt_08C1
.Lt_08C2:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 8
push offset _Lt_08C3
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
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
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_08C1:
.Lt_08BC:
.Lt_08BB:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FRAME_PUT@32
_FRAME_PUT@32:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.Lt_08C5:
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
mov dword ptr [ebp+ebx*8-24], eax
movsx eax, word ptr [ebp+24]
sal eax, 3
mov ebx, dword ptr [ebp-68]
mov dword ptr [ebp+ebx*8-20], eax
movsx eax, word ptr [ebp+20]
dec eax
sal eax, 3
dec eax
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp+ebx*8-24], eax
movsx eax, word ptr [ebp+28]
sal eax, 3
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp+ebx*8-20], eax
push 2
push 4278190080
push 4278190080
mov eax, dword ptr [ebp-72]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-68]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-72]
push dword ptr [ebp+eax*8-24]
mov eax, dword ptr [ebp-68]
push dword ptr [ebp+eax*8-24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
push 1
push 4278190080
push 4286808963
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [ebp+eax*8-20]
add ebx, 2
push ebx
mov ebx, dword ptr [ebp-68]
push dword ptr [ebp+ebx*8-20]
mov ebx, dword ptr [ebp-72]
mov eax, dword ptr [ebp+ebx*8-24]
add eax, -2
push eax
mov eax, dword ptr [ebp-68]
push dword ptr [ebp+eax*8-24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
push 1
push 4278190080
push 4286808963
mov eax, dword ptr [ebp-72]
push dword ptr [ebp+eax*8-20]
mov eax, dword ptr [ebp-68]
mov ebx, dword ptr [ebp+eax*8-20]
add ebx, 2
push ebx
mov ebx, dword ptr [ebp-72]
push dword ptr [ebp+ebx*8-24]
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [ebp+ebx*8-24]
add eax, -2
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
push 1
push 4278190080
push 4290822336
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [ebp+ebx*8-20]
inc eax
push eax
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [ebp+ebx*8-24]
dec eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
push 4278190080
push 4286808963
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [ebp+ebx*8-24]
dec eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4286808963
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [ebp+ebx*8-20]
inc eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4286808963
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [ebp+eax*8-20]
inc ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [ebp+ebx*8-24]
dec eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4286808963
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [ebp+eax*8-24]
dec ebx
push ebx
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [ebp+ebx*8-20]
inc eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_PIXEL@24
.Lt_08C6:
pop ebx
mov esp, ebp
pop ebp
ret 32
.balign 16

.globl _CLV_GLYPH_INI@4
_CLV_GLYPH_INI@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_08C8:
mov dword ptr [ebp-4], 0
push 1
push dword ptr [ebp+8]
call _fb_ArrayLBound@8
mov dword ptr [ebp-4], eax
push 1
push dword ptr [ebp+8]
call _fb_ArrayUBound@8
mov dword ptr [ebp-8], eax
jmp .Lt_08CB
.Lt_08CE:
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
je .Lt_08D0
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
mov dword ptr [eax], 1
.Lt_08D0:
.Lt_08CF:
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
.Lt_08CC:
inc dword ptr [ebp-4]
.Lt_08CB:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_08CE
.Lt_08CD:
.Lt_08C9:
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
.Lt_08D9:
.Lt_08DB:
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
push offset _Lt_08E0
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_08DF
.Lt_08E1:
jmp .Lt_08DC
.Lt_08DF:
.Lt_08DE:
.Lt_08DD:
jmp .Lt_08DB
.Lt_08DC:
.Lt_08DA:
mov esp, ebp
pop ebp
ret 28
.balign 16

.globl _MAP_LOAD@4
_MAP_LOAD@4:
push ebp
mov ebp, esp
sub esp, 1704
push ebx
.Lt_08E2:
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
push offset _Lt_08E4
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
push offset _SAVE_TABLE
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push 12
push offset _Lt_08E5
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
push offset _Lt_0043
push -1
push -1
push offset _MAPNAME_STR
push -1
push 2
push offset _Lt_0043
push -1
push 2
push offset _Lt_0096
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
push offset _SAVE_TABLE
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push 6
push offset _Lt_08EB
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
push offset _SAVE_TABLE
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push 6
push offset _Lt_08ED
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
.Lt_08F2:
mov dword ptr [ebp-8], 1
.Lt_08F6:
push offset _SAVE_TABLE
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_08F7
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
lea eax, [ebp-328]
push eax
call _fb_StrConcat@20
push eax
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
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
lea eax, [ebp-364]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-376]
push eax
call _fb_StrAssign@20
lea eax, [ebp-376]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
mov eax, dword ptr [ebp-4]
imul eax, 3
add eax, dword ptr [ebp-8]
fistp word ptr [_D_SIA+eax*2]
lea eax, [ebp-376]
push eax
call _fb_StrDelete@4
.Lt_08F4:
inc dword ptr [ebp-8]
.Lt_08F3:
cmp dword ptr [ebp-8], 2
jle .Lt_08F6
.Lt_08F5:
.Lt_08F0:
inc dword ptr [ebp-4]
.Lt_08EF:
cmp dword ptr [ebp-4], 4
jle .Lt_08F2
.Lt_08F1:
push dword ptr [ebp-44]
push dword ptr [ebp-48]
lea eax, [ebp-56]
push eax
lea eax, [ebp-80]
push eax
push 10
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
push offset _SAVE_TABLE
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 6
push offset _Lt_08FF
push -1
lea eax, [ebp-232]
push eax
call _fb_StrAssign@20
lea eax, [ebp-232]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_EX_SI]
lea eax, [ebp-232]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push 6
push offset _Lt_0901
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
push offset _SAVE_TABLE
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push 7
push offset _Lt_0903
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
push offset _SAVE_TABLE
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
push 0
push 7
push offset _Lt_0905
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
push offset _SAVE_TABLE
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push 13
push offset _Lt_0907
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
push offset _SAVE_TABLE
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
push 0
push 13
push offset _Lt_0909
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
push offset _SAVE_TABLE
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
push 0
push 7
push offset _Lt_090B
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
.Lt_0910:
mov dword ptr [ebp-4], 1
.Lt_0914:
push offset _SAVE_TABLE
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_08F7
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
lea eax, [ebp-328]
push eax
call _fb_StrConcat@20
push eax
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
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
lea eax, [ebp-364]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-376]
push eax
call _fb_StrAssign@20
lea eax, [ebp-376]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
mov eax, dword ptr [ebp-8]
imul eax, 3
add eax, dword ptr [ebp-4]
fistp word ptr [_D_SIA+eax*2]
lea eax, [ebp-376]
push eax
call _fb_StrDelete@4
.Lt_0912:
inc dword ptr [ebp-4]
.Lt_0911:
cmp dword ptr [ebp-4], 2
jle .Lt_0914
.Lt_0913:
.Lt_090E:
inc dword ptr [ebp-8]
.Lt_090D:
cmp dword ptr [ebp-8], 4
jle .Lt_0910
.Lt_090F:
push dword ptr [ebp-44]
push dword ptr [ebp-48]
lea eax, [ebp-56]
push eax
lea eax, [ebp-80]
push eax
push 10
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
movsx eax, word ptr [_WIN_SI]
mov dword ptr [ebp-320], eax
jmp .Lt_091B
.Lt_091E:
mov dword ptr [ebp-8], 1
.Lt_0922:
push offset _SAVE_TABLE
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 9
push offset _Lt_0923
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
lea eax, [ebp-332]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-380]
push eax
call _fb_StrAssign@20
lea eax, [ebp-380]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
mov eax, dword ptr [ebp-4]
sal eax, 1
add eax, dword ptr [ebp-8]
sal eax, 1
add eax, dword ptr [_WIN_SIA]
fistp word ptr [eax-4]
lea eax, [ebp-380]
push eax
call _fb_StrDelete@4
.Lt_0920:
inc dword ptr [ebp-8]
.Lt_091F:
cmp dword ptr [ebp-8], 2
jle .Lt_0922
.Lt_0921:
.Lt_091C:
inc dword ptr [ebp-4]
.Lt_091B:
mov eax, dword ptr [ebp-320]
cmp dword ptr [ebp-4], eax
jle .Lt_091E
.Lt_091D:
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
.Lt_092C:
mov dword ptr [ebp-4], 1
.Lt_0930:
push offset _SAVE_TABLE
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_T_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 7
push offset _Lt_0931
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
lea eax, [ebp-328]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-340], 0
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
lea eax, [ebp-340]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-352]
push eax
call _fb_StrAssign@20
lea eax, [ebp-352]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_T_SI]
fistp word ptr [_L_SIA+eax*2]
lea eax, [ebp-352]
push eax
call _fb_StrDelete@4
.Lt_092E:
inc dword ptr [ebp-4]
.Lt_092D:
cmp dword ptr [ebp-4], 2
jle .Lt_0930
.Lt_092F:
.Lt_092A:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0929:
movsx eax, word ptr [_T_SI]
cmp eax, 64
jle .Lt_092C
.Lt_092B:
push 0
push -1
push offset _SAVE_TABLE
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push 9
push offset _Lt_0935
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
mov word ptr [ebp-320], ax
jmp .Lt_0938
.Lt_093B:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-324], ax
jmp .Lt_093D
.Lt_0940:
push 0
push -1
push offset _SAVE_TABLE
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0941
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
lea eax, [ebp-336]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-384]
push eax
call _fb_StrAssign@20
lea eax, [ebp-384]
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
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-384]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _SAVE_TABLE
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0947
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
mov dword ptr [ebp-388], 0
lea eax, [ebp-396]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-408], 0
mov dword ptr [ebp-404], 0
mov dword ptr [ebp-400], 0
lea eax, [ebp-408]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-420], 0
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
lea eax, [ebp-420]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
lea eax, [ebp-432]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-444]
push eax
call _fb_StrAssign@20
lea eax, [ebp-444]
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
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-444]
push ebx
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_094D
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
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
lea eax, [ebp-492]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-504]
push eax
call _fb_StrAssign@20
lea eax, [ebp-504]
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
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
lea ebx, [ebp-504]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _SAVE_TABLE
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
mov dword ptr [ebp-556], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0953
mov dword ptr [ebp-516], 0
mov dword ptr [ebp-512], 0
mov dword ptr [ebp-508], 0
lea eax, [ebp-516]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-528], 0
mov dword ptr [ebp-524], 0
mov dword ptr [ebp-520], 0
lea eax, [ebp-528]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-564]
push eax
call _fb_StrAssign@20
lea eax, [ebp-564]
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
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-564]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _SAVE_TABLE
mov dword ptr [ebp-624], 0
mov dword ptr [ebp-620], 0
mov dword ptr [ebp-616], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 18
push offset _Lt_0959
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
mov dword ptr [ebp-568], 0
lea eax, [ebp-576]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
mov dword ptr [ebp-580], 0
lea eax, [ebp-588]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
mov dword ptr [ebp-592], 0
lea eax, [ebp-600]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
mov dword ptr [ebp-604], 0
lea eax, [ebp-612]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-624]
push eax
call _fb_StrAssign@20
lea eax, [ebp-624]
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
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-624]
push ebx
call _fb_StrDelete@4
push 0
push -1
push offset _SAVE_TABLE
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
mov dword ptr [ebp-676], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 16
push offset _Lt_095F
mov dword ptr [ebp-636], 0
mov dword ptr [ebp-632], 0
mov dword ptr [ebp-628], 0
lea eax, [ebp-636]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-684]
push eax
call _fb_StrAssign@20
lea eax, [ebp-684]
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
imul eax, 108
lea ebx, [_E_STRA+eax+60]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-684]
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
push offset _SAVE_TABLE
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
mov dword ptr [ebp-736], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0965
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
mov dword ptr [ebp-688], 0
lea eax, [ebp-696]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-708], 0
mov dword ptr [ebp-704], 0
mov dword ptr [ebp-700], 0
lea eax, [ebp-708]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-720], 0
mov dword ptr [ebp-716], 0
mov dword ptr [ebp-712], 0
lea eax, [ebp-720]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-732], 0
mov dword ptr [ebp-728], 0
mov dword ptr [ebp-724], 0
lea eax, [ebp-732]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-744]
push eax
call _fb_StrAssign@20
lea eax, [ebp-744]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax]
lea eax, [ebp-744]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-804], 0
mov dword ptr [ebp-800], 0
mov dword ptr [ebp-796], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_096B
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
mov dword ptr [ebp-780], 0
mov dword ptr [ebp-776], 0
mov dword ptr [ebp-772], 0
lea eax, [ebp-780]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-792], 0
mov dword ptr [ebp-788], 0
mov dword ptr [ebp-784], 0
lea eax, [ebp-792]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-804]
push eax
call _fb_StrAssign@20
lea eax, [ebp-804]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+8]
lea eax, [ebp-804]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-864], 0
mov dword ptr [ebp-860], 0
mov dword ptr [ebp-856], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0971
mov dword ptr [ebp-816], 0
mov dword ptr [ebp-812], 0
mov dword ptr [ebp-808], 0
lea eax, [ebp-816]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-828], 0
mov dword ptr [ebp-824], 0
mov dword ptr [ebp-820], 0
lea eax, [ebp-828]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-864]
push eax
call _fb_StrAssign@20
lea eax, [ebp-864]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+16]
lea eax, [ebp-864]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-924], 0
mov dword ptr [ebp-920], 0
mov dword ptr [ebp-916], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0977
mov dword ptr [ebp-876], 0
mov dword ptr [ebp-872], 0
mov dword ptr [ebp-868], 0
lea eax, [ebp-876]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-888], 0
mov dword ptr [ebp-884], 0
mov dword ptr [ebp-880], 0
lea eax, [ebp-888]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-900], 0
mov dword ptr [ebp-896], 0
mov dword ptr [ebp-892], 0
lea eax, [ebp-900]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-912], 0
mov dword ptr [ebp-908], 0
mov dword ptr [ebp-904], 0
lea eax, [ebp-912]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-924]
push eax
call _fb_StrAssign@20
lea eax, [ebp-924]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+24]
lea eax, [ebp-924]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-984], 0
mov dword ptr [ebp-980], 0
mov dword ptr [ebp-976], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_097D
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
mov dword ptr [ebp-972], 0
mov dword ptr [ebp-968], 0
mov dword ptr [ebp-964], 0
lea eax, [ebp-972]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-984]
push eax
call _fb_StrAssign@20
lea eax, [ebp-984]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+32]
lea eax, [ebp-984]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1044], 0
mov dword ptr [ebp-1040], 0
mov dword ptr [ebp-1036], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0983
mov dword ptr [ebp-996], 0
mov dword ptr [ebp-992], 0
mov dword ptr [ebp-988], 0
lea eax, [ebp-996]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1008], 0
mov dword ptr [ebp-1004], 0
mov dword ptr [ebp-1000], 0
lea eax, [ebp-1008]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1020], 0
mov dword ptr [ebp-1016], 0
mov dword ptr [ebp-1012], 0
lea eax, [ebp-1020]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1032], 0
mov dword ptr [ebp-1028], 0
mov dword ptr [ebp-1024], 0
lea eax, [ebp-1032]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1044]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1044]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+40]
lea eax, [ebp-1044]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1104], 0
mov dword ptr [ebp-1100], 0
mov dword ptr [ebp-1096], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0989
mov dword ptr [ebp-1056], 0
mov dword ptr [ebp-1052], 0
mov dword ptr [ebp-1048], 0
lea eax, [ebp-1056]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-1104]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1104]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+48]
lea eax, [ebp-1104]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
mov dword ptr [ebp-1156], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_098F
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+56]
lea eax, [ebp-1164]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1224], 0
mov dword ptr [ebp-1220], 0
mov dword ptr [ebp-1216], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0995
mov dword ptr [ebp-1176], 0
mov dword ptr [ebp-1172], 0
mov dword ptr [ebp-1168], 0
lea eax, [ebp-1176]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1188], 0
mov dword ptr [ebp-1184], 0
mov dword ptr [ebp-1180], 0
lea eax, [ebp-1188]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1200], 0
mov dword ptr [ebp-1196], 0
mov dword ptr [ebp-1192], 0
lea eax, [ebp-1200]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1212], 0
mov dword ptr [ebp-1208], 0
mov dword ptr [ebp-1204], 0
lea eax, [ebp-1212]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1224]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1224]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+64]
lea eax, [ebp-1224]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1284], 0
mov dword ptr [ebp-1280], 0
mov dword ptr [ebp-1276], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_099B
mov dword ptr [ebp-1236], 0
mov dword ptr [ebp-1232], 0
mov dword ptr [ebp-1228], 0
lea eax, [ebp-1236]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1248], 0
mov dword ptr [ebp-1244], 0
mov dword ptr [ebp-1240], 0
lea eax, [ebp-1248]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1260], 0
mov dword ptr [ebp-1256], 0
mov dword ptr [ebp-1252], 0
lea eax, [ebp-1260]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1272], 0
mov dword ptr [ebp-1268], 0
mov dword ptr [ebp-1264], 0
lea eax, [ebp-1272]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1284]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1284]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+72]
lea eax, [ebp-1284]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1344], 0
mov dword ptr [ebp-1340], 0
mov dword ptr [ebp-1336], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_09A1
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
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fstp qword ptr [_G_DFA+eax+80]
lea eax, [ebp-1344]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1404], 0
mov dword ptr [ebp-1400], 0
mov dword ptr [ebp-1396], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_09A7
mov dword ptr [ebp-1356], 0
mov dword ptr [ebp-1352], 0
mov dword ptr [ebp-1348], 0
lea eax, [ebp-1356]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1368], 0
mov dword ptr [ebp-1364], 0
mov dword ptr [ebp-1360], 0
lea eax, [ebp-1368]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1380], 0
mov dword ptr [ebp-1376], 0
mov dword ptr [ebp-1372], 0
lea eax, [ebp-1380]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1392], 0
mov dword ptr [ebp-1388], 0
mov dword ptr [ebp-1384], 0
lea eax, [ebp-1392]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1404]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1404]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+88]
lea eax, [ebp-1404]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1464], 0
mov dword ptr [ebp-1460], 0
mov dword ptr [ebp-1456], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_09AD
mov dword ptr [ebp-1416], 0
mov dword ptr [ebp-1412], 0
mov dword ptr [ebp-1408], 0
lea eax, [ebp-1416]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1428], 0
mov dword ptr [ebp-1424], 0
mov dword ptr [ebp-1420], 0
lea eax, [ebp-1428]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1440], 0
mov dword ptr [ebp-1436], 0
mov dword ptr [ebp-1432], 0
lea eax, [ebp-1440]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1452], 0
mov dword ptr [ebp-1448], 0
mov dword ptr [ebp-1444], 0
lea eax, [ebp-1452]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1464]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1464]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+96]
lea eax, [ebp-1464]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1524], 0
mov dword ptr [ebp-1520], 0
mov dword ptr [ebp-1516], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_09B3
mov dword ptr [ebp-1476], 0
mov dword ptr [ebp-1472], 0
mov dword ptr [ebp-1468], 0
lea eax, [ebp-1476]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1488], 0
mov dword ptr [ebp-1484], 0
mov dword ptr [ebp-1480], 0
lea eax, [ebp-1488]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-1524]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1524]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+104]
lea eax, [ebp-1524]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1584], 0
mov dword ptr [ebp-1580], 0
mov dword ptr [ebp-1576], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_09B9
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
mov dword ptr [ebp-1572], 0
mov dword ptr [ebp-1568], 0
mov dword ptr [ebp-1564], 0
lea eax, [ebp-1572]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1584]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1584]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+112]
lea eax, [ebp-1584]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1644], 0
mov dword ptr [ebp-1640], 0
mov dword ptr [ebp-1636], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_09BF
mov dword ptr [ebp-1596], 0
mov dword ptr [ebp-1592], 0
mov dword ptr [ebp-1588], 0
lea eax, [ebp-1596]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1608], 0
mov dword ptr [ebp-1604], 0
mov dword ptr [ebp-1600], 0
lea eax, [ebp-1608]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1620], 0
mov dword ptr [ebp-1616], 0
mov dword ptr [ebp-1612], 0
lea eax, [ebp-1620]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1632], 0
mov dword ptr [ebp-1628], 0
mov dword ptr [ebp-1624], 0
lea eax, [ebp-1632]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1644]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1644]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+120]
lea eax, [ebp-1644]
push eax
call _fb_StrDelete@4
push offset _SAVE_TABLE
mov dword ptr [ebp-1704], 0
mov dword ptr [ebp-1700], 0
mov dword ptr [ebp-1696], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_09C5
mov dword ptr [ebp-1656], 0
mov dword ptr [ebp-1652], 0
mov dword ptr [ebp-1648], 0
lea eax, [ebp-1656]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1668], 0
mov dword ptr [ebp-1664], 0
mov dword ptr [ebp-1660], 0
lea eax, [ebp-1668]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1680], 0
mov dword ptr [ebp-1676], 0
mov dword ptr [ebp-1672], 0
lea eax, [ebp-1680]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1692], 0
mov dword ptr [ebp-1688], 0
mov dword ptr [ebp-1684], 0
lea eax, [ebp-1692]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1704]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1704]
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
imul eax, 136
fstp qword ptr [_G_DFA+eax+128]
lea eax, [ebp-1704]
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
.Lt_093E:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_093D:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-324]
cmp eax, ebx
jle .Lt_0940
.Lt_093F:
.Lt_0939:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_0938:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-320]
cmp ebx, eax
jle .Lt_093B
.Lt_093A:
push dword ptr [_Lt_0208+4]
push dword ptr [_Lt_0208]
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
.Lt_08E3:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _MAP_SAVE@4
_MAP_SAVE@4:
push ebp
mov ebp, esp
sub esp, 2020
push ebx
.Lt_09CB:
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
push offset _Lt_0043
push -1
push -1
push offset _MAPNAME_STR
push 13
push offset _Lt_09CE
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
push offset _NAMES_TABLE
push offset _MAPNAME_STR
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
push 0
push 12
push offset _Lt_08E5
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
push offset _NAMES_TABLE
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
push offset _Lt_08EB
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
push offset _NAMES_TABLE
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
push offset _Lt_08ED
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
.Lt_09D9:
mov dword ptr [ebp-8], 1
.Lt_09DD:
push offset _NAMES_TABLE
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
push 0
push -1
mov eax, dword ptr [ebp-4]
imul eax, 3
add eax, dword ptr [ebp-8]
movzx ebx, word ptr [_D_SIA+eax*2]
push ebx
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-488]
push eax
call _fb_StrAssign@20
lea eax, [ebp-488]
push eax
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_08F7
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
lea eax, [ebp-428]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-476]
push eax
call _fb_StrAssign@20
lea eax, [ebp-476]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-488]
push eax
call _fb_StrDelete@4
lea eax, [ebp-476]
push eax
call _fb_StrDelete@4
.Lt_09DB:
inc dword ptr [ebp-8]
.Lt_09DA:
cmp dword ptr [ebp-8], 2
jle .Lt_09DD
.Lt_09DC:
.Lt_09D7:
inc dword ptr [ebp-4]
.Lt_09D6:
cmp dword ptr [ebp-4], 4
jle .Lt_09D9
.Lt_09D8:
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
push offset _NAMES_TABLE
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
push offset _Lt_08FF
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
push offset _NAMES_TABLE
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
push offset _Lt_0901
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
push offset _NAMES_TABLE
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
push offset _Lt_0903
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
push offset _NAMES_TABLE
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
push offset _Lt_0905
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
push offset _NAMES_TABLE
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
push offset _Lt_0907
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
push offset _NAMES_TABLE
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
push offset _Lt_0909
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
push offset _NAMES_TABLE
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
push offset _Lt_090B
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
.Lt_09F6:
mov dword ptr [ebp-4], 1
.Lt_09FA:
push offset _NAMES_TABLE
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
push 0
push -1
mov eax, dword ptr [ebp-8]
imul eax, 3
add eax, dword ptr [ebp-4]
movzx ebx, word ptr [_D_SIA+eax*2]
push ebx
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-488]
push eax
call _fb_StrAssign@20
lea eax, [ebp-488]
push eax
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
mov dword ptr [ebp-468], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_08F7
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
lea eax, [ebp-428]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-476]
push eax
call _fb_StrAssign@20
lea eax, [ebp-476]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-488]
push eax
call _fb_StrDelete@4
lea eax, [ebp-476]
push eax
call _fb_StrDelete@4
.Lt_09F8:
inc dword ptr [ebp-4]
.Lt_09F7:
cmp dword ptr [ebp-4], 2
jle .Lt_09FA
.Lt_09F9:
.Lt_09F4:
inc dword ptr [ebp-8]
.Lt_09F3:
cmp dword ptr [ebp-8], 4
jle .Lt_09F6
.Lt_09F5:
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
mov dword ptr [ebp-420], eax
jmp .Lt_0A02
.Lt_0A05:
mov dword ptr [ebp-8], 1
.Lt_0A09:
push offset _NAMES_TABLE
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
push 0
push -1
mov eax, dword ptr [ebp-4]
sal eax, 1
add eax, dword ptr [ebp-8]
sal eax, 1
add eax, dword ptr [_WIN_SIA]
movzx ebx, word ptr [eax-4]
push ebx
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-492]
push eax
call _fb_StrAssign@20
lea eax, [ebp-492]
push eax
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
mov dword ptr [ebp-472], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 9
push offset _Lt_0923
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
lea eax, [ebp-432]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-480]
push eax
call _fb_StrAssign@20
lea eax, [ebp-480]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-492]
push eax
call _fb_StrDelete@4
lea eax, [ebp-480]
push eax
call _fb_StrDelete@4
.Lt_0A07:
inc dword ptr [ebp-8]
.Lt_0A06:
cmp dword ptr [ebp-8], 2
jle .Lt_0A09
.Lt_0A08:
.Lt_0A03:
inc dword ptr [ebp-4]
.Lt_0A02:
mov eax, dword ptr [ebp-420]
cmp dword ptr [ebp-4], eax
jle .Lt_0A05
.Lt_0A04:
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
.Lt_0A13:
mov dword ptr [ebp-4], 1
.Lt_0A17:
push offset _NAMES_TABLE
mov dword ptr [ebp-464], 0
mov dword ptr [ebp-460], 0
mov dword ptr [ebp-456], 0
push 0
push -1
movsx eax, word ptr [_T_SI]
movzx ebx, word ptr [_L_SIA+eax*2]
push ebx
call __Z7TRIMINTs@4
push eax
push -1
lea eax, [ebp-464]
push eax
call _fb_StrAssign@20
lea eax, [ebp-464]
push eax
mov dword ptr [ebp-452], 0
mov dword ptr [ebp-448], 0
mov dword ptr [ebp-444], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_T_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 7
push offset _Lt_0931
mov dword ptr [ebp-428], 0
mov dword ptr [ebp-424], 0
mov dword ptr [ebp-420], 0
lea eax, [ebp-428]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
lea eax, [ebp-440]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-452]
push eax
call _fb_StrAssign@20
lea eax, [ebp-452]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-464]
push eax
call _fb_StrDelete@4
lea eax, [ebp-452]
push eax
call _fb_StrDelete@4
.Lt_0A15:
inc dword ptr [ebp-4]
.Lt_0A14:
cmp dword ptr [ebp-4], 2
jle .Lt_0A17
.Lt_0A16:
.Lt_0A11:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0A10:
movsx eax, word ptr [_T_SI]
cmp eax, 64
jle .Lt_0A13
.Lt_0A12:
push offset _NAMES_TABLE
push offset _CTRL_STR
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
push 0
push 9
push offset _Lt_0935
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
mov word ptr [ebp-420], ax
jmp .Lt_0A1E
.Lt_0A21:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-424], ax
jmp .Lt_0A23
.Lt_0A26:
push offset _NAMES_TABLE
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0941
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
lea eax, [ebp-484]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0947
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
mov dword ptr [ebp-488], 0
lea eax, [ebp-496]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-544]
push eax
call _fb_StrAssign@20
lea eax, [ebp-544]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-544]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-616], 0
mov dword ptr [ebp-612], 0
mov dword ptr [ebp-608], 0
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
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-616]
push eax
call _fb_StrAssign@20
lea eax, [ebp-616]
push eax
mov dword ptr [ebp-604], 0
mov dword ptr [ebp-600], 0
mov dword ptr [ebp-596], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_094D
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
mov dword ptr [ebp-548], 0
lea eax, [ebp-556]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
lea eax, [ebp-568]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-580], 0
mov dword ptr [ebp-576], 0
mov dword ptr [ebp-572], 0
lea eax, [ebp-580]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-592], 0
mov dword ptr [ebp-588], 0
mov dword ptr [ebp-584], 0
lea eax, [ebp-592]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-604]
push eax
call _fb_StrAssign@20
lea eax, [ebp-604]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-616]
push eax
call _fb_StrDelete@4
lea eax, [ebp-604]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0953
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
mov dword ptr [ebp-652], 0
mov dword ptr [ebp-648], 0
mov dword ptr [ebp-644], 0
lea eax, [ebp-652]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-664], 0
mov dword ptr [ebp-660], 0
mov dword ptr [ebp-656], 0
lea eax, [ebp-664]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-676]
push eax
call _fb_StrAssign@20
lea eax, [ebp-676]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-676]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
mov dword ptr [ebp-736], 0
mov dword ptr [ebp-732], 0
mov dword ptr [ebp-728], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 18
push offset _Lt_0959
mov dword ptr [ebp-688], 0
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
lea eax, [ebp-688]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-700], 0
mov dword ptr [ebp-696], 0
mov dword ptr [ebp-692], 0
lea eax, [ebp-700]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-736]
push eax
call _fb_StrAssign@20
lea eax, [ebp-736]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-736]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 108
lea ebx, [_E_STRA+eax+60]
push ebx
mov dword ptr [ebp-796], 0
mov dword ptr [ebp-792], 0
mov dword ptr [ebp-788], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 16
push offset _Lt_095F
mov dword ptr [ebp-748], 0
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
lea eax, [ebp-748]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-760], 0
mov dword ptr [ebp-756], 0
mov dword ptr [ebp-752], 0
lea eax, [ebp-760]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-772], 0
mov dword ptr [ebp-768], 0
mov dword ptr [ebp-764], 0
lea eax, [ebp-772]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-784], 0
mov dword ptr [ebp-780], 0
mov dword ptr [ebp-776], 0
lea eax, [ebp-784]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-796]
push eax
call _fb_StrAssign@20
lea eax, [ebp-796]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-796]
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
push offset _NAMES_TABLE
mov dword ptr [ebp-868], 0
mov dword ptr [ebp-864], 0
mov dword ptr [ebp-860], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+4]
push dword ptr [_G_DFA+eax]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-868]
push eax
call _fb_StrAssign@20
lea eax, [ebp-868]
push eax
mov dword ptr [ebp-856], 0
mov dword ptr [ebp-852], 0
mov dword ptr [ebp-848], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0965
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
mov dword ptr [ebp-844], 0
mov dword ptr [ebp-840], 0
mov dword ptr [ebp-836], 0
lea eax, [ebp-844]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-856]
push eax
call _fb_StrAssign@20
lea eax, [ebp-856]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-868]
push eax
call _fb_StrDelete@4
lea eax, [ebp-856]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-940], 0
mov dword ptr [ebp-936], 0
mov dword ptr [ebp-932], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+12]
push dword ptr [_G_DFA+eax+8]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-940]
push eax
call _fb_StrAssign@20
lea eax, [ebp-940]
push eax
mov dword ptr [ebp-928], 0
mov dword ptr [ebp-924], 0
mov dword ptr [ebp-920], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_096B
mov dword ptr [ebp-880], 0
mov dword ptr [ebp-876], 0
mov dword ptr [ebp-872], 0
lea eax, [ebp-880]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-892], 0
mov dword ptr [ebp-888], 0
mov dword ptr [ebp-884], 0
lea eax, [ebp-892]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-904], 0
mov dword ptr [ebp-900], 0
mov dword ptr [ebp-896], 0
lea eax, [ebp-904]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-916], 0
mov dword ptr [ebp-912], 0
mov dword ptr [ebp-908], 0
lea eax, [ebp-916]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-928]
push eax
call _fb_StrAssign@20
lea eax, [ebp-928]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-940]
push eax
call _fb_StrDelete@4
lea eax, [ebp-928]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1012], 0
mov dword ptr [ebp-1008], 0
mov dword ptr [ebp-1004], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+20]
push dword ptr [_G_DFA+eax+16]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1012]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1012]
push eax
mov dword ptr [ebp-1000], 0
mov dword ptr [ebp-996], 0
mov dword ptr [ebp-992], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0971
mov dword ptr [ebp-952], 0
mov dword ptr [ebp-948], 0
mov dword ptr [ebp-944], 0
lea eax, [ebp-952]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-964], 0
mov dword ptr [ebp-960], 0
mov dword ptr [ebp-956], 0
lea eax, [ebp-964]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-976], 0
mov dword ptr [ebp-972], 0
mov dword ptr [ebp-968], 0
lea eax, [ebp-976]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-988], 0
mov dword ptr [ebp-984], 0
mov dword ptr [ebp-980], 0
lea eax, [ebp-988]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1000]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1000]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1012]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1000]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1084], 0
mov dword ptr [ebp-1080], 0
mov dword ptr [ebp-1076], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+28]
push dword ptr [_G_DFA+eax+24]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1084]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1084]
push eax
mov dword ptr [ebp-1072], 0
mov dword ptr [ebp-1068], 0
mov dword ptr [ebp-1064], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0977
mov dword ptr [ebp-1024], 0
mov dword ptr [ebp-1020], 0
mov dword ptr [ebp-1016], 0
lea eax, [ebp-1024]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1036], 0
mov dword ptr [ebp-1032], 0
mov dword ptr [ebp-1028], 0
lea eax, [ebp-1036]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1048], 0
mov dword ptr [ebp-1044], 0
mov dword ptr [ebp-1040], 0
lea eax, [ebp-1048]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1060], 0
mov dword ptr [ebp-1056], 0
mov dword ptr [ebp-1052], 0
lea eax, [ebp-1060]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1072]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1072]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1084]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1072]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1156], 0
mov dword ptr [ebp-1152], 0
mov dword ptr [ebp-1148], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+36]
push dword ptr [_G_DFA+eax+32]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1156]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1156]
push eax
mov dword ptr [ebp-1144], 0
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_097D
mov dword ptr [ebp-1096], 0
mov dword ptr [ebp-1092], 0
mov dword ptr [ebp-1088], 0
lea eax, [ebp-1096]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1108], 0
mov dword ptr [ebp-1104], 0
mov dword ptr [ebp-1100], 0
lea eax, [ebp-1108]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1120], 0
mov dword ptr [ebp-1116], 0
mov dword ptr [ebp-1112], 0
lea eax, [ebp-1120]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
lea eax, [ebp-1132]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1144]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1144]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1156]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1144]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1228], 0
mov dword ptr [ebp-1224], 0
mov dword ptr [ebp-1220], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+44]
push dword ptr [_G_DFA+eax+40]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1228]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1228]
push eax
mov dword ptr [ebp-1216], 0
mov dword ptr [ebp-1212], 0
mov dword ptr [ebp-1208], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0983
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
push -1
lea eax, [ebp-1216]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1216]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1228]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1216]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1300], 0
mov dword ptr [ebp-1296], 0
mov dword ptr [ebp-1292], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1300]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1300]
push eax
mov dword ptr [ebp-1288], 0
mov dword ptr [ebp-1284], 0
mov dword ptr [ebp-1280], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0989
mov dword ptr [ebp-1240], 0
mov dword ptr [ebp-1236], 0
mov dword ptr [ebp-1232], 0
lea eax, [ebp-1240]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1252], 0
mov dword ptr [ebp-1248], 0
mov dword ptr [ebp-1244], 0
lea eax, [ebp-1252]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1264], 0
mov dword ptr [ebp-1260], 0
mov dword ptr [ebp-1256], 0
lea eax, [ebp-1264]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1276], 0
mov dword ptr [ebp-1272], 0
mov dword ptr [ebp-1268], 0
lea eax, [ebp-1276]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1288]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1288]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1300]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1288]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1372], 0
mov dword ptr [ebp-1368], 0
mov dword ptr [ebp-1364], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+60]
push dword ptr [_G_DFA+eax+56]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1372]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1372]
push eax
mov dword ptr [ebp-1360], 0
mov dword ptr [ebp-1356], 0
mov dword ptr [ebp-1352], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_098F
mov dword ptr [ebp-1312], 0
mov dword ptr [ebp-1308], 0
mov dword ptr [ebp-1304], 0
lea eax, [ebp-1312]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1324], 0
mov dword ptr [ebp-1320], 0
mov dword ptr [ebp-1316], 0
lea eax, [ebp-1324]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1336], 0
mov dword ptr [ebp-1332], 0
mov dword ptr [ebp-1328], 0
lea eax, [ebp-1336]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1348], 0
mov dword ptr [ebp-1344], 0
mov dword ptr [ebp-1340], 0
lea eax, [ebp-1348]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1360]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1360]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1372]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1360]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1444], 0
mov dword ptr [ebp-1440], 0
mov dword ptr [ebp-1436], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+68]
push dword ptr [_G_DFA+eax+64]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1444]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1444]
push eax
mov dword ptr [ebp-1432], 0
mov dword ptr [ebp-1428], 0
mov dword ptr [ebp-1424], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0995
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
mov dword ptr [ebp-1420], 0
mov dword ptr [ebp-1416], 0
mov dword ptr [ebp-1412], 0
lea eax, [ebp-1420]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1432]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1432]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1444]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1432]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1516], 0
mov dword ptr [ebp-1512], 0
mov dword ptr [ebp-1508], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+76]
push dword ptr [_G_DFA+eax+72]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1516]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1516]
push eax
mov dword ptr [ebp-1504], 0
mov dword ptr [ebp-1500], 0
mov dword ptr [ebp-1496], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_099B
mov dword ptr [ebp-1456], 0
mov dword ptr [ebp-1452], 0
mov dword ptr [ebp-1448], 0
lea eax, [ebp-1456]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1468], 0
mov dword ptr [ebp-1464], 0
mov dword ptr [ebp-1460], 0
lea eax, [ebp-1468]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1480], 0
mov dword ptr [ebp-1476], 0
mov dword ptr [ebp-1472], 0
lea eax, [ebp-1480]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1492], 0
mov dword ptr [ebp-1488], 0
mov dword ptr [ebp-1484], 0
lea eax, [ebp-1492]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1504]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1504]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1516]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1504]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
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
imul eax, 136
push dword ptr [_G_DFA+eax+84]
push dword ptr [_G_DFA+eax+80]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1588]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1588]
push eax
mov dword ptr [ebp-1576], 0
mov dword ptr [ebp-1572], 0
mov dword ptr [ebp-1568], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_09A1
mov dword ptr [ebp-1528], 0
mov dword ptr [ebp-1524], 0
mov dword ptr [ebp-1520], 0
lea eax, [ebp-1528]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1540], 0
mov dword ptr [ebp-1536], 0
mov dword ptr [ebp-1532], 0
lea eax, [ebp-1540]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1552], 0
mov dword ptr [ebp-1548], 0
mov dword ptr [ebp-1544], 0
lea eax, [ebp-1552]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1564], 0
mov dword ptr [ebp-1560], 0
mov dword ptr [ebp-1556], 0
lea eax, [ebp-1564]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1576]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1576]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1588]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1576]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1660], 0
mov dword ptr [ebp-1656], 0
mov dword ptr [ebp-1652], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+92]
push dword ptr [_G_DFA+eax+88]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1660]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1660]
push eax
mov dword ptr [ebp-1648], 0
mov dword ptr [ebp-1644], 0
mov dword ptr [ebp-1640], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_09A7
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
lea eax, [ebp-1660]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1648]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1732], 0
mov dword ptr [ebp-1728], 0
mov dword ptr [ebp-1724], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+100]
push dword ptr [_G_DFA+eax+96]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1732]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1732]
push eax
mov dword ptr [ebp-1720], 0
mov dword ptr [ebp-1716], 0
mov dword ptr [ebp-1712], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_09AD
mov dword ptr [ebp-1672], 0
mov dword ptr [ebp-1668], 0
mov dword ptr [ebp-1664], 0
lea eax, [ebp-1672]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1684], 0
mov dword ptr [ebp-1680], 0
mov dword ptr [ebp-1676], 0
lea eax, [ebp-1684]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1696], 0
mov dword ptr [ebp-1692], 0
mov dword ptr [ebp-1688], 0
lea eax, [ebp-1696]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1708], 0
mov dword ptr [ebp-1704], 0
mov dword ptr [ebp-1700], 0
lea eax, [ebp-1708]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1720]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1720]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1732]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1720]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1804], 0
mov dword ptr [ebp-1800], 0
mov dword ptr [ebp-1796], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+108]
push dword ptr [_G_DFA+eax+104]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1804]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1804]
push eax
mov dword ptr [ebp-1792], 0
mov dword ptr [ebp-1788], 0
mov dword ptr [ebp-1784], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_09B3
mov dword ptr [ebp-1744], 0
mov dword ptr [ebp-1740], 0
mov dword ptr [ebp-1736], 0
lea eax, [ebp-1744]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-1792]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1792]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1804]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1792]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1876], 0
mov dword ptr [ebp-1872], 0
mov dword ptr [ebp-1868], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+116]
push dword ptr [_G_DFA+eax+112]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1876]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1876]
push eax
mov dword ptr [ebp-1864], 0
mov dword ptr [ebp-1860], 0
mov dword ptr [ebp-1856], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_09B9
mov dword ptr [ebp-1816], 0
mov dword ptr [ebp-1812], 0
mov dword ptr [ebp-1808], 0
lea eax, [ebp-1816]
push eax
call _fb_StrConcat@20
push eax
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
push -1
lea eax, [ebp-1864]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1864]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1876]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1864]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-1948], 0
mov dword ptr [ebp-1944], 0
mov dword ptr [ebp-1940], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+124]
push dword ptr [_G_DFA+eax+120]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-1948]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1948]
push eax
mov dword ptr [ebp-1936], 0
mov dword ptr [ebp-1932], 0
mov dword ptr [ebp-1928], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_09BF
mov dword ptr [ebp-1888], 0
mov dword ptr [ebp-1884], 0
mov dword ptr [ebp-1880], 0
lea eax, [ebp-1888]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1900], 0
mov dword ptr [ebp-1896], 0
mov dword ptr [ebp-1892], 0
lea eax, [ebp-1900]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1912], 0
mov dword ptr [ebp-1908], 0
mov dword ptr [ebp-1904], 0
lea eax, [ebp-1912]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1924], 0
mov dword ptr [ebp-1920], 0
mov dword ptr [ebp-1916], 0
lea eax, [ebp-1924]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-1936]
push eax
call _fb_StrAssign@20
lea eax, [ebp-1936]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-1948]
push eax
call _fb_StrDelete@4
lea eax, [ebp-1936]
push eax
call _fb_StrDelete@4
push offset _NAMES_TABLE
mov dword ptr [ebp-2020], 0
mov dword ptr [ebp-2016], 0
mov dword ptr [ebp-2012], 0
push 0
push -1
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_G_DFA+eax+132]
push dword ptr [_G_DFA+eax+128]
call __Z7TRIMINTd@8
push eax
push -1
lea eax, [ebp-2020]
push eax
call _fb_StrAssign@20
lea eax, [ebp-2020]
push eax
mov dword ptr [ebp-2008], 0
mov dword ptr [ebp-2004], 0
mov dword ptr [ebp-2000], 0
push 0
push -1
push 2
push offset _Lt_08F9
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08F8
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_09C5
mov dword ptr [ebp-1960], 0
mov dword ptr [ebp-1956], 0
mov dword ptr [ebp-1952], 0
lea eax, [ebp-1960]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1972], 0
mov dword ptr [ebp-1968], 0
mov dword ptr [ebp-1964], 0
lea eax, [ebp-1972]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1984], 0
mov dword ptr [ebp-1980], 0
mov dword ptr [ebp-1976], 0
lea eax, [ebp-1984]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-1996], 0
mov dword ptr [ebp-1992], 0
mov dword ptr [ebp-1988], 0
lea eax, [ebp-1996]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-2008]
push eax
call _fb_StrAssign@20
lea eax, [ebp-2008]
push eax
call _NAMES_PUSH@12
lea eax, [ebp-2020]
push eax
call _fb_StrDelete@4
lea eax, [ebp-2008]
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
.Lt_0A24:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_0A23:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-424]
cmp eax, ebx
jle .Lt_0A26
.Lt_0A25:
.Lt_0A1F:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_0A1E:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-420]
cmp ebx, eax
jle .Lt_0A21
.Lt_0A20:
push dword ptr [_Lt_0208+4]
push dword ptr [_Lt_0208]
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
.Lt_09CC:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SAVEGAME_SAVE@8
_SAVEGAME_SAVE@8:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0AAC:
push dword ptr [ebp+12]
call _MAP_SAVE@4
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_0AAF
push -1
push -1
push dword ptr [ebp+8]
push 8
push offset _Lt_0AAE
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
.Lt_0AAD:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SAVEGAME_LOAD@8
_SAVEGAME_LOAD@8:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0AB3:
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_0AAF
push -1
push -1
push dword ptr [ebp+8]
push 8
push offset _Lt_0AAE
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
.Lt_0AB4:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _COMPARE_KEY@12
_COMPARE_KEY@12:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0AB8:
mov dword ptr [ebp-8], -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
push dword ptr [ebp+8]
fstp qword ptr [ebp-16]
call _fb_CVL@4
push eax
fild dword ptr [esp]
add esp, 4
fld qword ptr [ebp-16]
fcompp
fnstsw ax
test ah, 0b01000000
setnz al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-8], eax
jne .Lt_0ABC
.Lt_0ABD:
mov dword ptr [ebp-4], -1
jmp .Lt_0ABA
.Lt_0ABC:
mov dword ptr [ebp-4], 0
.Lt_0ABE:
.Lt_0ABA:
.Lt_0AB9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _main
_main:
push ebp
mov ebp, esp
and esp, 0xFFFFFFF0
sub esp, 12
mov dword ptr [ebp-4], 0
call ___main
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_Init@12
push offset _.Lt_0057
call _fb_DataRestore@4
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
push 0
push 0
push 16
push 32
push 480
push 640
call _fb_GfxScreenRes@24
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
call _LN_ROE@0
push 0
call _fb_End@4
.Lt_0003:
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
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
.Lt_0047:
.Lt_0048:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10NAMES_TYPEaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_0049:
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
.Lt_004A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10NAMES_TYPED1Ev:
push ebp
mov ebp, esp
push ebx
.Lt_004D:
.Lt_004E:
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
.Lt_0AC2:
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
.Lt_0AC3:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
__ZN6BASE643B64E:
.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\0"
.balign 4
_Lt_0027:	.ascii	"=\0"
.balign 4
_Lt_0043:	.ascii	"\"\0"
.balign 4
_Lt_0045:	.ascii	",\0"

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

.globl _MAPID_STR
.balign 4
	.comm	_MAPID_STR,12

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
_Lt_0054:
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
_.Lt_0057:
.short 1
.int _Lt_0059
.short 1
.int _Lt_0059
.short -1
.int _.Lt_005B
.balign 4
_Lt_0059:	.ascii	"1\0"
.balign 4
_.Lt_005B:
.short 1
.int _Lt_0059
.short 1
.int _Lt_005D
.short -1
.int _.Lt_005F
.balign 4
_Lt_005D:	.ascii	"4\0"
.balign 4
_.Lt_005F:
.short 1
.int _Lt_0059
.short 1
.int _Lt_0061
.short -1
.int _.Lt_0063
.balign 4
_Lt_0061:	.ascii	"8\0"
.balign 4
_.Lt_0063:
.short 1
.int _Lt_0059
.short 2
.int _Lt_0065
.short -1
.int _.Lt_0067
.balign 4
_Lt_0065:	.ascii	"12\0"
.balign 4
_.Lt_0067:
.short 1
.int _Lt_0059
.short 2
.int _Lt_0069
.short -1
.long 0
.balign 4
_Lt_0069:	.ascii	"16\0"
.balign 4
_Lt_006C:	.ascii	".\\gameart\\fonts\\\0"
.balign 4
_Lt_006D:	.ascii	".\\gameart\\logos\\\0"
.balign 4
_Lt_006E:	.ascii	".\\gameart\\sprites\\\0"
.balign 4
_Lt_006F:	.ascii	".\\gamedata\\\0"
.balign 4
_Lt_0070:	.ascii	".\\gamedata\\maps\\\0"
.balign 4
_Lt_0071:	.ascii	".\\fonts\\mishap22.font.png\0"
.balign 4
_Lt_0073:	.ascii	".\\fonts\\roe00.font.png\0"
.balign 4
_Lt_0075:	.ascii	".\\gameart\\logos\\roe.splash.png\0"
.balign 4
_Lt_0077:	.ascii	"[(F1)Save|(F2)Load|(F3)Shop]\0"
.balign 4
_Lt_0080:	.ascii	"t\0"
.balign 4
_Lt_0086:	.ascii	"Title\0"
.balign 4
_Lt_0095:	.ascii	"L ||\0"
.balign 4
_Lt_0096:	.ascii	" \0"
.balign 4
_Lt_009A:	.ascii	"L||\0"
.balign 4
_Lt_00AA:	.ascii	".\\gamedata\\Bundle.dat\0"
.balign 4
_Lt_00AB:	.ascii	"Help\0"
.balign 4
_Lt_00AD:	.ascii	"Map\0"
.balign 4
_Lt_00AF:	.ascii	"Levels\0"
.balign 4
_Lt_00B1:	.ascii	"Input\0"
.balign 4
_Lt_00B3:	.ascii	"Palette\0"
.balign 4
_Lt_00B5:	.ascii	".\\dat\\Names.dat\0"
.balign 4
_Lt_00B7:	.ascii	".\\dat\\Levels.dat\0"
.balign 4
_Lt_00B9:	.ascii	"levels/count\0"
.balign 4
_Lt_00C0:	.ascii	"levels/\0"
.balign 4
_Lt_00C6:	.ascii	"map/name\0"
.balign 4
_Lt_00C8:	.ascii	"map/id\0"
.balign 4
_Lt_00CA:	.ascii	"map/AA\0"
.balign 4
_Lt_00CC:	.ascii	"map/DD\0"
.balign 4
_Lt_00DE:	.ascii	"pndximp_\0"
.balign 4
_Lt_00E1:	.ascii	"dust\0"
.balign 4
_Lt_00E7:	.ascii	"map/row/bg\0"
.balign 4
_Lt_00EA:	.ascii	"map/row/fg\0"
.balign 4
_Lt_00ED:	.ascii	"map/row/rg\0"
.balign 4
_Lt_00F5:	.ascii	"____\0"
.balign 4
_Lt_00F6:	.ascii	"________\0"
.balign 4
_Lt_00FB:	.ascii	"spdr\0"
.balign 4
_Lt_00FD:	.ascii	"Spider\0"
.balign 4
_Lt_00FE:	.ascii	"movebiteweb_\0"
.balign 4
_Lt_0101:	.ascii	"0001\0"
.balign 4
_Lt_0105:	.ascii	"vnom\0"
.balign 4
_Lt_0107:	.ascii	"wall\0"
.balign 4
_Lt_010A:	.ascii	"web_\0"
.balign 4
_Lt_010C:	.ascii	"Web\0"
.balign 4
_Lt_010E:	.ascii	"grml\0"
.balign 4
_Lt_0110:	.ascii	"Gremlin\0"
.balign 4
_Lt_0111:	.ascii	"movebitepnch\0"
.balign 4
_Lt_0114:	.ascii	"dggr\0"
.balign 4
_Lt_0116:	.ascii	"pndx\0"
.balign 4
_Lt_0118:	.ascii	"Poindexter\0"
.balign 4
_Lt_0119:	.ascii	"wstf\0"
.balign 4
_Lt_011B:	.ascii	"dtby\0"
.balign 4
_Lt_011D:	.ascii	"Dust Bunny\0"
.balign 4
_Lt_011E:	.ascii	"movebitekickdtbydust\0"
.balign 4
_Lt_0120:	.ascii	"shkt\0"
.balign 4
_Lt_0122:	.ascii	"Shiny Knight\0"
.balign 4
_Lt_0123:	.ascii	"movepnchdggr\0"
.balign 4
_Lt_0125:	.ascii	"emgd\0"
.balign 4
_Lt_0127:	.ascii	"Emerald Guard\0"
.balign 4
_Lt_012C:	.ascii	"pike\0"
.balign 4
_Lt_012E:	.ascii	"door\0"
.balign 4
_Lt_0130:	.ascii	"Door\0"
.balign 4
_Lt_0134:	.ascii	"loc1\0"
.balign 4
_Lt_0137:	.ascii	"loc2\0"
.balign 4
_Lt_013A:	.ascii	"loc3\0"
.balign 4
_Lt_013C:	.ascii	"imp_\0"
.balign 4
_Lt_013E:	.ascii	"Little Imp\0"
.balign 4
_Lt_013F:	.ascii	"movewingfire\0"
.balign 4
_Lt_0142:	.ascii	"Merchant\0"
.balign 4
_Lt_0143:	.ascii	"dggrgrplseed\0"
.balign 4
_Lt_0148:	.ascii	"chst\0"
.balign 4
_Lt_014A:	.ascii	"Treasure chest\0"
.balign 4
_Lt_014D:	.ascii	"key1\0"
.balign 4
_Lt_014E:	.ascii	"key2\0"
.balign 4
_Lt_0150:	.ascii	"bldr\0"
.balign 4
_Lt_0152:	.ascii	"Big boulder\0"
.balign 8
_Lt_0153:	.quad	0x4000000000000000
.balign 4
_Lt_0154:	.long	0x40200000
.balign 4
_Lt_0155:	.long	0x3F800000
.balign 8
_Lt_0156:	.quad	0x3FF0000000000000
.balign 4
_Lt_0157:	.long	0x41200000
.balign 4
_Lt_0158:	.long	0x41A00000
.balign 4
_Lt_0159:	.long	0x40A00000
.balign 4
_Lt_015A:	.long	0x43BE0000
.balign 4
_Lt_015B:	.long	0x40400000
.balign 4
_Lt_015C:	.long	0x40000000
.balign 4
_Lt_015D:	.long	0x42200000
.balign 4
_Lt_015E:	.long	0x42480000
.balign 8
_Lt_015F:	.quad	0x3FC999999999999A
.balign 4
_Lt_0160:	.long	0x41C80000
.balign 4
_Lt_0161:	.long	0x42B40000
.balign 4
_Lt_0162:	.long	0x41F00000
.balign 4
_Lt_0163:	.long	0x00000000
.balign 4
_Lt_0164:	.long	0x41700000
.balign 4
_Lt_0165:	.long	0x3DCCCCCD
.balign 4
_Lt_0166:	.long	0x3D8F5C29
.balign 4
_Lt_0167:	.long	0x3F99999A
.balign 4
_Lt_0168:	.long	0x438C0000
.balign 4
_Lt_0169:	.long	0x42340000
.balign 4
_Lt_016A:	.long	0x42DC0000
.balign 4
_Lt_016B:	.long	0x40800000
.balign 4
_Lt_016C:	.long	0x41880000
.balign 4
_Lt_016D:	.long	0x41400000
.balign 4
_Lt_016E:	.long	0x3DF5C28F
.balign 8
_Lt_016F:	.quad	0x3FB999999999999A
.balign 8
_Lt_0170:	.quad	0x3FD999999999999A
.balign 4
_Lt_0171:	.long	0x430C0000
.balign 4
_Lt_0172:	.long	0x3E4CCCCD
.balign 4
_Lt_0173:	.long	0x41C00000
.balign 4
_Lt_0174:	.long	0x3E99999A
.balign 4
_Lt_0175:	.long	0x42C80000
.balign 4
_Lt_0176:	.long	0x447A0000
.balign 4
_Lt_0180:	.ascii	"Puzzlum : Realm of Existence\0"
.balign 4
_Lt_0181:	.ascii	"Build: puzzlum-fbc068.200908170813\0"
.balign 4
_Lt_0182:	.ascii	"Created 1989-2009 Timothy Robert Keal\0"
.balign 4
_Lt_0183:	.ascii	"Released under Gnu Public License 2.0\0"
.balign 4
_Lt_0184:	.ascii	"http://www.gnu.org/copyleft/gpl.html\0"
.balign 4
_Lt_0185:	.ascii	"http://puzzlum.retromachineshop.com/\0"
.balign 4
_Lt_0186:	.ascii	"irc://chat.freenode.net/puzzlum\0"
.balign 4
_Lt_0187:	.ascii	"mailto:jargon@juno.com\0"
.balign 4
_Lt_0188:	.ascii	" (H)elp\0"
.balign 4
_Lt_0189:	.ascii	" (C)ontinue\0"
.balign 4
_Lt_018A:	.ascii	" (R)estart\0"
.balign 4
_Lt_018B:	.ascii	" (Q)uit\0"
.balign 4
_Lt_018C:	.ascii	"Restart\0"
.balign 4
_Lt_0191:	.ascii	"Quit\0"
.balign 4
_Lt_019A:	.ascii	"Continue\0"
.balign 4
_Lt_01AF:	.ascii	"\376 page start\0"
.balign 4
_Lt_01B2:	.ascii	"\376 page end\0"
.balign 4
_Lt_01B5:	.ascii	" (T)itle\0"
.balign 4
_Lt_01BF:	.ascii	"\376 end\0"
.balign 4
_Lt_01C2:	.ascii	"\376 COLOR\0"
.balign 4
_Lt_01DD:	.ascii	"zzzz\0"
.balign 4
_Lt_01F3:	.ascii	"fire\0"
.balign 4
_Lt_01F8:	.ascii	"ccts\0"
.balign 8
_Lt_0208:	.quad	0x0000000000000000
.balign 4
_Lt_0213:	.ascii	"0002\0"
.balign 4
_Lt_021A:	.ascii	"&HFF3B\0"
.balign 4
_Lt_021D:	.ascii	"&HFF3C\0"
.balign 4
_Lt_0221:	.ascii	"Shop\0"
.balign 4
_Lt_0226:	.ascii	"L\0"
.balign 4
_Lt_0229:	.ascii	"&H20\0"
.balign 4
_Lt_022C:	.ascii	"&HFF48\0"
.balign 4
_Lt_022F:	.ascii	"&HFF4D\0"
.balign 4
_Lt_0232:	.ascii	"&HFF50\0"
.balign 4
_Lt_0235:	.ascii	"&HFF4B\0"
.balign 4
_Lt_024B:	.ascii	"||\0"
.balign 4
_Lt_0259:	.ascii	"&HFF47\0"
.balign 4
_Lt_025C:	.ascii	"&HFF4F\0"
.balign 4
_Lt_025F:	.ascii	"&HFF49\0"
.balign 4
_Lt_0264:	.ascii	"&HFF51\0"
.balign 8
_Lt_027C:	.quad	0x4008000000000000
.balign 8
_Lt_027D:	.quad	0x4010000000000000
.balign 8
_Lt_027F:	.quad	0x4014000000000000
.balign 8
_Lt_0282:	.quad	0xC008000000000000
.balign 4
_Lt_02C3:	.ascii	"bite\0"
.balign 4
_Lt_02C6:	.ascii	"pnch\0"
.balign 4
_Lt_02C9:	.ascii	"kick\0"
.balign 4
_Lt_02D2:	.ascii	"cure\0"
.balign 8
_Lt_02E8:	.quad	0x4018000000000000
.balign 8
_Lt_02E9:	.quad	0x4020000000000000
.balign 8
_Lt_02EE:	.quad	0x401C000000000000
.balign 8
_Lt_02F1:	.quad	0x4024000000000000
.balign 8
_Lt_02F6:	.quad	0x4028000000000000
.balign 4
_Lt_02F9:	.ascii	"burn\0"
.balign 8
_Lt_02FC:	.quad	0x402E000000000000
.balign 8
_Lt_02FF:	.quad	0x4034000000000000
.balign 4
_Lt_0304:	.ascii	"tngl\0"
.balign 4
_Lt_0307:	.ascii	"lash\0"
.balign 8
_Lt_0314:	.quad	0xC020000000000000
.balign 4
_Lt_031B:	.ascii	"slep\0"
.balign 8
_Lt_0324:	.quad	0xC02E000000000000
.balign 4
_Lt_0327:	.ascii	"pouch\0"
.balign 4
_Lt_0328:	.ascii	"pwch\0"
.balign 4
_Lt_0329:	.long	0x47C34F80
.balign 4
_Lt_0331:	.ascii	"lvup\0"
.balign 4
_Lt_0338:	.ascii	"ispt\0"
.balign 4
_Lt_033F:	.ascii	"move\0"
.balign 4
_Lt_0362:	.ascii	"cncl\0"
.balign 4
_Lt_036C:	.ascii	"\372\0"
.balign 4
_Lt_036D:	.ascii	"-\0"
.balign 4
_Lt_036E:	.ascii	"----\0"
.balign 4
_Lt_036F:	.ascii	"$\0"
.balign 4
_Lt_039E:	.ascii	"grpl\0"
.balign 4
_Lt_03A3:	.ascii	"seed\0"
.balign 4
_Lt_03AF:	.ascii	"Wha'du like?\0"
.balign 4
_Lt_03B3:	.ascii	"____.24\0"
.balign 4
_Lt_03E2:	.ascii	"bye_\0"
.balign 4
_Lt_03E5:	.ascii	"Poindexter:\0"
.balign 4
_Lt_03E7:	.ascii	"Hi. How are you. My\0"
.balign 4
_Lt_03E9:	.ascii	"name is Poindexter. I\0"
.balign 4
_Lt_03EB:	.ascii	"am the greatest thief\0"
.balign 4
_Lt_03ED:	.ascii	"in the entire world!!!\0"
.balign 4
_Lt_03FA:	.ascii	" =\0"
.balign 4
_Lt_0415:	.ascii	"gained\0"
.balign 4
_Lt_041F:	.ascii	"      level up!\0"
.balign 4
_Lt_0421:	.ascii	"HPmax +\0"
.balign 4
_Lt_0425:	.ascii	"STRmax +\0"
.balign 4
_Lt_0429:	.ascii	"ESSmax +\0"
.balign 4
_Lt_042D:	.ascii	"STRspd up!\0"
.balign 4
_Lt_042F:	.ascii	"ESSspd up!\0"
.balign 4
_Lt_0435:	.ascii	"reached LV!\0"
.balign 4
_Lt_043B:	.ascii	"next:\0"
.balign 4
_Lt_0446:	.long	0x43470000
.balign 4
_Lt_0447:	.long	0x439F8000
.balign 4
_Lt_0448:	.long	0x43400000
.balign 8
_Lt_0449:	.quad	0x4050000000000000
.balign 4
_Lt_0458:	.ascii	"from\0"
.balign 4
_Lt_045A:	.ascii	"!\0"
.balign 4
_Lt_0463:	.ascii	"used\0"
.balign 4
_Lt_0465:	.ascii	"on\0"
.balign 4
_Lt_046E:	.ascii	"HP -\0"
.balign 4
_Lt_0472:	.ascii	"STR-\0"
.balign 4
_Lt_047C:	.ascii	"pillaged\0"
.balign 4
_Lt_047E:	.ascii	"EXP+\0"
.balign 4
_Lt_0483:	.ascii	"EXP:\0"
.balign 4
_Lt_0488:	.ascii	"STR+\0"
.balign 4
_Lt_048C:	.ascii	"STR:\0"
.balign 4
_Lt_04B8:	.ascii	".24\0"
.balign 4
_Lt_04D8:	.ascii	"zzzz____.24\0"
.balign 4
_Lt_04E4:	.ascii	"rapl\0"
.balign 8
_Lt_04F7:	.quad	0xBFF0000000000000
.balign 4
_Lt_04F8:	.long	0x41000000
.balign 4
_Lt_04F9:	.long	0xBF800000
.balign 4
_Lt_04FF:	.ascii	"A RetroMachineShop Featured Project!\0"
.balign 4
_Lt_0507:	.long	0x41600000
.balign 4
_Lt_0508:	.long	0x41B80000
.balign 4
_Lt_050B:	.ascii	"LV\0"
.balign 4
_Lt_050E:	.ascii	"     \0"
.balign 4
_Lt_0513:	.ascii	"HP\0"
.balign 4
_Lt_0516:	.ascii	"/\0"
.balign 4
_Lt_0519:	.ascii	"STR\0"
.balign 4
_Lt_051E:	.ascii	"ESS\0"
.balign 8
_Lt_0523:	.quad	0x4059000000000000
.balign 8
_Lt_0524:	.quad	0x40C3880000000000
.balign 4
_Lt_052B:	.ascii	"____pwch\0"
.balign 4
_Lt_052E:	.ascii	"watr\0"
.balign 4
_Lt_0533:	.ascii	"hole\0"
.balign 4
_Lt_0534:	.ascii	"holestpsstp2\0"
.balign 4
_Lt_0569:	.ascii	"Flame\0"
.balign 4
_Lt_056A:	.ascii	"moveburn\0"
.balign 8
_Lt_056B:	.quad	0xC034000000000000
.balign 4
_Lt_056C:	.long	0x42F00000
.balign 4
_Lt_0571:	.ascii	"Sleepy dust\0"
.balign 8
_Lt_0576:	.quad	0x406B800000000000
.balign 8
_Lt_0577:	.quad	0xC06B800000000000
.balign 8
_Lt_057C:	.quad	0x4074000000000000
.balign 8
_Lt_057D:	.quad	0xC074000000000000
.balign 4
_Lt_0580:	.ascii	"Cactus\0"
.balign 4
_Lt_0581:	.long	0x41500000
.balign 4
_Lt_0586:	.ascii	"bitekick\0"
.balign 8
_Lt_0587:	.quad	0x4064000000000000
.balign 8
_Lt_0588:	.quad	0xC064000000000000
.balign 4
_Lt_0589:	.long	0x40C00000
.balign 4
_Lt_05EA:	.ascii	" EXP\0"
.balign 4
_Lt_0627:	.ascii	"\372Ok\0"
.balign 4
_Lt_062E:	.ascii	"&H0D\0"
.balign 4
_Lt_0637:	.ascii	"%%\0"
.balign 4
_Lt_063E:	.long	0xC1000000
.balign 4
_Lt_063F:	.long	0xC1300000
.balign 4
_Lt_0640:	.long	0xC1100000
.balign 4
_Lt_0641:	.long	0xC1200000
.balign 4
_Lt_0642:	.long	0xC0E00000
.balign 4
_Lt_0643:	.long	0xC0000000
.balign 4
_Lt_0658:	.ascii	"pndxspdrgrmldtbyemgdshktimp_\0"
.balign 4
_Lt_06D9:	.ascii	"pwchchst\0"
.balign 4
_Lt_0719:	.ascii	"bldrchst\0"
.balign 8
_Lt_071C:	.quad	0xC024000000000000
.balign 4
_Lt_073B:	.ascii	"pndxgrmlspdrdtbyweb_emgdshkt\0"
.balign 4
_Lt_0749:	.ascii	"pndxgrmlspdrdtbyweb_shktemgd\0"
.balign 4
_Lt_0750:	.ascii	"pndxgrmlspdrshktemgdimp_\0"
.balign 4
_Lt_0757:	.ascii	"pndxgrmlspdrdtbyweb_imp_\0"
.balign 4
_Lt_077C:	.ascii	"pndxdtbyspdrimp_emgdshktgrml\0"
.balign 4
_Lt_078B:	.ascii	"pndxgrmldtbyweb_shktemgdimp_\0"
.balign 4
_Lt_0794:	.ascii	"pndxgrmlspdrimp_emgdshkt\0"
.balign 4
_Lt_07A5:	.ascii	"pndxdtbyspdrimp_emgdshktweb_\0"
.balign 4
_Lt_07B8:	.ascii	"pndxdtbyspdrimp_emgdshktweb_grmlccts\0"
.balign 4
_Lt_07E5:	.ascii	"stpw\0"
.balign 4
_Lt_07E8:	.ascii	"stps\0"
.balign 4
_Lt_07F1:	.ascii	"dirt\0"
.balign 4
_Lt_07F8:	.ascii	"\377""\0"
.balign 4
_Lt_07FB:	.ascii	"&HFF\0"
.balign 4
_Lt_07FC:	.ascii	"0\0"
.balign 4
_Lt_0801:	.ascii	"&H\0"
.balign 4
_Lt_0814:	.ascii	"%\0"
.balign 4
_Lt_0823:	.ascii	".\0"
.balign 4
_Lt_082E:	.ascii	"________.24\0"
.balign 4
_Lt_0831:	.ascii	"y\0"
.balign 4
_Lt_0833:	.ascii	".png\0"
.balign 4
_Lt_0838:	.ascii	"x\0"
.balign 4
_Lt_084B:	.long	0x436F0000
.balign 4
_Lt_088B:	.ascii	"bttnself.24\0"
.balign 4
_Lt_0890:	.ascii	"bttnnrth.24\0"
.balign 4
_Lt_0895:	.ascii	"bttneast.24\0"
.balign 4
_Lt_089A:	.ascii	"bttnsuth.24\0"
.balign 4
_Lt_089F:	.ascii	"bttnwest.24\0"
.balign 4
_Lt_08BF:	.ascii	"Puzzlum\0"
.balign 4
_Lt_08C3:	.ascii	"(T)itle\0"
.balign 4
_Lt_08E0:	.ascii	"&HFF0D\0"
.balign 4
_Lt_08E4:	.ascii	"Loading Map\0"
.balign 4
_Lt_08E5:	.ascii	"mapname_str\0"
.balign 4
_Lt_08EB:	.ascii	"AA_si\0"
.balign 4
_Lt_08ED:	.ascii	"DD_si\0"
.balign 4
_Lt_08F7:	.ascii	"d_sia[\0"
.balign 4
_Lt_08F8:	.ascii	"][\0"
.balign 4
_Lt_08F9:	.ascii	"]\0"
.balign 4
_Lt_08FF:	.ascii	"ex_si\0"
.balign 4
_Lt_0901:	.ascii	"dy_si\0"
.balign 4
_Lt_0903:	.ascii	"mdx_si\0"
.balign 4
_Lt_0905:	.ascii	"mdy_si\0"
.balign 4
_Lt_0907:	.ascii	"textcolor_si\0"
.balign 4
_Lt_0909:	.ascii	"textdelay_sf\0"
.balign 4
_Lt_090B:	.ascii	"win_si\0"
.balign 4
_Lt_0923:	.ascii	"win_sia[\0"
.balign 4
_Lt_0931:	.ascii	"l_sia[\0"
.balign 4
_Lt_0935:	.ascii	"ctrl_str\0"
.balign 4
_Lt_0941:	.ascii	"prflidty_str[\0"
.balign 4
_Lt_0947:	.ascii	"prflactn_str[\0"
.balign 4
_Lt_094D:	.ascii	"prflgpic_str[\0"
.balign 4
_Lt_0953:	.ascii	"prflcmnd_str[\0"
.balign 4
_Lt_0959:	.ascii	"prflgpicactn_str[\0"
.balign 4
_Lt_095F:	.ascii	"prflactnct_str[\0"
.balign 4
_Lt_0965:	.ascii	"prflidty_sf[\0"
.balign 4
_Lt_096B:	.ascii	"prflhp_sf[\0"
.balign 4
_Lt_0971:	.ascii	"prflstr_sf[\0"
.balign 4
_Lt_0977:	.ascii	"prfless_sf[\0"
.balign 4
_Lt_097D:	.ascii	"prflspd_sf[\0"
.balign 4
_Lt_0983:	.ascii	"prflarmr_sf[\0"
.balign 4
_Lt_0989:	.ascii	"prflexp_sf[\0"
.balign 4
_Lt_098F:	.ascii	"prflvalu_sf[\0"
.balign 4
_Lt_0995:	.ascii	"prflpirc_sf[\0"
.balign 4
_Lt_099B:	.ascii	"prflchck_sf[\0"
.balign 4
_Lt_09A1:	.ascii	"prfllv_sf[\0"
.balign 4
_Lt_09A7:	.ascii	"prflhpmax_sf[\0"
.balign 4
_Lt_09AD:	.ascii	"prflstrmax_sf[\0"
.balign 4
_Lt_09B3:	.ascii	"prflessmax_sf[\0"
.balign 4
_Lt_09B9:	.ascii	"prflessspd_sf[\0"
.balign 4
_Lt_09BF:	.ascii	"prflevad_sf[\0"
.balign 4
_Lt_09C5:	.ascii	"prflblnk_sf[\0"
.balign 4
_Lt_09CE:	.ascii	"Saving Map \"\0"
.balign 4
_Lt_0AAE:	.ascii	".\\save\\\0"
.balign 4
_Lt_0AAF:	.ascii	".dat\0"

.section .dtors
.int __GLOBAL__D
