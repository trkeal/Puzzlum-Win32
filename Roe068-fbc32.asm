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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _RBG_STR
push -1
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00F5
push -1
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrConcatAssign@20
push 0
push 9
push offset _Lt_00F6
push -1
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+72]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b01000000
jz .Lt_01DC
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-208]
call _ROSE_CALC@8
imul eax, 108
lea ecx, [_E_STRA+eax+12]
push ecx
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push ebp
mov ebp, esp
sub esp, 4
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
movsx ecx, word ptr [_TY_SI]
push ecx
movsx ecx, word ptr [_TX_SI]
push ecx
call _ROSE_CALC@8
imul eax, 9
movsx ecx, word ptr [_T_SI]
add eax, ecx
imul eax, 12
lea ecx, [_E_STRA+eax]
push ecx
call _fb_StrSwap@24
.Lt_02B3:
movsx ecx, word ptr [_T_SI]
inc ecx
mov word ptr [_T_SI], cx
.Lt_02B2:
movsx ecx, word ptr [_T_SI]
cmp ecx, 1
jle .Lt_02B5
.Lt_02B4:
push 0
push -1
push 4
push 1
movsx ecx, word ptr [_TY_SI]
push ecx
movsx ecx, word ptr [_TX_SI]
push ecx
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx ecx, word ptr [_TY_SI]
push ecx
movsx ecx, word ptr [_TX_SI]
push ecx
call _ROSE_CALC@8
imul eax, 9
movsx ecx, word ptr [_T_SI]
add eax, ecx
imul eax, 12
lea ecx, [_E_STRA+eax]
push ecx
call _fb_StrSwap@24
.Lt_02B7:
movsx ecx, word ptr [_T_SI]
inc ecx
mov word ptr [_T_SI], cx
.Lt_02B6:
movsx ecx, word ptr [_T_SI]
cmp ecx, 4
jle .Lt_02B9
.Lt_02B8:
mov word ptr [_T_SI], 0
.Lt_02BD:
movsx ecx, word ptr [_TY_SI]
push ecx
movsx ecx, word ptr [_TX_SI]
push ecx
call _ROSE_CALC@8
imul eax, 17
movsx ecx, word ptr [_T_SI]
add eax, ecx
lea ecx, [_G_DFA+eax*8]
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
push dword ptr [ecx]
movsx ecx, word ptr [_TX_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx ebx, word ptr [_D_SIA+eax+2]
movsx eax, word ptr [_DIS_SI]
imul ebx, eax
add ecx, ebx
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [_D_SI]
imul eax, 6
movsx esi, word ptr [_D_SIA+eax+4]
movsx eax, word ptr [_DIS_SI]
imul esi, eax
add ebx, esi
dec ebx
movsx esi, word ptr [_AA_SI]
imul ebx, esi
add ecx, ebx
imul ecx, 17
movsx ebx, word ptr [_T_SI]
add ecx, ebx
mov ebx, dword ptr [ebp-4]
push dword ptr [_G_DFA+ecx*8]
push dword ptr [_G_DFA+ecx*8+4]
pop dword ptr [ebx+4]
pop dword ptr [ebx]
movsx ecx, word ptr [_TX_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+2]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add ecx, esi
movsx esi, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx eax, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul eax, ebx
add esi, eax
dec esi
movsx eax, word ptr [_AA_SI]
imul esi, eax
add ecx, esi
imul ecx, 17
movsx esi, word ptr [_T_SI]
add ecx, esi
pop dword ptr [_G_DFA+ecx*8]
pop dword ptr [_G_DFA+ecx*8+4]
.Lt_02BB:
movsx ecx, word ptr [_T_SI]
inc ecx
mov word ptr [_T_SI], cx
.Lt_02BA:
movsx ecx, word ptr [_T_SI]
cmp ecx, 16
jle .Lt_02BD
.Lt_02BC:
.Lt_02B1:
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
sub esp, 4
push ebx
.Lt_02BF:
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702127970
jne .Lt_02C3
.Lt_02C5:
call _LN_ATTKBITE@0
jmp .Lt_02C1
.Lt_02C3:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_02C6
.Lt_02C8:
call _LN_ATTKPNCH@0
jmp .Lt_02C1
.Lt_02C6:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_02C9
.Lt_02CB:
call _LN_ATTKKICK@0
jmp .Lt_02C1
.Lt_02C9:
cmp dword ptr [ebp-4], 1836019318
jne .Lt_02CC
.Lt_02CD:
call _LN_ATTKVNOM@0
jmp .Lt_02C1
.Lt_02CC:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_02CE
.Lt_02CF:
call _LN_ATTKDGGR@0
jmp .Lt_02C1
.Lt_02CE:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_02D0
.Lt_02D1:
call _LN_ATTKPIKE@0
jmp .Lt_02C1
.Lt_02D0:
cmp dword ptr [ebp-4], 1701999971
jne .Lt_02D2
.Lt_02D4:
call _LN_USECURE@0
jmp .Lt_02C1
.Lt_02D2:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_02D5
.Lt_02D6:
call _LN_ATTKFIRE@0
jmp .Lt_02C1
.Lt_02D5:
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_02D7:
.Lt_02C1:
.Lt_02C0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_BATTLE@0
_LN_BATTLE@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.Lt_02D8:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_STR_USE_SI]
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
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
movsx ecx, word ptr [_ESS_USE_SI]
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
je .Lt_02DB
push offset _ATTK_PICT_STR
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push offset _ATTK_NAME_STR
push 4
push 5
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_STR_USE_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+16]
fsubrp
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_ESS_USE_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+24]
fsubrp
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-16]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-16]
push dword ptr [ebp-12]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
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
fld qword ptr [_G_DFA+eax+120]
fistp word ptr [_EVADEATTACK]
movsx eax, word ptr [_EVADEATTACK]
push eax
fild dword ptr [esp]
add esp, 4
push dword ptr [_Lt_0155]
fstp qword ptr [ebp-24]
call _fb_Rnd@4
movsx eax, word ptr [_EVADEATTACK]
neg eax
inc eax
push eax
fild dword ptr [esp]
add esp, 4
fxch st(1)
fmulp
fadd qword ptr [ebp-24]
fistp word ptr [_EVADEATTACK]
movsx eax, word ptr [_HP_DMG_SI]
movsx ecx, word ptr [_EVADEATTACK]
imul eax, ecx
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
fsub qword ptr [_G_DFA+eax+40]
fistp word ptr [_ATTACKBLOCKED]
movsx eax, word ptr [_ATTACKBLOCKED]
test eax, eax
jge .Lt_02DF
mov word ptr [_ATTACKBLOCKED], 0
.Lt_02DF:
movsx eax, word ptr [_HP_DMG_SI]
movsx esi, word ptr [_EVADEATTACK]
neg esi
inc esi
imul eax, esi
movsx esi, word ptr [_ATTACKBLOCKED]
add eax, esi
mov word ptr [_HP_DMG_SI], ax
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
movsx ebx, word ptr [_HP_DMG_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+8]
fsubrp
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
fstp qword ptr [_G_DFA+eax+8]
call _LN_BATTLEATTACK@0
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
fld qword ptr [_G_DFA+eax+8]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b01000001
jz .Lt_02E1
call _LN_VICTORY@0
.Lt_02E1:
.Lt_02E0:
.Lt_02DD:
.Lt_02DC:
jmp .Lt_02DA
.Lt_02DB:
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea esi, [_E_STRA+eax+48]
push esi
call _fb_StrAssignMid@16
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea esi, [_E_STRA+eax+48]
push esi
call _fb_StrAssignMid@16
.Lt_02DA:
.Lt_02D9:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKBITE@0
_LN_ATTKBITE@0:
.Lt_02E7:
push 0
push 5
push offset _Lt_02C4
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02C4
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 10
mov word ptr [_ESS_USE_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fistp word ptr [_HP_DMG_SI]
mov word ptr [_STR_DMG_SI], 2
call _LN_BATTLE@0
.Lt_02E8:
ret
.balign 16

.globl _LN_ATTKPNCH@0
_LN_ATTKPNCH@0:
.Lt_02E9:
push 0
push 5
push offset _Lt_02C7
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02C7
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 12
mov word ptr [_ESS_USE_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02EB]
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
fistp word ptr [_HP_DMG_SI]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02EC]
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
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
.Lt_02EA:
ret
.balign 16

.globl _LN_ATTKWSTF@0
_LN_ATTKWSTF@0:
.Lt_02ED:
push 0
push 5
push offset _Lt_0119
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0119
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 20
mov word ptr [_ESS_USE_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fistp word ptr [_HP_DMG_SI]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02EB]
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
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
.Lt_02EE:
ret
.balign 16

.globl _LN_ATTKKICK@0
_LN_ATTKKICK@0:
.Lt_02EF:
push 0
push 5
push offset _Lt_02CA
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02CA
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 14
mov word ptr [_ESS_USE_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fistp word ptr [_HP_DMG_SI]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_027C]
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
.Lt_02F0:
ret
.balign 16

.globl _LN_ATTKVNOM@0
_LN_ATTKVNOM@0:
.Lt_02F2:
push 0
push 5
push offset _Lt_0105
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0105
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 0
mov word ptr [_ESS_USE_SI], 15
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fistp word ptr [_HP_DMG_SI]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_02F4]
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
.Lt_02F3:
ret
.balign 16

.globl _LN_ATTKDGGR@0
_LN_ATTKDGGR@0:
.Lt_02F5:
push 0
push 5
push offset _Lt_0114
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0114
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 18
mov word ptr [_ESS_USE_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_02EC]
fistp word ptr [_HP_DMG_SI]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02F4]
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
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
.Lt_02F6:
ret
.balign 16

.globl _LN_ATTKPIKE@0
_LN_ATTKPIKE@0:
.Lt_02F7:
push 0
push 5
push offset _Lt_012C
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_012C
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 24
mov word ptr [_ESS_USE_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_02F9]
fistp word ptr [_HP_DMG_SI]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_02EC]
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
.Lt_02F8:
ret
.balign 16

.globl _LN_ATTKBURN@0
_LN_ATTKBURN@0:
push ebx
.Lt_02FA:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02FC
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 5
mov word ptr [_ESS_USE_SI], 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_02F9]
fistp word ptr [_HP_DMG_SI]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
push 5
push offset _Lt_01F3
push -1
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_02FE
call _LN_GONE@0
.Lt_02FE:
.Lt_02FD:
.Lt_02FB:
pop ebx
ret
.balign 16

.globl _LN_ATTKFIRE@0
_LN_ATTKFIRE@0:
.Lt_0300:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_01F3
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 5
mov word ptr [_ESS_USE_SI], 20
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_02FF]
fistp word ptr [_HP_DMG_SI]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0302]
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
.Lt_0301:
ret
.balign 16

.globl _LN_ATTKWEB@0
_LN_ATTKWEB@0:
.Lt_0303:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_010A
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 22
mov word ptr [_ESS_USE_SI], 0
mov word ptr [_HP_DMG_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_02FF]
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
.Lt_0304:
ret
.balign 16

.globl _LN_ATTKTNGL@0
_LN_ATTKTNGL@0:
.Lt_0305:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0307
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 0
mov word ptr [_ESS_USE_SI], 0
mov word ptr [_HP_DMG_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02EB]
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
fadd qword ptr [_Lt_02F4]
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
.Lt_0306:
ret
.balign 16

.globl _LN_ATTKLASH@0
_LN_ATTKLASH@0:
.Lt_0308:
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_030A
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
mov word ptr [_STR_USE_SI], 0
mov word ptr [_ESS_USE_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fistp word ptr [_HP_DMG_SI]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_02EC]
fistp word ptr [_STR_DMG_SI]
call _LN_BATTLE@0
.Lt_0309:
ret
.balign 16

.globl _LN_ATTK_TABLE@8
_LN_ATTK_TABLE@8:
push ebp
mov ebp, esp
sub esp, 584
push ebx
.Lt_030C:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fistp dword ptr [ebp-4]
push 0
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 6
push offset _Lt_030F
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
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
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _ATTK_PICT_STR
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
push 0
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 6
push offset _Lt_0313
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
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
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
lea eax, [ebp-76]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _ATTK_NAME_STR
call _fb_StrAssign@20
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 8
push offset _Lt_0317
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
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
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
lea eax, [ebp-112]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_HP_USE_SI]
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push 9
push offset _Lt_031B
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
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
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign@20
lea eax, [ebp-148]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_STR_USE_SI]
lea eax, [ebp-148]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 9
push offset _Lt_031F
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
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
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_ESS_USE_SI]
lea eax, [ebp-184]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push 8
push offset _Lt_0323
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
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
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_HP_DMG_SI]
lea eax, [ebp-220]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
push 0
push -1
push 9
push offset _Lt_0327
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat@20
push eax
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
call _fb_VAL@4
fistp word ptr [_STR_DMG_SI]
lea eax, [ebp-256]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
push 0
push -1
push 9
push offset _Lt_032B
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
lea eax, [ebp-280]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-292]
push eax
call _fb_StrAssign@20
lea eax, [ebp-292]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_ESS_DMG_SI]
lea eax, [ebp-292]
push eax
call _fb_StrDelete@4
push 0
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
push 0
push -1
push 14
push offset _Lt_032F
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
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
call _SYNC_NAMES@8
push eax
push -1
push offset _HP_DMG_BONUS_STR
call _fb_StrAssign@20
lea eax, [ebp-328]
push eax
call _fb_StrDelete@4
push 0
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-364], 0
mov dword ptr [ebp-360], 0
mov dword ptr [ebp-356], 0
push 0
push -1
push 15
push offset _Lt_0333
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
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
push -1
push offset _STR_DMG_BONUS_STR
call _fb_StrAssign@20
lea eax, [ebp-364]
push eax
call _fb_StrDelete@4
push 0
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-400], 0
mov dword ptr [ebp-396], 0
mov dword ptr [ebp-392], 0
push 0
push -1
push 15
push offset _Lt_0337
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
lea eax, [ebp-376]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-388], 0
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
lea eax, [ebp-388]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-400]
push eax
call _fb_StrAssign@20
lea eax, [ebp-400]
push eax
call _SYNC_NAMES@8
push eax
push -1
push offset _ESS_DMG_BONUS_STR
call _fb_StrAssign@20
lea eax, [ebp-400]
push eax
call _fb_StrDelete@4
push 7
push offset _Lt_033B
push -1
push 6
push offset _HP_DMG_BONUS_STR
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_033D
movsx eax, word ptr [_HP_DMG_SI]
push eax
fild dword ptr [esp]
add esp, 4
fild dword ptr [ebp-4]
push -1
push 7
push offset _HP_DMG_BONUS_STR
fstp qword ptr [ebp-444]
fstp qword ptr [ebp-452]
call _fb_StrMid@12
push eax
call _fb_VAL@4
fld qword ptr [ebp-444]
fdivrp
fadd qword ptr [ebp-452]
fistp word ptr [_HP_DMG_SI]
jmp .Lt_033C
.Lt_033D:
movsx eax, word ptr [_HP_DMG_SI]
mov word ptr [_HP_DMG_SI], ax
.Lt_033C:
push 7
push offset _Lt_033B
push -1
push 6
push offset _STR_DMG_BONUS_STR
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_033F
movsx eax, word ptr [_STR_DMG_SI]
push eax
fild dword ptr [esp]
add esp, 4
fild dword ptr [ebp-4]
push -1
push 7
push offset _STR_DMG_BONUS_STR
fstp qword ptr [ebp-444]
fstp qword ptr [ebp-452]
call _fb_StrMid@12
push eax
call _fb_VAL@4
fld qword ptr [ebp-444]
fdivrp
fadd qword ptr [ebp-452]
fistp word ptr [_STR_DMG_SI]
jmp .Lt_033E
.Lt_033F:
movsx eax, word ptr [_STR_DMG_SI]
mov word ptr [_STR_DMG_SI], ax
.Lt_033E:
push 7
push offset _Lt_033B
push -1
push 6
push offset _ESS_DMG_BONUS_STR
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0341
movsx eax, word ptr [_ESS_DMG_SI]
push eax
fild dword ptr [esp]
add esp, 4
fild dword ptr [ebp-4]
push -1
push 7
push offset _ESS_DMG_BONUS_STR
fstp qword ptr [ebp-444]
fstp qword ptr [ebp-452]
call _fb_StrMid@12
push eax
call _fb_VAL@4
fld qword ptr [ebp-444]
fdivrp
fadd qword ptr [ebp-452]
fistp word ptr [_ESS_DMG_SI]
jmp .Lt_0340
.Lt_0341:
movsx eax, word ptr [_ESS_DMG_SI]
mov word ptr [_ESS_DMG_SI], ax
.Lt_0340:
call _LN_BATTLE@0
push dword ptr [ebp+12]
mov dword ptr [ebp-436], 0
mov dword ptr [ebp-432], 0
mov dword ptr [ebp-428], 0
push 0
push -1
push 14
push offset _Lt_0342
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
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
push -1
lea eax, [ebp-436]
push eax
call _fb_StrAssign@20
lea eax, [ebp-436]
push eax
call _SYNC_NAMES@8
push eax
call _fb_VAL@4
fistp word ptr [_ENTITY_COUNT]
lea eax, [ebp-436]
push eax
call _fb_StrDelete@4
mov word ptr [_ENTITY_INDEX], 1
mov ax, word ptr [_ENTITY_COUNT]
mov word ptr [ebp-440], ax
jmp .Lt_0347
.Lt_034A:
push 0
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
mov dword ptr [ebp-492], 0
push 0
push -1
push 4
push offset _Lt_034C
push -1
push -1
movsx eax, word ptr [_ENTITY_INDEX]
push eax
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push -1
push 9
push offset _Lt_034B
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
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
mov dword ptr [ebp-488], 0
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
lea eax, [ebp-488]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-500]
push eax
call _fb_StrAssign@20
lea eax, [ebp-500]
push eax
call _SYNC_NAMES@8
push eax
push -1
lea eax, [ebp-512]
push eax
call _fb_StrInit@20
lea eax, [ebp-500]
push eax
call _fb_StrDelete@4
push -1
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-512]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0354
.Lt_0355:
push 0
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-572], 0
mov dword ptr [ebp-568], 0
mov dword ptr [ebp-564], 0
push 0
push -1
push 5
push offset _Lt_0356
push -1
push -1
movsx eax, word ptr [_ENTITY_INDEX]
push eax
call _fb_IntToStr@4
push eax
call _fb_LTRIM@4
push eax
push -1
push 9
push offset _Lt_034B
push -1
push -1
push dword ptr [ebp+8]
push 6
push offset _Lt_030E
mov dword ptr [ebp-524], 0
mov dword ptr [ebp-520], 0
mov dword ptr [ebp-516], 0
lea eax, [ebp-524]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-536], 0
mov dword ptr [ebp-532], 0
mov dword ptr [ebp-528], 0
lea eax, [ebp-536]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-548], 0
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
lea eax, [ebp-548]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-560], 0
mov dword ptr [ebp-556], 0
mov dword ptr [ebp-552], 0
lea eax, [ebp-560]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-572]
push eax
call _fb_StrAssign@20
lea eax, [ebp-572]
push eax
call _SYNC_NAMES@8
push eax
push -1
lea eax, [ebp-584]
push eax
call _fb_StrInit@20
lea eax, [ebp-572]
push eax
call _fb_StrDelete@4
push 5
push offset _Lt_035F
push -1
lea eax, [ebp-584]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_035E
.Lt_0360:
call _LN_GONE@0
lea eax, [ebp-584]
push eax
call _fb_StrDelete@4
lea eax, [ebp-512]
push eax
call _fb_StrDelete@4
jmp .Lt_030D
.Lt_035E:
.Lt_035C:
lea eax, [ebp-584]
push eax
call _fb_StrDelete@4
.Lt_0354:
.Lt_0352:
lea eax, [ebp-512]
push eax
call _fb_StrDelete@4
.Lt_0348:
movsx eax, word ptr [_ENTITY_INDEX]
inc eax
mov word ptr [_ENTITY_INDEX], ax
.Lt_0347:
movsx eax, word ptr [_ENTITY_INDEX]
movsx ebx, word ptr [ebp-440]
cmp eax, ebx
jle .Lt_034A
.Lt_0349:
.Lt_030D:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LN_USECURE@0
_LN_USECURE@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_0367:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02EC]
fnstsw ax
test ah, 0b00000001
jnz .Lt_036A
push 4
push offset _Lt_02D3
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_02D3
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 5
push offset _Lt_02D3
push -1
push offset _AA_STR
call _fb_StrAssign@20
call _LN_ATTACKUSING@0
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0373]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
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
movsx ecx, word ptr [_TY_SI]
push ecx
movsx ecx, word ptr [_TX_SI]
push ecx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fadd qword ptr [_G_DFA+ebx+8]
fadd qword ptr [_Lt_02F9]
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
movsx esi, word ptr [_TY_SI]
push esi
movsx esi, word ptr [_TX_SI]
push esi
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fadd qword ptr [_G_DFA+ebx+16]
fadd qword ptr [_Lt_02FF]
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
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+16]
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
imul ebx, 136
fld qword ptr [_G_DFA+ebx+16]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b01000001
jz .Lt_036E
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
imul ebx, 136
push dword ptr [_Lt_0208]
push dword ptr [_Lt_0208+4]
pop dword ptr [_G_DFA+ebx+20]
pop dword ptr [_G_DFA+ebx+16]
.Lt_036E:
.Lt_036D:
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
imul ebx, 136
fld qword ptr [_G_DFA+ebx+8]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b01000001
jz .Lt_0370
call _LN_VICTORY@0
.Lt_0370:
.Lt_036F:
.Lt_036C:
.Lt_036B:
jmp .Lt_0369
.Lt_036A:
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
.Lt_0372:
.Lt_0371:
.Lt_0369:
.Lt_0368:
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
sub esp, 8
push ebx
push esi
.Lt_0375:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02EC]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0378
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_037B
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 5
push offset _Lt_037B
push -1
push offset _AA_STR
call _fb_StrAssign@20
call _LN_ATTACKUSING@0
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0373]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
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
movsx esi, word ptr [_TY_SI]
push esi
movsx esi, word ptr [_TX_SI]
push esi
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02F4]
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
movsx esi, word ptr [_D_SI]
imul esi, 6
movsx ebx, word ptr [_D_SIA+esi+2]
movsx esi, word ptr [_DIS_SI]
imul ebx, esi
add eax, ebx
mov word ptr [_TX_SI], ax
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [_D_SI]
imul ebx, 6
movsx esi, word ptr [_D_SIA+ebx+4]
movsx ebx, word ptr [_DIS_SI]
imul esi, ebx
add eax, esi
mov word ptr [_TY_SI], ax
call _LN_TEMPGET@0
push 5
push offset _Lt_01DD
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_037D
push 0
push 5
push offset _Lt_01DD
push -1
push offset _TEMPACTION_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0155]
call _fb_Rnd@4
fmul qword ptr [_Lt_02EB]
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
.Lt_037D:
.Lt_037C:
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
fld qword ptr [_Lt_0385]
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
jz .Lt_037F
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
.Lt_037F:
.Lt_037E:
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
jz .Lt_0381
call _LN_VICTORY@0
.Lt_0381:
.Lt_0380:
.Lt_037A:
.Lt_0379:
jmp .Lt_0377
.Lt_0378:
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ecx, [_E_STRA+eax+48]
push ecx
call _fb_StrAssignMid@16
.Lt_0383:
.Lt_0382:
.Lt_0377:
.Lt_0376:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_VICTORY@0
_LN_VICTORY@0:
push ebx
push esi
.Lt_0386:
call _LN_PRFLBLNK@0
push 0
push 6
push offset _Lt_0388
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
push offset _Lt_0389
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
push dword ptr [_Lt_038A]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLMAKE@0
.Lt_0387:
pop esi
pop ebx
ret
.balign 16

.globl _LN_PILLAGE@0
_LN_PILLAGE@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_038B:
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_STRGAIN_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_DEFEATED@0
call _LN_WINDGGR@0
call _LN_WINPIKE@0
call _LN_WINGRPL@0
call _LN_WINSEED@0
call _LN_WINKEY1@0
call _LN_WINKEY2@0
.Lt_038C:
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
sub esp, 168
push ebx
.Lt_038E:
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
jle .Lt_0391
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_EXPSHOP]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
.Lt_0392:
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0393
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0397
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0399
push 0
push 5
push offset _Lt_039A
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_039C
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_039A
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
.Lt_039C:
.Lt_039B:
.Lt_0399:
.Lt_0398:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b00000001
jnz .Lt_03A0
push 0
push 5
push offset _Lt_03A1
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_03A3
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03A1
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
.Lt_03A3:
.Lt_03A2:
.Lt_03A0:
.Lt_039F:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b00000001
jnz .Lt_03A7
push 0
push 5
push offset _Lt_02C4
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_03A9
push 0
push -1
push -1
push 2
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02C4
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
.Lt_03A7:
.Lt_03A6:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b00000001
jnz .Lt_03AD
push 0
push 5
push offset _Lt_02C7
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_03AF
push 0
push -1
push -1
push 2
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02C7
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
.Lt_03AF:
.Lt_03AE:
.Lt_03AD:
.Lt_03AC:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0153]
fnstsw ax
test ah, 0b00000001
jnz .Lt_03B3
push 0
push 5
push offset _Lt_02CA
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_03B5
push 0
push -1
push -1
push 10
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02CA
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
.Lt_03B5:
.Lt_03B4:
.Lt_03B3:
.Lt_03B2:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_027C]
fnstsw ax
test ah, 0b00000001
jnz .Lt_03B9
push 0
push 5
push offset _Lt_02D3
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_03BB
push 0
push -1
push -1
push 20
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02D3
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
.Lt_03BB:
.Lt_03BA:
.Lt_03B9:
.Lt_03B8:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_02F1]
fnstsw ax
test ah, 0b00000001
jnz .Lt_03BF
push 0
push 5
push offset _Lt_0105
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_03C1
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
.Lt_03C1:
.Lt_03C0:
.Lt_03BF:
.Lt_03BE:
.Lt_0397:
.Lt_0396:
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03C4
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
fdiv qword ptr [_Lt_02EC]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov word ptr [_MENUITEM_SI], 1
mov ax, word ptr [_MENUSIZE_SI]
mov word ptr [ebp-84], ax
jmp .Lt_03C8
.Lt_03CB:
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
jle .Lt_03CD
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push 5
push 2
push offset _Lt_03D1
push -1
push -1
movsx eax, word ptr [_MENUCOST_SI]
push eax
call _fb_IntToStr@4
push eax
push 5
push offset _Lt_03D0
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
push offset _Lt_03CF
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
push offset _Lt_03CE
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
.Lt_03CD:
.Lt_03CC:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_03DA
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_03CE
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
.Lt_03DA:
.Lt_03D9:
.Lt_03C9:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_03C8:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-84]
cmp eax, ebx
jle .Lt_03CB
.Lt_03CA:
.Lt_03DD:
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
jne .Lt_03DF
movsx ebx, word ptr [_XM_SI]
cmp ebx, 15
jne .Lt_03E1
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
je .Lt_03E3
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
.Lt_03E3:
.Lt_03E2:
.Lt_03E1:
.Lt_03E0:
.Lt_03DF:
.Lt_03DE:
push 5
push offset _Lt_0393
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_03C4
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
je .Lt_03E5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_03E7
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_ABILITYGAIN@0
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_03E7:
.Lt_03E6:
jmp .Lt_0392
.Lt_03E5:
.Lt_03E4:
push 5
push offset _Lt_0393
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_03E9
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_03EB
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_LEVELUP@0
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_03EB:
.Lt_03EA:
jmp .Lt_0392
.Lt_03E9:
.Lt_03E8:
push 5
push offset _Lt_03C4
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_03ED
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_03EC
.Lt_03ED:
jmp .Lt_03DD
.Lt_03EC:
.Lt_0391:
.Lt_0390:
.Lt_038F:
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
.Lt_03F3:
.Lt_03F5:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_03F7
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
jle .Lt_03F9
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
.Lt_03F9:
.Lt_03F8:
push 0
push 5
push offset _Lt_012C
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_03FD
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
.Lt_03FD:
.Lt_03FC:
push 0
push 5
push offset _Lt_0400
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0402
push 0
push -1
push -1
push 15
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0400
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
.Lt_0402:
.Lt_0401:
push 0
push 5
push offset _Lt_0405
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0407
push 0
push -1
push -1
push 15
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0405
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
.Lt_0407:
.Lt_0406:
push 0
push 5
push offset _Lt_0119
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_040B
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
.Lt_040B:
.Lt_040A:
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_03C4
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
fdiv qword ptr [_Lt_02EC]
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
push offset _Lt_0411
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
push offset _Lt_0415
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
jmp .Lt_0419
.Lt_041C:
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
jle .Lt_041E
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push 5
push 2
push offset _Lt_03D1
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
push offset _Lt_03D0
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
push offset _Lt_03CF
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
push offset _Lt_03CE
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
.Lt_041E:
.Lt_041D:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_0427
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_03CE
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
.Lt_0427:
.Lt_0426:
.Lt_041A:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_0419:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-84]
cmp eax, ebx
jle .Lt_041C
.Lt_041B:
.Lt_042A:
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
jne .Lt_042C
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_VIEWX_SI]
cmp ebx, eax
jne .Lt_042E
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
je .Lt_0430
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
.Lt_0430:
.Lt_042F:
.Lt_042E:
.Lt_042D:
.Lt_042C:
.Lt_042B:
push 5
push offset _Lt_0393
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_03C4
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
je .Lt_0432
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_0434
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
jmp .Lt_03F5
.Lt_0434:
.Lt_0433:
jmp .Lt_03F5
.Lt_0432:
.Lt_0431:
push 5
push offset _Lt_0393
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0436
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx esi, word ptr [_MENUCOST_SI]
push esi
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_0438
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_LEVELUP@0
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
jmp .Lt_03F5
.Lt_0438:
.Lt_0437:
jmp .Lt_03F5
.Lt_0436:
.Lt_0435:
push 5
push offset _Lt_03C4
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_043A
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_0439
.Lt_043A:
jmp .Lt_042A
.Lt_0439:
.Lt_03F7:
.Lt_03F6:
.Lt_03F4:
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
.Lt_0440:
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
jle .Lt_0443
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
push offset _Lt_0444
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
fdiv qword ptr [_Lt_02EC]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 12
push offset _Lt_0447
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
push offset _Lt_0449
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
push offset _Lt_044B
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
push offset _Lt_044D
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
push offset _Lt_044F
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
push offset _Lt_0415
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
jmp .Lt_0456
.Lt_0459:
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
jle .Lt_045B
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
push offset _Lt_045C
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_03CE
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
.Lt_045B:
.Lt_045A:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_0462
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_03CE
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
.Lt_0462:
.Lt_0461:
.Lt_0457:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_0456:
movsx eax, word ptr [_MENUITEM_SI]
movsx ecx, word ptr [ebp-152]
cmp eax, ecx
jle .Lt_0459
.Lt_0458:
.Lt_0465:
.Lt_0466:
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
jne .Lt_046A
movsx ecx, word ptr [_XM_SI]
movsx eax, word ptr [_VIEWX_SI]
cmp ecx, eax
jne .Lt_046C
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
je .Lt_046E
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
.Lt_046E:
.Lt_046D:
.Lt_046C:
.Lt_046B:
.Lt_046A:
.Lt_0469:
.Lt_0468:
push 5
push offset _Lt_0444
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0466
.Lt_0467:
push 5
push offset _Lt_0444
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0470
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_046F
.Lt_0470:
call _LN_MERCHANT@0
.Lt_046F:
.Lt_0443:
.Lt_0442:
.Lt_0441:
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
sub esp, 32
push ebx
.Lt_0473:
push 0
push -1
push -1
push offset _MENUSELECT_STR
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call _fb_StrConcat@20
push eax
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_MENUCOST_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+eax+48]
fsubrp
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-20]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-20]
push dword ptr [ebp-16]
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
jle .Lt_0477
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push 7
push offset _Lt_0478
push -1
lea ebx, [ebp-32]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-32]
push ebx
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-32]
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
.Lt_0477:
.Lt_0476:
.Lt_0474:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_LEVELUP@0
_LN_LEVELUP@0:
push ebp
mov ebp, esp
sub esp, 216
push ebx
.Lt_047B:
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_047E
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ecx
movsx eax, word ptr [_L_SIA+ecx*2]
push eax
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+ebx+48]
fcompp
fnstsw ax
test ah, 0b00000001
jnz .Lt_0480
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ecx
movsx eax, word ptr [_L_SIA+ecx*2]
push eax
fild dword ptr [esp]
add esp, 4
fld qword ptr [_G_DFA+ebx+48]
fsubrp
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_R1_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+88]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-16]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-16]
push dword ptr [ebp-12]
pop dword ptr [_G_DFA+eax+92]
pop dword ptr [_G_DFA+eax+88]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_R1_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-24]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-24]
push dword ptr [ebp-20]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_R2_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+96]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-32]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-32]
push dword ptr [ebp-28]
pop dword ptr [_G_DFA+eax+100]
pop dword ptr [_G_DFA+eax+96]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_R2_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-40]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-40]
push dword ptr [ebp-36]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_R3_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+104]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-48]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-48]
push dword ptr [ebp-44]
pop dword ptr [_G_DFA+eax+108]
pop dword ptr [_G_DFA+eax+104]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_R3_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-56]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-56]
push dword ptr [ebp-52]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
mov word ptr [_R4_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_R4_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+32]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-64]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-64]
push dword ptr [ebp-60]
pop dword ptr [_G_DFA+eax+36]
pop dword ptr [_G_DFA+eax+32]
mov word ptr [_R5_SI], 0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_R5_SI]
push ebx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+112]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-72]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-72]
push dword ptr [ebp-68]
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
jle .Lt_0482
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_04B4]
push dword ptr [_Lt_04B5]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_04B6]
push 0
call _fb_GfxLine@36
push 2
push 1
call _fb_PageCopy@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push 16
push offset _Lt_0483
push -1
lea ebx, [ebp-84]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-84]
push ebx
push 48
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-84]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 8
push offset _Lt_0485
push -1
lea ebx, [ebp-96]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-96]
push ebx
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea ebx, [ebp-96]
push ebx
call _fb_StrDelete@4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
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
push 64
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
push 9
push offset _Lt_0489
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
push 80
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
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
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign@20
lea eax, [ebp-156]
push eax
push 80
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
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
push 9
push offset _Lt_048D
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign@20
lea eax, [ebp-168]
push eax
push 96
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-168]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
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
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign@20
lea eax, [ebp-192]
push eax
push 96
push 272
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
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
push 11
push offset _Lt_0491
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign@20
lea eax, [ebp-204]
push eax
push 112
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
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
push 11
push offset _Lt_0493
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign@20
lea eax, [ebp-216]
push eax
push 120
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-216]
push eax
call _fb_StrDelete@4
.Lt_0482:
.Lt_0481:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_04B7]
fnstsw ax
sahf
jae .Lt_0496
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0156]
fadd qword ptr [_G_DFA+eax+80]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
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
jle .Lt_0498
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 12
push offset _Lt_0499
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
lea eax, [ebp-20]
push eax
push 136
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 3
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
lea eax, [ebp-44]
push eax
push 136
push 288
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
movsx eax, word ptr [_L_SIA+ebx*2]
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-52]
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [ebp-52]
fsub qword ptr [_G_DFA+eax+48]
fcomp qword ptr [_Lt_0208]
fnstsw ax
test ah, 0b00000001
jnz .Lt_049E
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 6
push offset _Lt_049F
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
lea eax, [ebp-64]
push eax
push 152
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push 2
push offset _Lt_03D1
push -1
push 5
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
movsx eax, word ptr [_L_SIA+ebx*2]
push eax
fild dword ptr [esp]
add esp, 4
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-108]
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [ebp-108]
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
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
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
push 152
push 264
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
.Lt_049E:
.Lt_049D:
.Lt_0498:
.Lt_0497:
.Lt_0496:
.Lt_0495:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_04A5
call _LN_OKBUTTON@0
.Lt_04A5:
.Lt_04A4:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
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
je .Lt_04A7
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
jne .Lt_04A9
push 0
push -1
push -1
push offset _GETIT_STR
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call _fb_StrConcat@20
push eax
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
call _LN_GAIN@0
.Lt_04A9:
.Lt_04A8:
.Lt_04A7:
.Lt_04A6:
.Lt_0480:
.Lt_047F:
.Lt_047E:
.Lt_047D:
.Lt_047C:
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
.Lt_04BD:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_04C0
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0478
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
.Lt_04C0:
.Lt_04BF:
.Lt_04BE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_GETIT@0
_LN_GETIT@0:
push ebp
mov ebp, esp
sub esp, 60
push ebx
push esi
.Lt_04C2:
push 1
push offset _Lt_0000
push -1
push offset _GETIT_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_04C5
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call _fb_StrConcat@20
push eax
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
je .Lt_04C8
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_04B4]
push dword ptr [_Lt_04B5]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_04B6]
push 0
call _fb_GfxLine@36
push 2
push 1
call _fb_PageCopy@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0478
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
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 5
push offset _Lt_04CA
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
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_04CC
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
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea ecx, [ebp-48]
push ecx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
call _LN_OKBUTTON@0
.Lt_04C8:
.Lt_04C7:
.Lt_04C5:
.Lt_04C4:
.Lt_04C3:
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
.Lt_04D1:
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
je .Lt_04D4
mov ebx, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], ebx
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
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
push 5
push offset _Lt_04D5
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
push offset _Lt_04D7
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
push 64
push 192
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
call _LN_OKBUTTON@0
.Lt_04D4:
.Lt_04D3:
.Lt_04D2:
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
.Lt_04DB:
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
je .Lt_04DE
mov ebx, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], ebx
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
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
push 5
push offset _Lt_04D5
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
push 4
push 5
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
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
push offset _Lt_04E0
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
movsx ecx, word ptr [_HP_DMG_SI]
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
push offset _Lt_04E4
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
movsx eax, word ptr [_STR_DMG_SI]
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
.Lt_04DE:
.Lt_04DD:
.Lt_04DC:
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
.Lt_04EA:
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
je .Lt_04ED
mov ebx, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], ebx
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
call _LN_PORTAL@0
call _LN_AVGFRAME@0
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
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
push 9
push offset _Lt_04EE
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
push offset _Lt_04F0
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
push offset _Lt_03D1
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
push offset _Lt_04F5
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
push offset _Lt_03D1
push -1
push 5
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_04FA
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
push offset _Lt_04FE
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
.Lt_04ED:
.Lt_04EC:
.Lt_04EB:
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
.Lt_0504:
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
fadd qword ptr [_Lt_0569]
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
jge .Lt_0507
mov word ptr [ebp-4], 0
.Lt_0507:
movsx eax, word ptr [ebp-4]
cmp eax, 20
jle .Lt_0509
mov word ptr [ebp-4], 20
.Lt_0509:
movsx eax, word ptr [ebp-8]
test eax, eax
jge .Lt_050B
mov word ptr [ebp-8], 0
.Lt_050B:
movsx eax, word ptr [ebp-8]
cmp eax, 21
jle .Lt_050D
mov word ptr [ebp-8], 21
.Lt_050D:
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
fadd qword ptr [_Lt_0569]
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
jge .Lt_050F
mov word ptr [ebp-4], 0
.Lt_050F:
movsx eax, word ptr [ebp-4]
cmp eax, 20
jle .Lt_0511
mov word ptr [ebp-4], 20
.Lt_0511:
movsx eax, word ptr [ebp-8]
test eax, eax
jge .Lt_0513
mov word ptr [ebp-8], 0
.Lt_0513:
movsx eax, word ptr [ebp-8]
cmp eax, 21
jle .Lt_0515
mov word ptr [ebp-8], 21
.Lt_0515:
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
jge .Lt_0517
mov word ptr [_DX1_SI], 1
.Lt_0517:
.Lt_0516:
movsx eax, word ptr [_DY1_SI]
cmp eax, 1
jge .Lt_0519
mov word ptr [_DY1_SI], 1
.Lt_0519:
.Lt_0518:
movsx eax, word ptr [_DX2_SI]
movsx ebx, word ptr [_AA_SI]
cmp eax, ebx
jle .Lt_051B
mov bx, word ptr [_AA_SI]
mov word ptr [_DX2_SI], bx
.Lt_051B:
.Lt_051A:
movsx ebx, word ptr [_DY2_SI]
movsx eax, word ptr [_DD_SI]
cmp ebx, eax
jle .Lt_051D
mov ax, word ptr [_DD_SI]
mov word ptr [_DY2_SI], ax
.Lt_051D:
.Lt_051C:
mov ax, word ptr [_DX1_SI]
mov word ptr [_TTX], ax
mov ax, word ptr [_DX2_SI]
mov word ptr [ebp-72], ax
jmp .Lt_051F
.Lt_0522:
mov ax, word ptr [_DY1_SI]
mov word ptr [_TTY], ax
mov ax, word ptr [_DY2_SI]
mov word ptr [ebp-76], ax
jmp .Lt_0524
.Lt_0527:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 4
push offset _Lt_052A
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
push offset _Lt_052A
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
jmp .Lt_0534
.Lt_0537:
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
jne .Lt_053A
.Lt_053B:
mov word ptr [ebp-68], 1
jmp .Lt_0538
.Lt_053A:
push 5
push offset _Lt_0137
push -1
lea eax, [ebp-180]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_053C
.Lt_053D:
mov word ptr [ebp-68], 1
jmp .Lt_0538
.Lt_053C:
push 5
push offset _Lt_013A
push -1
lea eax, [ebp-180]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_053E
.Lt_053F:
mov word ptr [ebp-68], 1
.Lt_053E:
.Lt_0538:
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [ebp-68]
test eax, eax
jle .Lt_0541
push offset _SPRITEPATH_STR
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push 8
push offset _Lt_0415
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
.Lt_0541:
.Lt_0540:
.Lt_0535:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0534:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-168]
cmp eax, ebx
jle .Lt_0537
.Lt_0536:
push 5
push offset _Lt_01DD
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0547
push offset _SPRITEPATH_STR
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 12
push offset _Lt_054A
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
.Lt_0547:
.Lt_0546:
.Lt_0525:
movsx eax, word ptr [_TTY]
inc eax
mov word ptr [_TTY], ax
.Lt_0524:
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [ebp-76]
cmp eax, ebx
jle .Lt_0527
.Lt_0526:
.Lt_0520:
movsx ebx, word ptr [_TTX]
inc ebx
mov word ptr [_TTX], bx
.Lt_051F:
movsx ebx, word ptr [_TTX]
movsx eax, word ptr [ebp-72]
cmp ebx, eax
jle .Lt_0522
.Lt_0521:
mov ax, word ptr [_DX1_SI]
mov word ptr [_TTX], ax
mov ax, word ptr [_DX2_SI]
mov word ptr [ebp-72], ax
jmp .Lt_054D
.Lt_0550:
mov ax, word ptr [_DY1_SI]
mov word ptr [_TTY], ax
mov ax, word ptr [_DY2_SI]
mov word ptr [ebp-76], ax
jmp .Lt_0552
.Lt_0555:
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
push offset _Lt_0400
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_0556
push -1
push offset _TEMPACTION_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0558
movsx eax, word ptr [_TEMPDIS_SI]
test eax, eax
jle .Lt_055A
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
fld dword ptr [_Lt_056A]
fmul dword ptr [_TEMPY2_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_056A]
fmul dword ptr [_TEMPX2_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_056A]
fmul dword ptr [_TEMPY1_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_056A]
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
fdiv qword ptr [_Lt_02EC]
fistp word ptr [ebp-84]
movsx eax, word ptr [ebp-84]
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-88], eax
jmp .Lt_055E
.Lt_0561:
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
jg .Lt_0563
fild word ptr [_T_SF]
fstp dword ptr [_TT_SF]
jmp .Lt_0562
.Lt_0563:
movsx eax, word ptr [_T_SF]
movsx ebx, word ptr [_TEMPDIS_SI]
dec ebx
cmp eax, ebx
jge .Lt_0565
push dword ptr [_Lt_056B]
pop dword ptr [_TT_SF]
jmp .Lt_0564
.Lt_0565:
movsx ebx, word ptr [_T_SF]
movsx eax, word ptr [_TEMPDIS_SI]
sub ebx, eax
inc ebx
push ebx
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TT_SF]
.Lt_0564:
.Lt_0562:
fld dword ptr [_TT_SF]
fcomp dword ptr [_Lt_0163]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0567
push 4278190080
push 4290822336
fld dword ptr [_Lt_056A]
fmul dword ptr [_TEMPY_SF]
fsub dword ptr [_TT_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_056A]
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
fld dword ptr [_Lt_056A]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_056A]
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
fld dword ptr [_Lt_056A]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_TT_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_056A]
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
fld dword ptr [_Lt_056A]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_Lt_016B]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_056A]
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
.Lt_0567:
.Lt_0566:
.Lt_055F:
movsx ebx, word ptr [_T_SF]
movsx eax, word ptr [ebp-84]
add ebx, eax
mov word ptr [_T_SF], bx
.Lt_055E:
cmp dword ptr [ebp-88], 0
jne .Lt_0568
movsx ebx, word ptr [_T_SF]
movsx eax, word ptr [ebp-80]
cmp ebx, eax
jge .Lt_0561
jmp .Lt_0560
.Lt_0568:
movsx eax, word ptr [_T_SF]
movsx ebx, word ptr [ebp-80]
cmp eax, ebx
jle .Lt_0561
.Lt_0560:
.Lt_055A:
.Lt_0559:
.Lt_0558:
.Lt_0557:
.Lt_0553:
movsx ebx, word ptr [_TTY]
inc ebx
mov word ptr [_TTY], bx
.Lt_0552:
movsx ebx, word ptr [_TTY]
movsx eax, word ptr [ebp-76]
cmp ebx, eax
jle .Lt_0555
.Lt_0554:
.Lt_054E:
movsx eax, word ptr [_TTX]
inc eax
mov word ptr [_TTX], ax
.Lt_054D:
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [ebp-72]
cmp eax, ebx
jle .Lt_0550
.Lt_054F:
.Lt_0505:
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
.Lt_056F:
push 1
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
mov word ptr [_COLR_SI], 9
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 37
push offset _Lt_0571
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
.Lt_0570:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LN_STATUS@0
_LN_STATUS@0:
.Lt_0573:
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 24
push 4
call _FRAME_STATUS@8
push 24
push 14
call _FRAME_INVENTORY@8
.Lt_0574:
ret
.balign 16

.globl _LN_FRAMSTTS@0
_LN_FRAMSTTS@0:
.Lt_0575:
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
.Lt_0576:
ret
.balign 16

.globl _LN_FRAMSTTSITMS@0
_LN_FRAMSTTSITMS@0:
.Lt_0577:
fild word ptr [_STATX_SI]
fstp dword ptr [_FRAMEX1_SF]
movsx eax, word ptr [_STATX_SI]
add eax, 14
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_FRAMEX2_SF]
push dword ptr [_Lt_0579]
pop dword ptr [_FRAMEY1_SF]
push dword ptr [_Lt_057A]
pop dword ptr [_FRAMEY2_SF]
mov word ptr [_FRAMEC1_SI], 4
mov word ptr [_FRAMEC2_SI], 12
call _LN_FRAMEPUT@0
.Lt_0578:
ret
.balign 16

.globl _LN_STTS@16
_LN_STTS@16:
push ebp
mov ebp, esp
sub esp, 216
push ebx
.Lt_057B:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_057D
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
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0595]
fadd qword ptr [_G_DFA+eax+80]
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
push offset _Lt_03D1
push -1
push 5
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push 6
push offset _Lt_0580
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
push offset _Lt_03CE
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
push offset _Lt_0585
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
push offset _Lt_0588
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
push offset _Lt_058B
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
push offset _Lt_0588
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
push offset _Lt_0590
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
push offset _Lt_0588
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
.Lt_057C:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _LN_STTSGPIC@0
_LN_STTSGPIC@0:
.Lt_0597:
.Lt_0598:
ret
.balign 16

.globl _LN_STTSITMS@0
_LN_STTSITMS@0:
.Lt_0599:
.Lt_059A:
ret
.balign 16

.globl _LN_MOVE@0
_LN_MOVE@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_059B:
push 4
push offset _Lt_03A1
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_03A1
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 9
push offset _Lt_059D
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_ARE@0
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_0156]
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
je .Lt_059F
mov word ptr [_MOVE_SI], 1
push 0
push 5
push offset _Lt_05A0
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx ebx, word ptr [_HERE_SI]
test ebx, ebx
jle .Lt_05A2
mov word ptr [_MOVE_SI], 0
.Lt_05A2:
push 0
push 5
push offset _Lt_05A0
push -1
push offset _THERE_STR
call _fb_StrAssign@20
call _LN_THERE@0
movsx ebx, word ptr [_THERE_SI]
test ebx, ebx
jle .Lt_05A4
mov word ptr [_MOVE_SI], 0
.Lt_05A4:
push 0
push 5
push offset _Lt_05A5
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
push 0
push 13
push offset _Lt_05A6
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
je .Lt_05A8
mov word ptr [_MOVE_SI], 0
.Lt_05A8:
movsx eax, word ptr [_MOVE_SI]
cmp eax, 1
jne .Lt_05AA
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
je .Lt_05AC
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_05AE
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
.Lt_05AE:
.Lt_05AD:
.Lt_05AC:
.Lt_05AB:
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0569]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_05AA:
.Lt_05A9:
.Lt_059F:
.Lt_059E:
.Lt_059C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINGMOVE@0
_LN_WINGMOVE@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_05B6:
push 4
push offset _Lt_03A1
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_03A1
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 0
push 9
push offset _Lt_059D
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_ARE@0
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_027C]
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
je .Lt_05B9
mov word ptr [_MOVE_SI], 1
movsx ebx, word ptr [_MOVE_SI]
cmp ebx, 1
jne .Lt_05BB
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
je .Lt_05BD
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_05BF
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
.Lt_05BF:
.Lt_05BE:
.Lt_05BD:
.Lt_05BC:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0282]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_05BB:
.Lt_05BA:
.Lt_05B9:
.Lt_05B8:
.Lt_05B7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_FIREMOVE@0
_LN_FIREMOVE@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_05C5:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_0156]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05C8
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
je .Lt_05CC
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_05CE
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
.Lt_05CE:
.Lt_05CD:
.Lt_05CC:
.Lt_05CB:
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_03A1
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0569]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_05CA:
.Lt_05C9:
jmp .Lt_05C7
.Lt_05C8:
call _LN_GONE@0
.Lt_05C7:
.Lt_05C6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WEBMOVE@0
_LN_WEBMOVE@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_05D2:
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
je .Lt_05D5
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_05D7
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
.Lt_05D7:
.Lt_05D6:
.Lt_05D5:
.Lt_05D4:
push 4
push offset _Lt_03A1
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_03A1
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0569]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
call _LN_SWAPDATA@0
.Lt_05D3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTFIRE@0
_LN_CASTFIRE@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_05DB:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0302]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05DE
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_05E1]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 6
push offset _Lt_05DF
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_05E0
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
push offset _Lt_03A1
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
push dword ptr [_Lt_05E2]
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
push dword ptr [_Lt_05E2]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_015E]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0175]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_05DE:
.Lt_05DD:
.Lt_05DC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTDUST@0
_LN_CASTDUST@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_05E4:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02EC]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05E7
push 4
push offset _Lt_00F5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0373]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 12
push offset _Lt_05E8
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_03A1
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
push offset _Lt_03A1
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
push dword ptr [_Lt_05E2]
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
push dword ptr [_Lt_05E2]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_015E]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0175]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0159]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_05E7:
.Lt_05E6:
.Lt_05E5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTWEB@0
_LN_CASTWEB@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_05EA:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_05EE]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05ED
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_05EF]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
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
push offset _Lt_03A1
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
.Lt_05ED:
.Lt_05EC:
.Lt_05EB:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTSPDR@0
_LN_CASTSPDR@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_05F1:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_05F5]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05F4
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_05F6]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
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
push offset _Lt_03A1
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
.Lt_05F4:
.Lt_05F3:
.Lt_05F2:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CASTCCTS@0
_LN_CASTCCTS@0:
.Lt_05F8:
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_05FA
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_01F8
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_Lt_05FB]
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
.Lt_05F9:
ret
.balign 16

.globl _LN_CASTDTBY@0
_LN_CASTDTBY@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_05FC:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0601]
fnstsw ax
test ah, 0b00000001
jnz .Lt_05FF
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0602]
fadd qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_011D
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_0600
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
push offset _Lt_03A1
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
push dword ptr [_Lt_0603]
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
.Lt_05FF:
.Lt_05FE:
.Lt_05FD:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_GONE@0
_LN_GONE@0:
.Lt_0605:
call _LN_PRFLBLNK@0
call _LN_PRFLSET@0
.Lt_0606:
ret
.balign 16

.globl _LN_DELETE2@0
_LN_DELETE2@0:
.Lt_0607:
call _LN_PRFLBLNK@0
call _LN_PRFLMAKE@0
.Lt_0608:
ret
.balign 16

.globl _LN_AUTOLEVELUP@0
_LN_AUTOLEVELUP@0:
.Lt_0609:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jne .Lt_060C
call _LN_LEVELUP@0
.Lt_060C:
.Lt_060B:
.Lt_060A:
ret
.balign 16

.globl _LN_STATGAIN@0
_LN_STATGAIN@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_060D:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+32]
fadd qword ptr [_G_DFA+ebx+16]
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+112]
fadd qword ptr [_G_DFA+ebx+24]
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
fstp qword ptr [ebp-16]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-16]
push dword ptr [ebp-12]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
.Lt_060E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STATMAX@0
_LN_STATMAX@0:
push ebx
.Lt_0611:
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+ebx+8]
fcomp qword ptr [_G_DFA+eax+88]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_0614
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
push dword ptr [_G_DFA+ebx+88]
push dword ptr [_G_DFA+ebx+92]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
.Lt_0614:
.Lt_0613:
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+ebx+16]
fcomp qword ptr [_G_DFA+eax+96]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_0616
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
push dword ptr [_G_DFA+ebx+96]
push dword ptr [_G_DFA+ebx+100]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_0616:
.Lt_0615:
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+ebx+24]
fcomp qword ptr [_G_DFA+eax+104]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_0618
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
push dword ptr [_G_DFA+ebx+104]
push dword ptr [_G_DFA+ebx+108]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
.Lt_0618:
.Lt_0617:
.Lt_0612:
pop ebx
ret
.balign 16

.globl _LN_NEXTACTION@0
_LN_NEXTACTION@0:
.Lt_0619:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jne .Lt_061C
call _LN_NEWACTION@0
call _LN_PUTACTION@0
.Lt_061E:
.Lt_061D:
jmp .Lt_061B
.Lt_061C:
call _LN_GETACTION@0
.Lt_061B:
.Lt_061A:
ret
.balign 16

.globl _LN_NEWACTION@0
_LN_NEWACTION@0:
push ebx
.Lt_061F:
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
je .Lt_0622
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
.Lt_0622:
.Lt_0621:
.Lt_0620:
pop ebx
ret
.balign 16

.globl _LN_RANDOMACTION@0
_LN_RANDOMACTION@0:
push ebx
.Lt_0625:
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
jne .Lt_0628
push 0
push 5
push offset _Lt_00F5
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
jmp .Lt_0627
.Lt_0628:
push 0
push -1
push 4
movsx eax, word ptr [_R_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrMid@12
push eax
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
.Lt_0627:
.Lt_0626:
pop ebx
ret
.balign 16

.globl _LN_GETACTION@0
_LN_GETACTION@0:
push ebx
.Lt_0629:
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_DIS_SI], ax
.Lt_062A:
pop ebx
ret
.balign 16

.globl _LN_PUTACTION@0
_LN_PUTACTION@0:
push ebx
.Lt_062B:
movsx eax, word ptr [_D_SI]
push eax
call _fb_MKL@4
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
push offset _ACTION_STR
push 4
push 5
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
.Lt_062C:
pop ebx
ret
.balign 16

.globl _LN_TEMPGET@0
_LN_TEMPGET@0:
push ebx
.Lt_062D:
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
call _fb_CVL@4
mov word ptr [_TEMPDIS_SI], ax
.Lt_062E:
pop ebx
ret
.balign 16

.globl _LN_TEMPPUT@0
_LN_TEMPPUT@0:
push ebx
.Lt_062F:
movsx eax, word ptr [_TEMPD_SI]
push eax
call _fb_MKL@4
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
push offset _TEMPACTION_STR
push 4
push 5
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssignMid@16
.Lt_0630:
pop ebx
ret
.balign 16

.globl _LN_INBOUNDS@0
_LN_INBOUNDS@0:
push ebx
push esi
.Lt_0631:
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
je .Lt_0634
mov word ptr [_INBOUNDS_SI], 1
jmp .Lt_0633
.Lt_0634:
mov word ptr [_INBOUNDS_SI], 0
.Lt_0633:
.Lt_0632:
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
.Lt_0639:
mov word ptr [_HAVEIT_SI], 0
push 0
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
jmp .Lt_063C
.Lt_063F:
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
jne .Lt_0641
movsx eax, word ptr [_HAVEIT_SI]
inc eax
mov word ptr [_HAVEIT_SI], ax
.Lt_0641:
.Lt_0640:
.Lt_063D:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_063C:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_063F
.Lt_063E:
.Lt_063A:
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
.Lt_0642:
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
jmp .Lt_0645
.Lt_0648:
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
jne .Lt_064A
movsx eax, word ptr [_HASIT_SI]
inc eax
mov word ptr [_HASIT_SI], ax
.Lt_064A:
.Lt_0649:
.Lt_0646:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_0645:
movsx eax, word ptr [_TT_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_0648
.Lt_0647:
.Lt_0643:
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
.Lt_064B:
push 0
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
jmp .Lt_064E
.Lt_0651:
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
jne .Lt_0653
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
.Lt_0653:
.Lt_0652:
.Lt_064F:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_064E:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_0651
.Lt_0650:
push 0
push -1
push offset _T_STR
push -1
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
.Lt_064C:
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
.Lt_0655:
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
jmp .Lt_0658
.Lt_065B:
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
jne .Lt_065D
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
.Lt_065D:
.Lt_065C:
.Lt_0659:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_0658:
movsx eax, word ptr [_TT_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_065B
.Lt_065A:
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
.Lt_0656:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HAVEGOTIT@0
_LN_HAVEGOTIT@0:
push ebx
.Lt_065F:
push 0
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _HAVEGOTIT_STR
push -1
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrConcatAssign@20
.Lt_0660:
pop ebx
ret
.balign 16

.globl _LN_HASGOTIT@0
_LN_HASGOTIT@0:
push ebx
push esi
.Lt_0661:
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
.Lt_0662:
pop esi
pop ebx
ret
.balign 16

.globl _LN_WINEXP@0
_LN_WINEXP@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_0663:
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
jle .Lt_0666
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
push offset _Lt_0667
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
movsx ecx, word ptr [_GETIT_SI]
push ecx
fild dword ptr [esp]
add esp, 4
fadd qword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
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
.Lt_0666:
.Lt_0665:
.Lt_0664:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WINDGGR@0
_LN_WINDGGR@0:
.Lt_0669:
push 0
push 5
push offset _Lt_0114
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_066A:
ret
.balign 16

.globl _LN_WINPIKE@0
_LN_WINPIKE@0:
.Lt_066B:
push 0
push 5
push offset _Lt_012C
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_066C:
ret
.balign 16

.globl _LN_WINGRPL@0
_LN_WINGRPL@0:
.Lt_066D:
push 0
push 5
push offset _Lt_0400
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_066E:
ret
.balign 16

.globl _LN_WINSEED@0
_LN_WINSEED@0:
.Lt_066F:
push 0
push 5
push offset _Lt_0405
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0670:
ret
.balign 16

.globl _LN_WINKEY1@0
_LN_WINKEY1@0:
.Lt_0671:
push 0
push 5
push offset _Lt_014D
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0672:
ret
.balign 16

.globl _LN_WINKEY2@0
_LN_WINKEY2@0:
.Lt_0673:
push 0
push 5
push offset _Lt_014E
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_0674:
ret
.balign 16

.globl _LN_WINIT@0
_LN_WINIT@0:
.Lt_0675:
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
jne .Lt_0678
jmp .Lt_0676
.Lt_0678:
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jle .Lt_067A
jmp .Lt_0676
.Lt_067A:
call _LN_GETIT@0
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
.Lt_0676:
ret
.balign 16

.globl _LN_AM@0
_LN_AM@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_067B:
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
jmp .Lt_067E
.Lt_0681:
push -1
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
jne .Lt_0683
movsx eax, word ptr [_AM_SI]
inc eax
mov word ptr [_AM_SI], ax
.Lt_0683:
.Lt_0682:
.Lt_067F:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_067E:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_0681
.Lt_0680:
.Lt_067C:
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
.Lt_0684:
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
jmp .Lt_0687
.Lt_068A:
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
jne .Lt_068C
movsx eax, word ptr [_ARE_SI]
inc eax
mov word ptr [_ARE_SI], ax
.Lt_068C:
.Lt_068B:
.Lt_0688:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0687:
movsx eax, word ptr [_T_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_068A
.Lt_0689:
.Lt_0685:
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
.Lt_068D:
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
jmp .Lt_0690
.Lt_0693:
push -1
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
jne .Lt_0695
movsx eax, word ptr [_HERE_SI]
inc eax
mov word ptr [_HERE_SI], ax
.Lt_0695:
.Lt_0694:
.Lt_0691:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0690:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_0693
.Lt_0692:
.Lt_068E:
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
.Lt_0696:
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
jmp .Lt_0699
.Lt_069C:
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
jne .Lt_069E
movsx eax, word ptr [_THERE_SI]
inc eax
mov word ptr [_THERE_SI], ax
.Lt_069E:
.Lt_069D:
.Lt_069A:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0699:
movsx eax, word ptr [_T_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_069C
.Lt_069B:
.Lt_0697:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_BLANKCHECK@0
_LN_BLANKCHECK@0:
.Lt_069F:
push 0
push -1
push offset _BLANKCHECK_STR
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_INBOUNDS@0
movsx eax, word ptr [_INBOUNDS_SI]
cmp eax, 1
jne .Lt_06A2
call _LN_ARE@0
jmp .Lt_06A1
.Lt_06A2:
mov word ptr [_ARE_SI], -1
.Lt_06A1:
mov ax, word ptr [_ARE_SI]
mov word ptr [_BLANKCHECK_SI], ax
.Lt_06A0:
ret
.balign 16

.globl _LN_OKBUTTON@0
_LN_OKBUTTON@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_06A3:
push dword ptr [_CLV_BUFFER_MENU]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 4
push offset _Lt_06A5
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
.Lt_06A4:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WWAIT@0
_LN_WWAIT@0:
push ebx
.Lt_06A7:
.Lt_06A9:
call _LN_BUTTONWAIT@0
.Lt_06AB:
push 5
push offset _Lt_06AC
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
jne .Lt_06A9
.Lt_06AA:
push 0
push 2
push offset _Lt_0226
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_06A8:
pop ebx
ret
.balign 16

.globl _LN_BUTTONWAIT@0
_LN_BUTTONWAIT@0:
.Lt_06B1:
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_06B2:
ret
.balign 16

.globl _LN_COMMANDWAIT@0
_LN_COMMANDWAIT@0:
push ebx
.Lt_06B3:
push 0
push 3
push offset _Lt_030B
push -1
push offset _C_STR
call _fb_StrAssign@20
mov word ptr [_LB_SI], 0
.Lt_06B5:
push 3
push offset _Lt_030B
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
je .Lt_06B6
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_06B5
.Lt_06B6:
.Lt_06B4:
pop ebx
ret
.balign 16

.globl _LN_FRAMEPUT@0
_LN_FRAMEPUT@0:
.Lt_06B9:
push 0
push 4
push 4278190080
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_06BB]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_06BB]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 2
push 4278190080
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_056B]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_056B]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_0163]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_06BC]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_06BD]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4286808963
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_015C]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
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
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_06BD]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_06BC]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4286808963
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0163]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
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
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_06BE]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_06BE]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4290822336
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0155]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
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
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_06BE]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_06BE]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0155]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_0155]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_06BF]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_06BE]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_06C0]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_056A]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_0155]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
.Lt_06BA:
ret
.balign 16

.globl _LN_AVGFRAME@0
_LN_AVGFRAME@0:
push ebp
mov ebp, esp
sub esp, 32
.Lt_06C1:
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
.Lt_06C2:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_SCREENSET@0
_LN_SCREENSET@0:
.Lt_06C3:
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_06C4:
ret
.balign 16

.globl _LN_FINDCRSR@0
_LN_FINDCRSR@0:
.Lt_06C5:
call _fb_GetY@0
mov word ptr [_CRSRY_SI], ax
push 0
call _fb_Pos@4
mov word ptr [_CRSRX_SI], ax
.Lt_06C6:
ret
.balign 16

.globl _LN_SHOWTEXT@8
_LN_SHOWTEXT@8:
push ebp
mov ebp, esp
.Lt_06C7:
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
.Lt_06C8:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LN_PRFLBLNK@0
_LN_PRFLBLNK@0:
.Lt_06C9:
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
.Lt_06CA:
ret
.balign 16

.globl _LN_PRFLSET@0
_LN_PRFLSET@0:
push ebx
.Lt_06CB:
push 0
push -1
push offset _PRFLIDTY_STR
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLACTN_STR
push -1
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrAssign@20
push offset _PRFLGPIC_STR
push 4
push 1
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
push 0
push -1
push offset _PRFLCMND_STR
push -1
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLGPICACTN_STR
push -1
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssign@20
push 0
push -1
push offset _PRFLACTNCT_STR
push -1
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+60]
push ebx
call _fb_StrAssign@20
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLIDTY_SF]
fstp qword ptr [_G_DFA+eax]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLHP_SF]
fstp qword ptr [_G_DFA+eax+8]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLSTR_SF]
fstp qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLESS_SF]
fstp qword ptr [_G_DFA+eax+24]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLSPD_SF]
fstp qword ptr [_G_DFA+eax+32]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLARMR_SF]
fstp qword ptr [_G_DFA+eax+40]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLEXP_SF]
fstp qword ptr [_G_DFA+eax+48]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLVALU_SF]
fstp qword ptr [_G_DFA+eax+56]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLPIRC_SF]
fstp qword ptr [_G_DFA+eax+64]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLCHCK_SF]
fstp qword ptr [_G_DFA+eax+72]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLLV_SF]
fstp qword ptr [_G_DFA+eax+80]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLHPMAX_SF]
fstp qword ptr [_G_DFA+eax+88]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLSTRMAX_SF]
fstp qword ptr [_G_DFA+eax+96]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLESSMAX_SF]
fstp qword ptr [_G_DFA+eax+104]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLESSSPD_SF]
fstp qword ptr [_G_DFA+eax+112]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLEVAD_SF]
fstp qword ptr [_G_DFA+eax+120]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld dword ptr [_PRFLBLNK_SF]
fstp qword ptr [_G_DFA+eax+128]
.Lt_06CC:
pop ebx
ret
.balign 16

.globl _LN_PRFLMAKE@0
_LN_PRFLMAKE@0:
push ebx
push esi
.Lt_06CD:
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
.Lt_06CE:
pop esi
pop ebx
ret
.balign 16

.globl _LN_ACTNCURE@0
_LN_ACTNCURE@0:
.Lt_06CF:
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
jne .Lt_06D2
jmp .Lt_06D0
.Lt_06D2:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06D4
jmp .Lt_06D0
.Lt_06D4:
push 0
push 29
push offset _Lt_06D5
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06D7
call _LN_USECURE@0
jmp .Lt_06D0
.Lt_06D7:
.Lt_06D6:
.Lt_06D0:
ret
.balign 16

.globl _LN_ACTNBITE@0
_LN_ACTNBITE@0:
.Lt_06D8:
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
jne .Lt_06DB
jmp .Lt_06D9
.Lt_06DB:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06DD
jmp .Lt_06D9
.Lt_06DD:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06DF
call _LN_ATTKBITE@0
jmp .Lt_06D9
.Lt_06DF:
.Lt_06DE:
.Lt_06D9:
ret
.balign 16

.globl _LN_ACTNPNCH@0
_LN_ACTNPNCH@0:
.Lt_06E0:
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
jne .Lt_06E3
jmp .Lt_06E1
.Lt_06E3:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06E5
jmp .Lt_06E1
.Lt_06E5:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06E7
call _LN_ATTKPNCH@0
jmp .Lt_06E1
.Lt_06E7:
.Lt_06E6:
.Lt_06E1:
ret
.balign 16

.globl _LN_ACTNKICK@0
_LN_ACTNKICK@0:
.Lt_06E8:
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
jne .Lt_06EB
jmp .Lt_06E9
.Lt_06EB:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06ED
jmp .Lt_06E9
.Lt_06ED:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06EF
call _LN_ATTKKICK@0
jmp .Lt_06E9
.Lt_06EF:
.Lt_06EE:
.Lt_06E9:
ret
.balign 16

.globl _LN_ACTNDGGR@0
_LN_ACTNDGGR@0:
.Lt_06F0:
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
jne .Lt_06F3
jmp .Lt_06F1
.Lt_06F3:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06F5
jmp .Lt_06F1
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
jle .Lt_06F7
call _LN_ATTKDGGR@0
jmp .Lt_06F1
.Lt_06F7:
.Lt_06F6:
.Lt_06F1:
ret
.balign 16

.globl _LN_ACTNPIKE@0
_LN_ACTNPIKE@0:
.Lt_06F8:
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
jne .Lt_06FB
jmp .Lt_06F9
.Lt_06FB:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06FD
jmp .Lt_06F9
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
jle .Lt_06FF
call _LN_ATTKPIKE@0
jmp .Lt_06F9
.Lt_06FF:
.Lt_06FE:
.Lt_06F9:
ret
.balign 16

.globl _LN_ACTNVNOM@0
_LN_ACTNVNOM@0:
.Lt_0700:
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
jne .Lt_0703
jmp .Lt_0701
.Lt_0703:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0705
jmp .Lt_0701
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
jle .Lt_0707
call _LN_ATTKVNOM@0
jmp .Lt_0701
.Lt_0707:
.Lt_0706:
.Lt_0701:
ret
.balign 16

.globl _LN_ACTNFIRE@0
_LN_ACTNFIRE@0:
.Lt_0708:
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
jne .Lt_070B
jmp .Lt_0709
.Lt_070B:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_070D
call _LN_CASTFIRE@0
jmp .Lt_0709
.Lt_070D:
.Lt_070C:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_070F
call _LN_ATTKFIRE@0
jmp .Lt_0709
.Lt_070F:
.Lt_070E:
.Lt_0709:
ret
.balign 16

.globl _LN_ACTNDUST@0
_LN_ACTNDUST@0:
.Lt_0710:
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
jne .Lt_0713
jmp .Lt_0711
.Lt_0713:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0715
call _LN_CASTDUST@0
jmp .Lt_0711
.Lt_0715:
.Lt_0714:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0717
call _LN_USESLEP@0
jmp .Lt_0711
.Lt_0717:
.Lt_0716:
.Lt_0711:
ret
.balign 16

.globl _LN_ACTNWEB@0
_LN_ACTNWEB@0:
.Lt_0718:
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
jne .Lt_071B
jmp .Lt_0719
.Lt_071B:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_071D
call _LN_CASTWEB@0
jmp .Lt_0719
.Lt_071D:
.Lt_071C:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_071F
call _LN_ATTKWEB@0
jmp .Lt_0719
.Lt_071F:
.Lt_071E:
.Lt_0719:
ret
.balign 16

.globl _LN_ACTNSPDR@0
_LN_ACTNSPDR@0:
.Lt_0720:
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
jne .Lt_0723
jmp .Lt_0721
.Lt_0723:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0725
call _LN_CASTSPDR@0
jmp .Lt_0721
.Lt_0725:
.Lt_0724:
.Lt_0721:
ret
.balign 16

.globl _LN_ACTNCCTS@0
_LN_ACTNCCTS@0:
.Lt_0726:
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
jne .Lt_0729
jmp .Lt_0727
.Lt_0729:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_072B
call _LN_CASTCCTS@0
jmp .Lt_0727
.Lt_072B:
.Lt_072A:
.Lt_0727:
ret
.balign 16

.globl _LN_ACTNDTBY@0
_LN_ACTNDTBY@0:
.Lt_072C:
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
jne .Lt_072F
jmp .Lt_072D
.Lt_072F:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0731
call _LN_CASTDTBY@0
jmp .Lt_072D
.Lt_0731:
.Lt_0730:
.Lt_072D:
ret
.balign 16

.globl _LN_ACTNMOVE@0
_LN_ACTNMOVE@0:
.Lt_0732:
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
jne .Lt_0735
jmp .Lt_0733
.Lt_0735:
call _LN_MOVE@0
.Lt_0733:
ret
.balign 16

.globl _LN_ACTNWING@0
_LN_ACTNWING@0:
.Lt_0736:
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
jne .Lt_0739
jmp .Lt_0737
.Lt_0739:
call _LN_WINGMOVE@0
.Lt_0737:
ret
.balign 16

.globl _LN_ACTNWSTF@0
_LN_ACTNWSTF@0:
push ebx
.Lt_073A:
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
jle .Lt_073D
mov word ptr [_DIS_SI], 2
push 0
push 9
push offset _Lt_059D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_073F
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
jmp .Lt_073B
.Lt_073F:
.Lt_073E:
.Lt_073D:
.Lt_073C:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0741
call _LN_ATTKWSTF@0
.Lt_0741:
.Lt_0740:
.Lt_073B:
pop ebx
ret
.balign 16

.globl _LN_ACTNKEY1@0
_LN_ACTNKEY1@0:
.Lt_0742:
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
jle .Lt_0745
push 0
push 5
push offset _Lt_0134
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0747
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
.Lt_0747:
.Lt_0746:
.Lt_0745:
.Lt_0744:
.Lt_0743:
ret
.balign 16

.globl _LN_ACTNKEY2@0
_LN_ACTNKEY2@0:
.Lt_0748:
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
jle .Lt_074B
push 0
push 5
push offset _Lt_0137
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_074D
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
.Lt_074D:
.Lt_074C:
.Lt_074B:
.Lt_074A:
.Lt_0749:
ret
.balign 16

.globl _LN_ACTNISPT@0
_LN_ACTNISPT@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
.Lt_074E:
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
je .Lt_0751
jmp .Lt_074F
.Lt_0751:
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
jne .Lt_0753
call _LN_MERCHANT@0
jmp .Lt_074F
.Lt_0753:
.Lt_0752:
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
jne .Lt_0755
call _LN_TALK0001@0
jmp .Lt_074F
.Lt_0755:
.Lt_0754:
push 0
push 9
push offset _Lt_0756
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0758
call _LN_PILLAGE@0
push 0
push 5
push offset _Lt_0389
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_075A
call _LN_DELETE2@0
.Lt_075A:
.Lt_0759:
jmp .Lt_074F
.Lt_0758:
.Lt_0757:
push 0
push 5
push offset _Lt_012E
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_075C
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
jmp .Lt_075E
.Lt_0761:
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
jne .Lt_0764
.Lt_0765:
mov word ptr [ebp-4], 1
jmp .Lt_0762
.Lt_0764:
push 5
push offset _Lt_0137
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0766
.Lt_0767:
mov word ptr [ebp-4], 1
jmp .Lt_0762
.Lt_0766:
push 5
push offset _Lt_013A
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0768
.Lt_0769:
mov word ptr [ebp-4], 1
.Lt_0768:
.Lt_0762:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_075F:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_075E:
movsx eax, word ptr [_T_SI]
movsx ecx, word ptr [ebp-8]
cmp eax, ecx
jle .Lt_0761
.Lt_0760:
movsx ecx, word ptr [ebp-4]
test ecx, ecx
jne .Lt_076B
call _LN_DELETE2@0
.Lt_076B:
.Lt_076A:
jmp .Lt_074F
.Lt_075C:
.Lt_075B:
.Lt_074F:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNFIREMOVE@0
_LN_ACTNFIREMOVE@0:
.Lt_076E:
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_059D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0771
call _LN_GONE@0
jmp .Lt_076F
.Lt_0771:
.Lt_0770:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0773
call _LN_FIREMOVE@0
jmp .Lt_076F
.Lt_0773:
.Lt_0772:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0775
call _LN_ATTKBURN@0
call _LN_GONE@0
jmp .Lt_076F
.Lt_0775:
.Lt_0774:
call _LN_GONE@0
.Lt_076F:
ret
.balign 16

.globl _LN_ACTNDUSTMOVE@0
_LN_ACTNDUSTMOVE@0:
.Lt_0776:
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_059D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0779
call _LN_GONE@0
jmp .Lt_0777
.Lt_0779:
.Lt_0778:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_077B
call _LN_FIREMOVE@0
jmp .Lt_0777
.Lt_077B:
.Lt_077A:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_077D
call _LN_USESLEP@0
call _LN_GONE@0
jmp .Lt_0777
.Lt_077D:
.Lt_077C:
call _LN_GONE@0
.Lt_0777:
ret
.balign 16

.globl _LN_ACTNWEBMOVE@0
_LN_ACTNWEBMOVE@0:
.Lt_077E:
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_059D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0781
jmp .Lt_077F
.Lt_0781:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0783
call _LN_WEBMOVE@0
jmp .Lt_077F
.Lt_0783:
.Lt_0782:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0785
call _LN_ATTKTNGL@0
call _LN_GONE@0
jmp .Lt_077F
.Lt_0785:
.Lt_0784:
.Lt_077F:
ret
.balign 16

.globl _LN_ACTNGRPL@0
_LN_ACTNGRPL@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0786:
movsx eax, word ptr [_DIS_SI]
cmp eax, 3
jne .Lt_0789
push 0
push 5
push offset _Lt_0556
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
call _LN_PUTACTION@0
call _LN_ACTNRAPL@0
jmp .Lt_0787
.Lt_0789:
.Lt_0788:
movsx eax, word ptr [_DIS_SI]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
mov ebx, eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_02F4]
fnstsw ax
test ah, 0b00000001
setnz al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_078B
push 0
push 9
push offset _Lt_059D
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
call _LN_PUTACTION@0
jmp .Lt_0787
.Lt_078B:
.Lt_078A:
movsx eax, word ptr [_DIS_SI]
test eax, eax
jne .Lt_078D
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0799]
fadd qword ptr [_G_DFA+eax+16]
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-8]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-8]
push dword ptr [ebp-4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_078D:
.Lt_078C:
movsx eax, word ptr [_DIS_SI]
cmp eax, 3
jge .Lt_078F
movsx eax, word ptr [_DIS_SI]
inc eax
mov word ptr [_DIS_SI], ax
.Lt_078F:
.Lt_078E:
push 0
push 9
push offset _Lt_059D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
push 4
push offset _Lt_02C7
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0400
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
cmp ebx, -1
jne .Lt_0791
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
jmp .Lt_0787
.Lt_0791:
.Lt_0790:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0793
call _LN_PUTACTION@0
jmp .Lt_0787
.Lt_0793:
.Lt_0792:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0795
call _LN_PUTACTION@0
push 0
push 5
push offset _Lt_0556
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push offset _Lt_02C7
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0400
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_PUTACTION@0
call _LN_ATTKLASH@0
jmp .Lt_0787
.Lt_0795:
.Lt_0794:
push 0
push 9
push offset _Lt_0796
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0798
push 0
push 5
push offset _Lt_0556
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push offset _Lt_02C7
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0400
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
call _LN_PUTACTION@0
jmp .Lt_0787
.Lt_0798:
.Lt_0797:
.Lt_0787:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNRAPL@0
_LN_ACTNRAPL@0:
push ebx
.Lt_079D:
push 4
push offset _Lt_02C7
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
push 4
push offset _Lt_0400
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jne .Lt_07A0
push 0
push 9
push offset _Lt_059D
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
call _fb_StrAssignMid@16
jmp .Lt_079E
.Lt_07A0:
.Lt_079F:
push 0
push 9
push offset _Lt_059D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
cmp ebx, -1
jne .Lt_07A2
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jle .Lt_07A4
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_07A4:
.Lt_07A3:
jmp .Lt_079E
.Lt_07A2:
.Lt_07A1:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_07A6
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jle .Lt_07A8
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_07A8:
.Lt_07A7:
.Lt_07A6:
.Lt_07A5:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_07AA
call _LN_ATTKLASH@0
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
jmp .Lt_079E
.Lt_07AA:
.Lt_07A9:
push 0
push 9
push offset _Lt_0796
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_07AC
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_059D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jne .Lt_07AE
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
jmp .Lt_079E
.Lt_07AE:
.Lt_07AD:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_07B0
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
je .Lt_07B2
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_07B4
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
.Lt_07B4:
.Lt_07B3:
.Lt_07B2:
.Lt_07B1:
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
jmp .Lt_079E
.Lt_07B0:
.Lt_07AF:
.Lt_07AC:
.Lt_07AB:
.Lt_079E:
pop ebx
ret
.balign 16

.globl _LN_CRTNIMP@0
_LN_CRTNIMP@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_07B7:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_07B9
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_07BC
.Lt_07BD:
call _LN_ACTNMOVE@0
jmp .Lt_07BA
.Lt_07BC:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_07BE
.Lt_07BF:
call _LN_ACTNFIRE@0
jmp .Lt_07BA
.Lt_07BE:
cmp dword ptr [ebp-4], 1953526633
jne .Lt_07C0
.Lt_07C1:
call _LN_ACTNISPT@0
jmp .Lt_07BA
.Lt_07C0:
cmp dword ptr [ebp-4], 1735289207
jne .Lt_07C2
.Lt_07C4:
call _LN_ACTNWING@0
.Lt_07C2:
.Lt_07BA:
call _LN_AUTOLEVELUP@0
.Lt_07B8:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNFIRE@0
_LN_CRTNFIRE@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_07C5:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 0
push 29
push offset _Lt_07C7
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_07CA
.Lt_07CB:
call _LN_ACTNFIREMOVE@0
.Lt_07CA:
.Lt_07C8:
.Lt_07C6:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNDUST@0
_LN_CRTNDUST@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_07CC:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 0
push 25
push offset _Lt_07CE
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_07D1
.Lt_07D2:
call _LN_ACTNDUSTMOVE@0
.Lt_07D1:
.Lt_07CF:
.Lt_07CD:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNSHKT@0
_LN_CRTNSHKT@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_07D3:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_07D5
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_07D8
.Lt_07D9:
call _LN_ACTNMOVE@0
jmp .Lt_07D6
.Lt_07D8:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_07DA
.Lt_07DB:
call _LN_ACTNFIRE@0
jmp .Lt_07D6
.Lt_07DA:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_07DC
.Lt_07DD:
call _LN_ACTNBITE@0
jmp .Lt_07D6
.Lt_07DC:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_07DE
.Lt_07DF:
call _LN_ACTNPNCH@0
jmp .Lt_07D6
.Lt_07DE:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_07E0
.Lt_07E1:
call _LN_ACTNKICK@0
jmp .Lt_07D6
.Lt_07E0:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_07E2
.Lt_07E3:
call _LN_ACTNDGGR@0
jmp .Lt_07D6
.Lt_07E2:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_07E4
.Lt_07E5:
call _LN_ACTNPIKE@0
.Lt_07E4:
.Lt_07D6:
call _LN_AUTOLEVELUP@0
.Lt_07D4:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNEMGD@0
_LN_CRTNEMGD@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_07E6:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_07D5
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_07EA
.Lt_07EB:
call _LN_ACTNMOVE@0
jmp .Lt_07E8
.Lt_07EA:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_07EC
.Lt_07ED:
call _LN_ACTNFIRE@0
jmp .Lt_07E8
.Lt_07EC:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_07EE
.Lt_07EF:
call _LN_ACTNBITE@0
jmp .Lt_07E8
.Lt_07EE:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_07F0
.Lt_07F1:
call _LN_ACTNPNCH@0
jmp .Lt_07E8
.Lt_07F0:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_07F2
.Lt_07F3:
call _LN_ACTNKICK@0
jmp .Lt_07E8
.Lt_07F2:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_07F4
.Lt_07F5:
call _LN_ACTNDGGR@0
jmp .Lt_07E8
.Lt_07F4:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_07F6
.Lt_07F7:
call _LN_ACTNPIKE@0
.Lt_07F6:
.Lt_07E8:
call _LN_AUTOLEVELUP@0
.Lt_07E7:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNSPDR@0
_LN_CRTNSPDR@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_07F8:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_07FA
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_07FD
.Lt_07FE:
call _LN_ACTNMOVE@0
jmp .Lt_07FB
.Lt_07FD:
cmp dword ptr [ebp-4], 1600284023
jne .Lt_07FF
.Lt_0800:
call _LN_ACTNWEB@0
jmp .Lt_07FB
.Lt_07FF:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_0801
.Lt_0802:
call _LN_ACTNBITE@0
jmp .Lt_07FB
.Lt_0801:
cmp dword ptr [ebp-4], 1836019318
jne .Lt_0803
.Lt_0804:
call _LN_ACTNKICK@0
.Lt_0803:
.Lt_07FB:
call _LN_AUTOLEVELUP@0
.Lt_07F9:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNWEB@0
_LN_CRTNWEB@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0805:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 5
push offset _Lt_03A1
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0808
call _LN_NEXTACTION@0
.Lt_0808:
.Lt_0807:
push 0
push 29
push offset _Lt_0809
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_080C
.Lt_080D:
call _LN_ACTNWEBMOVE@0
jmp .Lt_080A
.Lt_080C:
cmp dword ptr [ebp-4], 1919185011
jne .Lt_080E
.Lt_080F:
call _LN_ACTNSPDR@0
.Lt_080E:
.Lt_080A:
call _LN_AUTOLEVELUP@0
.Lt_0806:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNDTBY@0
_LN_CRTNDTBY@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0810:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0812
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_0815
.Lt_0816:
call _LN_ACTNMOVE@0
jmp .Lt_0813
.Lt_0815:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_0817
.Lt_0818:
call _LN_ACTNFIRE@0
jmp .Lt_0813
.Lt_0817:
cmp dword ptr [ebp-4], 2036495460
jne .Lt_0819
.Lt_081A:
call _LN_ACTNDTBY@0
jmp .Lt_0813
.Lt_0819:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_081B
.Lt_081C:
call _LN_ACTNBITE@0
jmp .Lt_0813
.Lt_081B:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_081D
.Lt_081E:
call _LN_ACTNKICK@0
jmp .Lt_0813
.Lt_081D:
cmp dword ptr [ebp-4], 1953723748
jne .Lt_081F
.Lt_0820:
call _LN_ACTNDUST@0
.Lt_081F:
.Lt_0813:
call _LN_AUTOLEVELUP@0
.Lt_0811:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNGRML@0
_LN_CRTNGRML@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0821:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_0823
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_0826
.Lt_0827:
call _LN_ACTNMOVE@0
jmp .Lt_0824
.Lt_0826:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_0828
.Lt_0829:
call _LN_ACTNFIRE@0
jmp .Lt_0824
.Lt_0828:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_082A
.Lt_082B:
call _LN_ACTNBITE@0
jmp .Lt_0824
.Lt_082A:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_082C
.Lt_082D:
call _LN_ACTNPNCH@0
jmp .Lt_0824
.Lt_082C:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_082E
.Lt_082F:
call _LN_ACTNKICK@0
jmp .Lt_0824
.Lt_082E:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_0830
.Lt_0831:
call _LN_ACTNDGGR@0
jmp .Lt_0824
.Lt_0830:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_0832
.Lt_0833:
call _LN_ACTNPIKE@0
.Lt_0832:
.Lt_0824:
call _LN_AUTOLEVELUP@0
.Lt_0822:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNPNDX@0
_LN_CRTNPNDX@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0834:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 37
push offset _Lt_0836
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_0839
.Lt_083A:
call _LN_ACTNMOVE@0
jmp .Lt_0837
.Lt_0839:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_083B
.Lt_083C:
call _LN_ACTNFIRE@0
jmp .Lt_0837
.Lt_083B:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_083D
.Lt_083E:
call _LN_ACTNBITE@0
jmp .Lt_0837
.Lt_083D:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_083F
.Lt_0840:
call _LN_ACTNPNCH@0
jmp .Lt_0837
.Lt_083F:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_0841
.Lt_0842:
call _LN_ACTNKICK@0
jmp .Lt_0837
.Lt_0841:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_0843
.Lt_0844:
call _LN_ACTNDGGR@0
jmp .Lt_0837
.Lt_0843:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_0845
.Lt_0846:
call _LN_ACTNPIKE@0
jmp .Lt_0837
.Lt_0845:
cmp dword ptr [ebp-4], 1919185011
jne .Lt_0847
.Lt_0848:
call _LN_ACTNSPDR@0
jmp .Lt_0837
.Lt_0847:
cmp dword ptr [ebp-4], 1600284023
jne .Lt_0849
.Lt_084A:
call _LN_ACTNWEB@0
jmp .Lt_0837
.Lt_0849:
cmp dword ptr [ebp-4], 1836019318
jne .Lt_084B
.Lt_084C:
call _LN_ACTNVNOM@0
jmp .Lt_0837
.Lt_084B:
cmp dword ptr [ebp-4], 1701999971
jne .Lt_084D
.Lt_084E:
call _LN_ACTNCURE@0
jmp .Lt_0837
.Lt_084D:
cmp dword ptr [ebp-4], 1953526633
jne .Lt_084F
.Lt_0850:
call _LN_ACTNISPT@0
jmp .Lt_0837
.Lt_084F:
cmp dword ptr [ebp-4], 1819308647
jne .Lt_0851
.Lt_0852:
call _LN_ACTNGRPL@0
jmp .Lt_0837
.Lt_0851:
cmp dword ptr [ebp-4], 1819304306
jne .Lt_0853
.Lt_0854:
call _LN_ACTNRAPL@0
jmp .Lt_0837
.Lt_0853:
cmp dword ptr [ebp-4], 1684366707
jne .Lt_0855
.Lt_0856:
call _LN_ACTNCCTS@0
jmp .Lt_0837
.Lt_0855:
cmp dword ptr [ebp-4], 1718907767
jne .Lt_0857
.Lt_0858:
call _LN_ACTNWSTF@0
jmp .Lt_0837
.Lt_0857:
cmp dword ptr [ebp-4], 1735289207
jne .Lt_0859
.Lt_085A:
call _LN_ACTNWING@0
jmp .Lt_0837
.Lt_0859:
cmp dword ptr [ebp-4], 830039403
jne .Lt_085B
.Lt_085C:
call _LN_ACTNKEY1@0
jmp .Lt_0837
.Lt_085B:
cmp dword ptr [ebp-4], 846816619
jne .Lt_085D
.Lt_085E:
call _LN_ACTNKEY2@0
.Lt_085D:
.Lt_0837:
call _LN_AUTOLEVELUP@0
.Lt_0835:
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
.Lt_085F:
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
push offset _Lt_05A0
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx eax, word ptr [_HERE_SI]
test eax, eax
jle .Lt_0862
push 4
push offset _Lt_05A5
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
.Lt_0862:
.Lt_0861:
push 0
push 5
push offset _Lt_0863
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx ebx, word ptr [_HERE_SI]
test ebx, ebx
jle .Lt_0865
push 4
push offset _Lt_0866
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
.Lt_0865:
.Lt_0864:
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1684366707
jne .Lt_0869
.Lt_086A:
call _LN_ACTNCCTS@0
.Lt_0869:
.Lt_0867:
call _LN_AUTOLEVELUP@0
.Lt_0860:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNBLDR@0
_LN_CRTNBLDR@0:
push ebx
.Lt_086B:
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
push offset _Lt_05A5
push -1
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_086E
push 4
push offset _Lt_086F
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
call _LN_GONE@0
jmp .Lt_086C
.Lt_086E:
.Lt_086D:
push 5
push offset _Lt_05A0
push -1
push 4
push 5
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrMid@12
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0871
push 4
push offset _Lt_0863
call _fb_StrAllocTempDescZEx@8
push eax
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+24]
push ebx
call _fb_StrAssignMid@16
call _LN_GONE@0
jmp .Lt_086C
.Lt_0871:
.Lt_0870:
call _LN_AUTOLEVELUP@0
.Lt_086C:
pop ebx
ret
.balign 16

.globl _CINPUT@0
_CINPUT@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0872:
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
jne .Lt_0875
push 0
push 3
push offset _Lt_030B
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_0875:
push 2
push offset _Lt_0876
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
je .Lt_0878
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
push offset _Lt_087A
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
push offset _Lt_0879
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
.Lt_0878:
.Lt_0877:
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
je .Lt_087E
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
push offset _Lt_087A
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
push offset _Lt_087F
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
.Lt_087E:
.Lt_087D:
push offset _YMOUSE_SI
push offset _XMOUSE_SI
push offset _RB_SI
push offset _LB_SI
call _MOUSESTATUS@16
movsx eax, word ptr [_YMOUSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_02EC]
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
fdiv qword ptr [_Lt_02EC]
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
je .Lt_0883
mov cx, word ptr [_LB_SI]
mov word ptr [_LLB_SI], cx
mov cx, word ptr [_LB_SI]
mov word ptr [_L1B_SI], cx
jmp .Lt_0882
.Lt_0883:
mov word ptr [_LB_SI], 0
.Lt_0882:
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
je .Lt_0885
mov ax, word ptr [_RB_SI]
mov word ptr [_RRB_SI], ax
mov ax, word ptr [_RB_SI]
mov word ptr [_R1B_SI], ax
jmp .Lt_0884
.Lt_0885:
mov word ptr [_RB_SI], 0
.Lt_0884:
.Lt_0873:
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
.Lt_0890:
push -1
push 1
push offset _Lt_0892
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0894
push 0
push -1
push offset _C_STR
push -1
push offset _CLAST_STR
call _fb_StrAssign@20
.Lt_0894:
.Lt_0893:
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
.Lt_0891:
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
.Lt_089A:
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
jg .Lt_089D
push 0
push -1
push 2
push offset _Lt_0892
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
push offset _Lt_087A
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
push offset _Lt_087A
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
jmp .Lt_089C
.Lt_089D:
push 0
push -1
push 2
push offset _Lt_0892
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
push offset _Lt_087A
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
push offset _Lt_08A1
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
.Lt_089C:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_089B
mov eax, dword ptr [ebp+44]
and eax, 1
je .Lt_08A7
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
.Lt_08A7:
.Lt_08A6:
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
.Lt_089B:
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
.Lt_08AA:
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
push offset _Lt_08AC
push -1
push dword ptr [ebp+24]
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_08AE
push 0
push -1
push 2
push offset _Lt_08AF
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
push offset _Lt_08B1
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
push offset _Lt_08B6
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
push offset _Lt_08B1
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
.Lt_08AE:
.Lt_08AD:
push -1
push dword ptr [ebp+24]
call _fb_StrLen@8
cmp eax, 11
je .Lt_08BD
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
push offset _Lt_08A1
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_08BD:
.Lt_08BC:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_08AB:
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
.Lt_08C0:
.Lt_08C2:
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_08C4:
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
je .Lt_08C2
.Lt_08C3:
.Lt_08C1:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CLS2@0
_CLS2@0:
.Lt_08C7:
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_08C9]
push dword ptr [_Lt_04B5]
push dword ptr [_Lt_0163]
push dword ptr [_Lt_0163]
push 0
call _fb_GfxLine@36
.Lt_08C8:
ret
.balign 16

.globl _FILE_PUT_CONTENTS@8
_FILE_PUT_CONTENTS@8:
push ebp
mov ebp, esp
sub esp, 4
.Lt_08CA:
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
.Lt_08CB:
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
.Lt_08CC:
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
jg .Lt_08D0
jl .Lt_08D1
cmp eax, 0
ja .Lt_08D0
.Lt_08D1:
xor ecx, ecx
.Lt_08D0:
and ebx, ecx
je .Lt_08CF
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
.Lt_08CF:
.Lt_08CE:
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
.Lt_08CD:
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
.Lt_08D2:
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
.Lt_08D7:
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
.Lt_08D5:
inc dword ptr [ebp-16]
.Lt_08D4:
cmp dword ptr [ebp-16], 255
jle .Lt_08D7
.Lt_08D6:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_08D3:
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
.Lt_08D8:
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
.Lt_08D9:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _CLV_BUFFER_STACK@4
_CLV_BUFFER_STACK@4:
push ebp
mov ebp, esp
.Lt_08DE:
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
jne .Lt_08E1
.Lt_08E2:
push 1
push dword ptr [_CLV_BUFFER_TITLE]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_08E0
.Lt_08E1:
mov eax, dword ptr [_CLV_BUFFER_HELP]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_08E3
.Lt_08E4:
push 1
push dword ptr [_CLV_BUFFER_HELP]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_08E0
.Lt_08E3:
mov eax, dword ptr [_CLV_BUFFER_PORTAL]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_08E5
.Lt_08E6:
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
jmp .Lt_08E0
.Lt_08E5:
mov eax, dword ptr [_CLV_BUFFER_STATUS]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_08E7
.Lt_08E8:
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
jmp .Lt_08E0
.Lt_08E7:
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_08E9
.Lt_08EA:
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
jmp .Lt_08E0
.Lt_08E9:
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_08EB
.Lt_08EC:
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
jmp .Lt_08E0
.Lt_08EB:
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_08ED
.Lt_08EE:
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
.Lt_08ED:
.Lt_08E0:
mov eax, dword ptr [_CLV_BUFFER_SPLASH]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
je .Lt_08F0
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
.Lt_08F0:
.Lt_08EF:
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
.Lt_08DF:
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
.Lt_08F1:
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_057D
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
movsx ebx, word ptr [_TY_SI]
push ebx
movsx ebx, word ptr [_TX_SI]
push ebx
call _ROSE_CALC@8
imul eax, 136
fld qword ptr [_Lt_0595]
fadd qword ptr [_G_DFA+eax+80]
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
push offset _Lt_03D1
push -1
push 5
push -1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 136
push dword ptr [_G_DFA+eax+52]
push dword ptr [_G_DFA+eax+48]
call _fb_DoubleToStr@8
push eax
push 6
push offset _Lt_0580
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
push offset _Lt_03CE
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
push offset _Lt_0585
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
push offset _Lt_0588
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
push offset _Lt_058B
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
push offset _Lt_0588
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
push offset _Lt_0590
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
push offset _Lt_0588
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
fadd qword ptr [_Lt_0596]
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
jne .Lt_0906
.Lt_0907:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_0909
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
jmp .Lt_0905
.Lt_0906:
movsx eax, word ptr [_D_SI]
cmp eax, 1
jne .Lt_090B
.Lt_090C:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_090E
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
jmp .Lt_0905
.Lt_090B:
movsx eax, word ptr [_D_SI]
cmp eax, 2
jne .Lt_0910
.Lt_0911:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_0913
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
jmp .Lt_0905
.Lt_0910:
movsx eax, word ptr [_D_SI]
cmp eax, 3
jne .Lt_0915
.Lt_0916:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_0918
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
jmp .Lt_0905
.Lt_0915:
movsx eax, word ptr [_D_SI]
cmp eax, 4
jne .Lt_091A
.Lt_091B:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_091D
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
.Lt_091A:
.Lt_0905:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 4
push offset _Lt_052A
push -1
push -1
push 4
push 5
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
call _fb_StrMid@12
push eax
push -1
push 4
push 1
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [ebp-288]
jmp .Lt_0925
.Lt_0928:
push 0
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
jne .Lt_092A
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
.Lt_092A:
.Lt_0929:
.Lt_0926:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0925:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-288]
cmp eax, ebx
jle .Lt_0928
.Lt_0927:
.Lt_08F2:
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
.Lt_092B:
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_027D]
fistp word ptr [ebp-36]
jmp .Lt_092E
.Lt_0931:
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0415
push -1
push 4
movsx eax, word ptr [_T_SI]
sal eax, 2
add eax, -3
push eax
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
jne .Lt_0937
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
.Lt_0937:
.Lt_0936:
.Lt_092F:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_092E:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-36]
cmp eax, ebx
jle .Lt_0931
.Lt_0930:
.Lt_092C:
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
.Lt_0938:
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
jne .Lt_093B
.Lt_093C:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 8
push offset _Lt_093D
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
jmp .Lt_093A
.Lt_093B:
movsx eax, word ptr [_TITLED_SI]
cmp eax, 1
jne .Lt_093F
.Lt_0940:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 8
push offset _Lt_0941
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
.Lt_093F:
.Lt_093A:
.Lt_0939:
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
.Lt_0943:
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
.Lt_0944:
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
.Lt_0946:
mov dword ptr [ebp-4], 0
push 1
push dword ptr [ebp+8]
call _fb_ArrayLBound@8
mov dword ptr [ebp-4], eax
push 1
push dword ptr [ebp+8]
call _fb_ArrayUBound@8
mov dword ptr [ebp-8], eax
jmp .Lt_0949
.Lt_094C:
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
je .Lt_094E
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
mov dword ptr [eax], 1
.Lt_094E:
.Lt_094D:
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
.Lt_094A:
inc dword ptr [ebp-4]
.Lt_0949:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_094C
.Lt_094B:
.Lt_0947:
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
.Lt_0957:
.Lt_0959:
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
push offset _Lt_095E
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_095D
.Lt_095F:
jmp .Lt_095A
.Lt_095D:
.Lt_095C:
.Lt_095B:
jmp .Lt_0959
.Lt_095A:
.Lt_0958:
mov esp, ebp
pop ebp
ret 28
.balign 16

.globl _MAP_LOAD@4
_MAP_LOAD@4:
push ebp
mov ebp, esp
sub esp, 1840
push ebx
.Lt_0960:
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
push offset _Lt_0962
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
push offset _Lt_0963
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
push offset _Lt_0969
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
push offset _Lt_096B
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
.Lt_0970:
mov dword ptr [ebp-8], 1
.Lt_0974:
push offset _SAVE_TABLE
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
push 0
push -1
push 2
push offset _Lt_0977
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_0975
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
.Lt_0972:
inc dword ptr [ebp-8]
.Lt_0971:
cmp dword ptr [ebp-8], 2
jle .Lt_0974
.Lt_0973:
.Lt_096E:
inc dword ptr [ebp-4]
.Lt_096D:
cmp dword ptr [ebp-4], 4
jle .Lt_0970
.Lt_096F:
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
push offset _Lt_097D
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
push offset _Lt_097F
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
push offset _Lt_0981
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
push offset _Lt_0983
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
push offset _Lt_0985
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
push offset _Lt_0987
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
push offset _Lt_0989
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
.Lt_098E:
mov dword ptr [ebp-4], 1
.Lt_0992:
push offset _SAVE_TABLE
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
push 0
push -1
push 2
push offset _Lt_0977
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_0975
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
.Lt_0990:
inc dword ptr [ebp-4]
.Lt_098F:
cmp dword ptr [ebp-4], 2
jle .Lt_0992
.Lt_0991:
.Lt_098C:
inc dword ptr [ebp-8]
.Lt_098B:
cmp dword ptr [ebp-8], 4
jle .Lt_098E
.Lt_098D:
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
jmp .Lt_0999
.Lt_099C:
mov dword ptr [ebp-8], 1
.Lt_09A0:
push offset _SAVE_TABLE
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
push 0
push -1
push 2
push offset _Lt_0977
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 9
push offset _Lt_09A1
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
.Lt_099E:
inc dword ptr [ebp-8]
.Lt_099D:
cmp dword ptr [ebp-8], 2
jle .Lt_09A0
.Lt_099F:
.Lt_099A:
inc dword ptr [ebp-4]
.Lt_0999:
mov eax, dword ptr [ebp-320]
cmp dword ptr [ebp-4], eax
jle .Lt_099C
.Lt_099B:
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
.Lt_09AA:
mov dword ptr [ebp-4], 1
.Lt_09AE:
push offset _SAVE_TABLE
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push -1
push 2
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_T_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 7
push offset _Lt_09AF
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
.Lt_09AC:
inc dword ptr [ebp-4]
.Lt_09AB:
cmp dword ptr [ebp-4], 2
jle .Lt_09AE
.Lt_09AD:
.Lt_09A8:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_09A7:
movsx eax, word ptr [_T_SI]
cmp eax, 64
jle .Lt_09AA
.Lt_09A9:
push 0
push -1
push offset _SAVE_TABLE
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push 9
push offset _Lt_09B3
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
jmp .Lt_09B6
.Lt_09B9:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-324], ax
jmp .Lt_09BB
.Lt_09BE:
push 0
push -1
push offset _SAVE_TABLE
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
push 0
push -1
push 2
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_09BF
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_09C5
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_09CB
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_09D1
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 18
push offset _Lt_09D7
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 16
push offset _Lt_09DD
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_09E3
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1712]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1712]
push dword ptr [ebp-1708]
pop dword ptr [_G_DFA+eax+4]
pop dword ptr [_G_DFA+eax]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_09E9
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1720]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1720]
push dword ptr [ebp-1716]
pop dword ptr [_G_DFA+eax+12]
pop dword ptr [_G_DFA+eax+8]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_09EF
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1728]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1728]
push dword ptr [ebp-1724]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_09F5
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1736]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1736]
push dword ptr [ebp-1732]
pop dword ptr [_G_DFA+eax+28]
pop dword ptr [_G_DFA+eax+24]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_09FB
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1744]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1744]
push dword ptr [ebp-1740]
pop dword ptr [_G_DFA+eax+36]
pop dword ptr [_G_DFA+eax+32]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A01
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1752]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1752]
push dword ptr [ebp-1748]
pop dword ptr [_G_DFA+eax+44]
pop dword ptr [_G_DFA+eax+40]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0A07
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1760]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1760]
push dword ptr [ebp-1756]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A0D
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1768]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1768]
push dword ptr [ebp-1764]
pop dword ptr [_G_DFA+eax+60]
pop dword ptr [_G_DFA+eax+56]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A13
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1776]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1776]
push dword ptr [ebp-1772]
pop dword ptr [_G_DFA+eax+68]
pop dword ptr [_G_DFA+eax+64]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A19
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1784]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1784]
push dword ptr [ebp-1780]
pop dword ptr [_G_DFA+eax+76]
pop dword ptr [_G_DFA+eax+72]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_0A1F
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1792]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1792]
push dword ptr [ebp-1788]
pop dword ptr [_G_DFA+eax+84]
pop dword ptr [_G_DFA+eax+80]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0A25
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1800]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1800]
push dword ptr [ebp-1796]
pop dword ptr [_G_DFA+eax+92]
pop dword ptr [_G_DFA+eax+88]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_0A2B
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1808]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1808]
push dword ptr [ebp-1804]
pop dword ptr [_G_DFA+eax+100]
pop dword ptr [_G_DFA+eax+96]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_0A31
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1816]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1816]
push dword ptr [ebp-1812]
pop dword ptr [_G_DFA+eax+108]
pop dword ptr [_G_DFA+eax+104]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_0A37
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1824]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1824]
push dword ptr [ebp-1820]
pop dword ptr [_G_DFA+eax+116]
pop dword ptr [_G_DFA+eax+112]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A3D
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1832]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1832]
push dword ptr [ebp-1828]
pop dword ptr [_G_DFA+eax+124]
pop dword ptr [_G_DFA+eax+120]
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A43
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
fstp qword ptr [ebp-1840]
call _ROSE_CALC@8
imul eax, 136
push dword ptr [ebp-1840]
push dword ptr [ebp-1836]
pop dword ptr [_G_DFA+eax+132]
pop dword ptr [_G_DFA+eax+128]
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
.Lt_09BC:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_09BB:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-324]
cmp eax, ebx
jle .Lt_09BE
.Lt_09BD:
.Lt_09B7:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_09B6:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-320]
cmp ebx, eax
jle .Lt_09B9
.Lt_09B8:
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
.Lt_0961:
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
.Lt_0A5A:
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
push offset _Lt_0A5D
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
push offset _Lt_0963
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
push offset _Lt_0969
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
push offset _Lt_096B
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
.Lt_0A68:
mov dword ptr [ebp-8], 1
.Lt_0A6C:
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
push offset _Lt_0977
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_0975
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
.Lt_0A6A:
inc dword ptr [ebp-8]
.Lt_0A69:
cmp dword ptr [ebp-8], 2
jle .Lt_0A6C
.Lt_0A6B:
.Lt_0A66:
inc dword ptr [ebp-4]
.Lt_0A65:
cmp dword ptr [ebp-4], 4
jle .Lt_0A68
.Lt_0A67:
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
push offset _Lt_097D
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
push offset _Lt_097F
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
push offset _Lt_0981
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
push offset _Lt_0983
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
push offset _Lt_0985
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
push offset _Lt_0987
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
push offset _Lt_0989
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
.Lt_0A85:
mov dword ptr [ebp-4], 1
.Lt_0A89:
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
push offset _Lt_0977
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_0975
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
.Lt_0A87:
inc dword ptr [ebp-4]
.Lt_0A86:
cmp dword ptr [ebp-4], 2
jle .Lt_0A89
.Lt_0A88:
.Lt_0A83:
inc dword ptr [ebp-8]
.Lt_0A82:
cmp dword ptr [ebp-8], 4
jle .Lt_0A85
.Lt_0A84:
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
jmp .Lt_0A91
.Lt_0A94:
mov dword ptr [ebp-8], 1
.Lt_0A98:
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
push offset _Lt_0977
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 9
push offset _Lt_09A1
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
.Lt_0A96:
inc dword ptr [ebp-8]
.Lt_0A95:
cmp dword ptr [ebp-8], 2
jle .Lt_0A98
.Lt_0A97:
.Lt_0A92:
inc dword ptr [ebp-4]
.Lt_0A91:
mov eax, dword ptr [ebp-420]
cmp dword ptr [ebp-4], eax
jle .Lt_0A94
.Lt_0A93:
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
.Lt_0AA2:
mov dword ptr [ebp-4], 1
.Lt_0AA6:
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_T_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 7
push offset _Lt_09AF
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
.Lt_0AA4:
inc dword ptr [ebp-4]
.Lt_0AA3:
cmp dword ptr [ebp-4], 2
jle .Lt_0AA6
.Lt_0AA5:
.Lt_0AA0:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0A9F:
movsx eax, word ptr [_T_SI]
cmp eax, 64
jle .Lt_0AA2
.Lt_0AA1:
push offset _NAMES_TABLE
push offset _CTRL_STR
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
push 0
push 9
push offset _Lt_09B3
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
jmp .Lt_0AAD
.Lt_0AB0:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-424], ax
jmp .Lt_0AB2
.Lt_0AB5:
push offset _NAMES_TABLE
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax]
push ebx
mov dword ptr [ebp-484], 0
mov dword ptr [ebp-480], 0
mov dword ptr [ebp-476], 0
push 0
push -1
push 2
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_09BF
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+12]
push ebx
mov dword ptr [ebp-544], 0
mov dword ptr [ebp-540], 0
mov dword ptr [ebp-536], 0
push 0
push -1
push 2
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_09C5
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_09CB
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+36]
push ebx
mov dword ptr [ebp-676], 0
mov dword ptr [ebp-672], 0
mov dword ptr [ebp-668], 0
push 0
push -1
push 2
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_09D1
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+48]
push ebx
mov dword ptr [ebp-736], 0
mov dword ptr [ebp-732], 0
mov dword ptr [ebp-728], 0
push 0
push -1
push 2
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 18
push offset _Lt_09D7
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
imul eax, 108
lea ebx, [_E_STRA+eax+60]
push ebx
mov dword ptr [ebp-796], 0
mov dword ptr [ebp-792], 0
mov dword ptr [ebp-788], 0
push 0
push -1
push 2
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 16
push offset _Lt_09DD
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_09E3
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_09E9
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_09EF
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_09F5
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_09FB
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A01
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0A07
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A0D
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A13
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A19
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_0A1F
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0A25
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_0A2B
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_0A31
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_0A37
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A3D
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
movsx eax, word ptr [_TY_SI]
push eax
movsx eax, word ptr [_TX_SI]
push eax
call _ROSE_CALC@8
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
push offset _Lt_0977
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_0976
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0A43
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
.Lt_0AB3:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_0AB2:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-424]
cmp eax, ebx
jle .Lt_0AB5
.Lt_0AB4:
.Lt_0AAE:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_0AAD:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-420]
cmp ebx, eax
jle .Lt_0AB0
.Lt_0AAF:
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
.Lt_0A5B:
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
.Lt_0B3B:
push dword ptr [ebp+12]
call _MAP_SAVE@4
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_0B3E
push -1
push -1
push dword ptr [ebp+8]
push 8
push offset _Lt_0B3D
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
.Lt_0B3C:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SAVEGAME_LOAD@8
_SAVEGAME_LOAD@8:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0B42:
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_0B3E
push -1
push -1
push dword ptr [ebp+8]
push 8
push offset _Lt_0B3D
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
.Lt_0B43:
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
.Lt_0B47:
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
jne .Lt_0B4B
.Lt_0B4C:
mov dword ptr [ebp-4], -1
jmp .Lt_0B49
.Lt_0B4B:
mov dword ptr [ebp-4], 0
.Lt_0B4D:
.Lt_0B49:
.Lt_0B48:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ROSE_CALC@8
_ROSE_CALC@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0B50:
mov eax, dword ptr [ebp+12]
dec eax
movsx ebx, word ptr [_AA_SI]
imul eax, ebx
add eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0B51:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
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
.Lt_0B53:
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
.Lt_0B54:
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
_Lt_02C4:	.ascii	"bite\0"
.balign 4
_Lt_02C7:	.ascii	"pnch\0"
.balign 4
_Lt_02CA:	.ascii	"kick\0"
.balign 4
_Lt_02D3:	.ascii	"cure\0"
.balign 8
_Lt_02EB:	.quad	0x4018000000000000
.balign 8
_Lt_02EC:	.quad	0x4020000000000000
.balign 8
_Lt_02F1:	.quad	0x401C000000000000
.balign 8
_Lt_02F4:	.quad	0x4024000000000000
.balign 8
_Lt_02F9:	.quad	0x4028000000000000
.balign 4
_Lt_02FC:	.ascii	"burn\0"
.balign 8
_Lt_02FF:	.quad	0x402E000000000000
.balign 8
_Lt_0302:	.quad	0x4034000000000000
.balign 4
_Lt_0307:	.ascii	"tngl\0"
.balign 4
_Lt_030A:	.ascii	"lash\0"
.balign 4
_Lt_030B:	.ascii	"%%\0"
.balign 4
_Lt_030E:	.ascii	"attk/\0"
.balign 4
_Lt_030F:	.ascii	"/pict\0"
.balign 4
_Lt_0313:	.ascii	"/name\0"
.balign 4
_Lt_0317:	.ascii	"/hp/use\0"
.balign 4
_Lt_031B:	.ascii	"/str/use\0"
.balign 4
_Lt_031F:	.ascii	"/ess/use\0"
.balign 4
_Lt_0323:	.ascii	"/hp/dmg\0"
.balign 4
_Lt_0327:	.ascii	"/str/dmg\0"
.balign 4
_Lt_032B:	.ascii	"/ess/dmg\0"
.balign 4
_Lt_032F:	.ascii	"/hp/dmg/bonus\0"
.balign 4
_Lt_0333:	.ascii	"/str/dmg/bonus\0"
.balign 4
_Lt_0337:	.ascii	"/ess/dmg/bonus\0"
.balign 4
_Lt_033B:	.ascii	"Level/\0"
.balign 4
_Lt_0342:	.ascii	"/entity/count\0"
.balign 4
_Lt_034B:	.ascii	"/entity/\0"
.balign 4
_Lt_034C:	.ascii	"/is\0"
.balign 4
_Lt_0356:	.ascii	"/now\0"
.balign 4
_Lt_035F:	.ascii	"gone\0"
.balign 8
_Lt_0373:	.quad	0xC020000000000000
.balign 4
_Lt_037B:	.ascii	"slep\0"
.balign 8
_Lt_0385:	.quad	0xC02E000000000000
.balign 4
_Lt_0388:	.ascii	"pouch\0"
.balign 4
_Lt_0389:	.ascii	"pwch\0"
.balign 4
_Lt_038A:	.long	0x47C34F80
.balign 4
_Lt_0393:	.ascii	"lvup\0"
.balign 4
_Lt_039A:	.ascii	"ispt\0"
.balign 4
_Lt_03A1:	.ascii	"move\0"
.balign 4
_Lt_03C4:	.ascii	"cncl\0"
.balign 4
_Lt_03CE:	.ascii	"\372\0"
.balign 4
_Lt_03CF:	.ascii	"-\0"
.balign 4
_Lt_03D0:	.ascii	"----\0"
.balign 4
_Lt_03D1:	.ascii	"$\0"
.balign 4
_Lt_0400:	.ascii	"grpl\0"
.balign 4
_Lt_0405:	.ascii	"seed\0"
.balign 4
_Lt_0411:	.ascii	"Wha'du like?\0"
.balign 4
_Lt_0415:	.ascii	"____.24\0"
.balign 4
_Lt_0444:	.ascii	"bye_\0"
.balign 4
_Lt_0447:	.ascii	"Poindexter:\0"
.balign 4
_Lt_0449:	.ascii	"Hi. How are you. My\0"
.balign 4
_Lt_044B:	.ascii	"name is Poindexter. I\0"
.balign 4
_Lt_044D:	.ascii	"am the greatest thief\0"
.balign 4
_Lt_044F:	.ascii	"in the entire world!!!\0"
.balign 4
_Lt_045C:	.ascii	" =\0"
.balign 4
_Lt_0478:	.ascii	"gained\0"
.balign 4
_Lt_0483:	.ascii	"      level up!\0"
.balign 4
_Lt_0485:	.ascii	"HPmax +\0"
.balign 4
_Lt_0489:	.ascii	"STRmax +\0"
.balign 4
_Lt_048D:	.ascii	"ESSmax +\0"
.balign 4
_Lt_0491:	.ascii	"STRspd up!\0"
.balign 4
_Lt_0493:	.ascii	"ESSspd up!\0"
.balign 4
_Lt_0499:	.ascii	"reached LV!\0"
.balign 4
_Lt_049F:	.ascii	"next:\0"
.balign 4
_Lt_04B4:	.long	0x43470000
.balign 4
_Lt_04B5:	.long	0x439F8000
.balign 4
_Lt_04B6:	.long	0x43400000
.balign 8
_Lt_04B7:	.quad	0x4050000000000000
.balign 4
_Lt_04CA:	.ascii	"from\0"
.balign 4
_Lt_04CC:	.ascii	"!\0"
.balign 4
_Lt_04D5:	.ascii	"used\0"
.balign 4
_Lt_04D7:	.ascii	"on\0"
.balign 4
_Lt_04E0:	.ascii	"HP -\0"
.balign 4
_Lt_04E4:	.ascii	"STR-\0"
.balign 4
_Lt_04EE:	.ascii	"pillaged\0"
.balign 4
_Lt_04F0:	.ascii	"EXP+\0"
.balign 4
_Lt_04F5:	.ascii	"EXP:\0"
.balign 4
_Lt_04FA:	.ascii	"STR+\0"
.balign 4
_Lt_04FE:	.ascii	"STR:\0"
.balign 4
_Lt_052A:	.ascii	".24\0"
.balign 4
_Lt_054A:	.ascii	"zzzz____.24\0"
.balign 4
_Lt_0556:	.ascii	"rapl\0"
.balign 8
_Lt_0569:	.quad	0xBFF0000000000000
.balign 4
_Lt_056A:	.long	0x41000000
.balign 4
_Lt_056B:	.long	0xBF800000
.balign 4
_Lt_0571:	.ascii	"A RetroMachineShop Featured Project!\0"
.balign 4
_Lt_0579:	.long	0x41600000
.balign 4
_Lt_057A:	.long	0x41B80000
.balign 4
_Lt_057D:	.ascii	"LV\0"
.balign 4
_Lt_0580:	.ascii	"     \0"
.balign 4
_Lt_0585:	.ascii	"HP\0"
.balign 4
_Lt_0588:	.ascii	"/\0"
.balign 4
_Lt_058B:	.ascii	"STR\0"
.balign 4
_Lt_0590:	.ascii	"ESS\0"
.balign 8
_Lt_0595:	.quad	0x4059000000000000
.balign 8
_Lt_0596:	.quad	0x40C3880000000000
.balign 4
_Lt_059D:	.ascii	"____pwch\0"
.balign 4
_Lt_05A0:	.ascii	"watr\0"
.balign 4
_Lt_05A5:	.ascii	"hole\0"
.balign 4
_Lt_05A6:	.ascii	"holestpsstp2\0"
.balign 4
_Lt_05DF:	.ascii	"Flame\0"
.balign 4
_Lt_05E0:	.ascii	"moveburn\0"
.balign 8
_Lt_05E1:	.quad	0xC034000000000000
.balign 4
_Lt_05E2:	.long	0x42F00000
.balign 4
_Lt_05E8:	.ascii	"Sleepy dust\0"
.balign 8
_Lt_05EE:	.quad	0x406B800000000000
.balign 8
_Lt_05EF:	.quad	0xC06B800000000000
.balign 8
_Lt_05F5:	.quad	0x4074000000000000
.balign 8
_Lt_05F6:	.quad	0xC074000000000000
.balign 4
_Lt_05FA:	.ascii	"Cactus\0"
.balign 4
_Lt_05FB:	.long	0x41500000
.balign 4
_Lt_0600:	.ascii	"bitekick\0"
.balign 8
_Lt_0601:	.quad	0x4064000000000000
.balign 8
_Lt_0602:	.quad	0xC064000000000000
.balign 4
_Lt_0603:	.long	0x40C00000
.balign 4
_Lt_0667:	.ascii	" EXP\0"
.balign 4
_Lt_06A5:	.ascii	"\372Ok\0"
.balign 4
_Lt_06AC:	.ascii	"&H0D\0"
.balign 4
_Lt_06BB:	.long	0xC1000000
.balign 4
_Lt_06BC:	.long	0xC1300000
.balign 4
_Lt_06BD:	.long	0xC1100000
.balign 4
_Lt_06BE:	.long	0xC1200000
.balign 4
_Lt_06BF:	.long	0xC0E00000
.balign 4
_Lt_06C0:	.long	0xC0000000
.balign 4
_Lt_06D5:	.ascii	"pndxspdrgrmldtbyemgdshktimp_\0"
.balign 4
_Lt_0756:	.ascii	"pwchchst\0"
.balign 4
_Lt_0796:	.ascii	"bldrchst\0"
.balign 8
_Lt_0799:	.quad	0xC024000000000000
.balign 4
_Lt_07B9:	.ascii	"pndxgrmlspdrdtbyweb_emgdshkt\0"
.balign 4
_Lt_07C7:	.ascii	"pndxgrmlspdrdtbyweb_shktemgd\0"
.balign 4
_Lt_07CE:	.ascii	"pndxgrmlspdrshktemgdimp_\0"
.balign 4
_Lt_07D5:	.ascii	"pndxgrmlspdrdtbyweb_imp_\0"
.balign 4
_Lt_07FA:	.ascii	"pndxdtbyspdrimp_emgdshktgrml\0"
.balign 4
_Lt_0809:	.ascii	"pndxgrmldtbyweb_shktemgdimp_\0"
.balign 4
_Lt_0812:	.ascii	"pndxgrmlspdrimp_emgdshkt\0"
.balign 4
_Lt_0823:	.ascii	"pndxdtbyspdrimp_emgdshktweb_\0"
.balign 4
_Lt_0836:	.ascii	"pndxdtbyspdrimp_emgdshktweb_grmlccts\0"
.balign 4
_Lt_0863:	.ascii	"stpw\0"
.balign 4
_Lt_0866:	.ascii	"stps\0"
.balign 4
_Lt_086F:	.ascii	"dirt\0"
.balign 4
_Lt_0876:	.ascii	"\377""\0"
.balign 4
_Lt_0879:	.ascii	"&HFF\0"
.balign 4
_Lt_087A:	.ascii	"0\0"
.balign 4
_Lt_087F:	.ascii	"&H\0"
.balign 4
_Lt_0892:	.ascii	"%\0"
.balign 4
_Lt_08A1:	.ascii	".\0"
.balign 4
_Lt_08AC:	.ascii	"________.24\0"
.balign 4
_Lt_08AF:	.ascii	"y\0"
.balign 4
_Lt_08B1:	.ascii	".png\0"
.balign 4
_Lt_08B6:	.ascii	"x\0"
.balign 4
_Lt_08C9:	.long	0x436F0000
.balign 4
_Lt_0909:	.ascii	"bttnself.24\0"
.balign 4
_Lt_090E:	.ascii	"bttnnrth.24\0"
.balign 4
_Lt_0913:	.ascii	"bttneast.24\0"
.balign 4
_Lt_0918:	.ascii	"bttnsuth.24\0"
.balign 4
_Lt_091D:	.ascii	"bttnwest.24\0"
.balign 4
_Lt_093D:	.ascii	"Puzzlum\0"
.balign 4
_Lt_0941:	.ascii	"(T)itle\0"
.balign 4
_Lt_095E:	.ascii	"&HFF0D\0"
.balign 4
_Lt_0962:	.ascii	"Loading Map\0"
.balign 4
_Lt_0963:	.ascii	"mapname_str\0"
.balign 4
_Lt_0969:	.ascii	"AA_si\0"
.balign 4
_Lt_096B:	.ascii	"DD_si\0"
.balign 4
_Lt_0975:	.ascii	"d_sia[\0"
.balign 4
_Lt_0976:	.ascii	"][\0"
.balign 4
_Lt_0977:	.ascii	"]\0"
.balign 4
_Lt_097D:	.ascii	"ex_si\0"
.balign 4
_Lt_097F:	.ascii	"dy_si\0"
.balign 4
_Lt_0981:	.ascii	"mdx_si\0"
.balign 4
_Lt_0983:	.ascii	"mdy_si\0"
.balign 4
_Lt_0985:	.ascii	"textcolor_si\0"
.balign 4
_Lt_0987:	.ascii	"textdelay_sf\0"
.balign 4
_Lt_0989:	.ascii	"win_si\0"
.balign 4
_Lt_09A1:	.ascii	"win_sia[\0"
.balign 4
_Lt_09AF:	.ascii	"l_sia[\0"
.balign 4
_Lt_09B3:	.ascii	"ctrl_str\0"
.balign 4
_Lt_09BF:	.ascii	"prflidty_str[\0"
.balign 4
_Lt_09C5:	.ascii	"prflactn_str[\0"
.balign 4
_Lt_09CB:	.ascii	"prflgpic_str[\0"
.balign 4
_Lt_09D1:	.ascii	"prflcmnd_str[\0"
.balign 4
_Lt_09D7:	.ascii	"prflgpicactn_str[\0"
.balign 4
_Lt_09DD:	.ascii	"prflactnct_str[\0"
.balign 4
_Lt_09E3:	.ascii	"prflidty_sf[\0"
.balign 4
_Lt_09E9:	.ascii	"prflhp_sf[\0"
.balign 4
_Lt_09EF:	.ascii	"prflstr_sf[\0"
.balign 4
_Lt_09F5:	.ascii	"prfless_sf[\0"
.balign 4
_Lt_09FB:	.ascii	"prflspd_sf[\0"
.balign 4
_Lt_0A01:	.ascii	"prflarmr_sf[\0"
.balign 4
_Lt_0A07:	.ascii	"prflexp_sf[\0"
.balign 4
_Lt_0A0D:	.ascii	"prflvalu_sf[\0"
.balign 4
_Lt_0A13:	.ascii	"prflpirc_sf[\0"
.balign 4
_Lt_0A19:	.ascii	"prflchck_sf[\0"
.balign 4
_Lt_0A1F:	.ascii	"prfllv_sf[\0"
.balign 4
_Lt_0A25:	.ascii	"prflhpmax_sf[\0"
.balign 4
_Lt_0A2B:	.ascii	"prflstrmax_sf[\0"
.balign 4
_Lt_0A31:	.ascii	"prflessmax_sf[\0"
.balign 4
_Lt_0A37:	.ascii	"prflessspd_sf[\0"
.balign 4
_Lt_0A3D:	.ascii	"prflevad_sf[\0"
.balign 4
_Lt_0A43:	.ascii	"prflblnk_sf[\0"
.balign 4
_Lt_0A5D:	.ascii	"Saving Map \"\0"
.balign 4
_Lt_0B3D:	.ascii	".\\save\\\0"
.balign 4
_Lt_0B3E:	.ascii	".dat\0"

.section .dtors
.int __GLOBAL__D
