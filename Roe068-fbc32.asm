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
sub esp, 144
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
push 3
push offset _Lt_006C
push -1
push offset _THISPATH_STR
call _fb_StrAssign@20
push 0
push 7
push offset _Lt_006D
push -1
push offset _FONTPATH_STR
call _fb_StrAssign@20
push 0
push 7
push offset _Lt_006E
push -1
push offset _LOGOPATH_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_006F
push -1
push offset _SPRITEPATH_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0070
push -1
push offset _PALPATH_STR
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_0071
push -1
push offset _MAPPATH_STR
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_0072
push -1
push offset _HELPPATH_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0073
push -1
push offset _HELPFILENAME_STR
call _fb_StrAssign@20
push 0
push 19
push offset _Lt_0074
push -1
push offset _MAP_STR
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_0075
push -1
push offset _LVUPPATH_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0076
push -1
push offset _LVUP_STR
call _fb_StrAssign@20
push offset _DB_INPUT
call _WIPE_TABLE@4
push offset _INPUT_TABLE
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 17
push offset _Lt_0077
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
push offset _Lt_0054
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 13
push offset _Lt_0079
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
push offset _Lt_007D
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
push offset _Lt_007F
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
push offset _Lt_0081
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
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push 26
push offset _Lt_0085
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
lea eax, [ebp-120]
push eax
push 192
push 0
push offset _CLV_GLYPH
push dword ptr [_CLV_BUFFER_BAR]
push offset _CLV_FONT
push offset _CLV_BUFFER
call _CLV_DRAW_TEXT@28
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
.Lt_0087:
mov dword ptr [_RESTART_ROE], 0
mov eax, dword ptr [_CLV_BUFFER_SPLASH]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_008A:
push -1
call _fb_Inkey@0
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_008B
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_008A
.Lt_008B:
call _LN_STARTUP@0
.Lt_008C:
push -1
call _fb_Inkey@0
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_008D
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_008C
.Lt_008D:
push 0
push -1
push 0
push 1
push offset _Lt_008E
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_StrLcase2@8
push eax
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_008F:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_0093
jmp .Lt_0090
.Lt_0093:
push 2
push offset _Lt_008E
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
je .Lt_0095
mov ebx, dword ptr [_CLV_BUFFER_TITLE]
mov dword ptr [_CLV_BUFFER_FOCUS], ebx
call _LN_STARTTITLE@0
.Lt_0095:
.Lt_0094:
mov dword ptr [_EXITCOMMAND], 0
.Lt_0096:
call _LN_COMMAND@0
mov dword ptr [_EXITCOMMAND3], 0
.Lt_0099:
call _LN_COMMAND3@0
push 2
push offset _Lt_008E
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
je .Lt_009D
mov dword ptr [_EXITCOMMAND3], -1
mov dword ptr [_EXITCOMMAND], -1
.Lt_009D:
.Lt_009C:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_009F
jmp .Lt_009A
.Lt_009F:
.Lt_009B:
push 1
push -1
push offset _C_STR
push 2
push offset _Lt_00A1
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea ebx, [ebp-144]
push ebx
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 4
push offset _Lt_00A0
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
jne .Lt_0099
.Lt_009A:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_00A4
jmp .Lt_0097
.Lt_00A4:
.Lt_0098:
push 1
push -1
push offset _C_STR
push 2
push offset _Lt_00A1
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea ebx, [ebp-132]
push ebx
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push 3
push offset _Lt_00A5
call _fb_StrAllocTempDescZEx@8
push eax
push 1
call _fb_StrInstr@12
test eax, eax
jg .Lt_0096
.Lt_0097:
cmp dword ptr [_RESTART_ROE], 0
je .Lt_00A8
jmp .Lt_0090
.Lt_00A8:
call _LN_MAIN@0
cmp dword ptr [_RESTART_ROE], 0
je .Lt_00AA
jmp .Lt_0090
.Lt_00AA:
.Lt_0091:
jmp .Lt_008F
.Lt_0090:
.Lt_0089:
jmp .Lt_0087
.Lt_0088:
.Lt_006B:
pop esi
pop ebx
mov esp, ebp
pop ebp
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
_MAPS_TABLE:
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
_INPUT_TABLE:
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
_CLV_BUFFER_TITLE:
.int 8
.balign 4
_CLV_BUFFER_SPLASH:
.int 11
.balign 4
_CLV_BUFFER_BAR:
.int 12
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
_Lt_006C:	.ascii	".\\\0"
.balign 4
_Lt_006D:	.ascii	"fonts\\\0"
.balign 4
_Lt_006E:	.ascii	"logos\\\0"
.balign 4
_Lt_006F:	.ascii	"sprites\\\0"
.balign 4
_Lt_0070:	.ascii	"pal\\\0"
.balign 4
_Lt_0071:	.ascii	"maps\\\0"
.balign 4
_Lt_0072:	.ascii	"help\\\0"
.balign 4
_Lt_0073:	.ascii	"roe4help.hlp\0"
.balign 4
_Lt_0074:	.ascii	"Dire Dungeon 1.dat\0"
.balign 4
_Lt_0075:	.ascii	"lvup\\\0"
.balign 4
_Lt_0076:	.ascii	"roe_lvup.dat\0"
.balign 4
_Lt_0077:	.ascii	".\\dict\\input.dat\0"
.balign 4
_Lt_0079:	.ascii	"QBPALVGA.DAT\0"
.balign 4
_Lt_007D:	.ascii	".\\fonts\\mishap22.font.png\0"
.balign 4
_Lt_007F:	.ascii	".\\fonts\\roe00.font.png\0"
.balign 4
_Lt_0081:	.ascii	"roe.splash.png\0"
.balign 4
_Lt_0085:	.ascii	"[F1 Save|F2 Load|F3 Shop]\0"
.balign 4
_Lt_008E:	.ascii	"t\0"
.balign 4
_Lt_00A0:	.ascii	"L ||\0"
.balign 4
_Lt_00A1:	.ascii	" \0"
.balign 4
_Lt_00A5:	.ascii	"L||\0"
.balign 4
_Lt_00B6:	.ascii	".\\dict\\names.dat\0"
.balign 4
_Lt_00B8:	.ascii	"levels/count\0"
.balign 4
_Lt_00BF:	.ascii	"levels/\0"
.balign 4
_Lt_00C5:	.ascii	"map/name\0"
.balign 4
_Lt_00C7:	.ascii	"map/AA\0"
.balign 4
_Lt_00C9:	.ascii	"map/DD\0"
.balign 4
_Lt_00DB:	.ascii	"pndximp_\0"
.balign 4
_Lt_00DE:	.ascii	"dust\0"
.balign 4
_Lt_00E4:	.ascii	"map/row/bg\0"
.balign 4
_Lt_00E7:	.ascii	"map/row/fg\0"
.balign 4
_Lt_00EA:	.ascii	"map/row/rg\0"
.balign 4
_Lt_00F2:	.ascii	"____\0"
.balign 4
_Lt_00F3:	.ascii	"________\0"
.balign 4
_Lt_00F8:	.ascii	"spdr\0"
.balign 4
_Lt_00FA:	.ascii	"Spider\0"
.balign 4
_Lt_00FB:	.ascii	"movebiteweb_\0"
.balign 4
_Lt_00FE:	.ascii	"0001\0"
.balign 4
_Lt_0102:	.ascii	"vnom\0"
.balign 4
_Lt_0104:	.ascii	"wall\0"
.balign 4
_Lt_0107:	.ascii	"web_\0"
.balign 4
_Lt_0109:	.ascii	"Web\0"
.balign 4
_Lt_010B:	.ascii	"grml\0"
.balign 4
_Lt_010D:	.ascii	"Gremlin\0"
.balign 4
_Lt_010E:	.ascii	"movebitepnch\0"
.balign 4
_Lt_0111:	.ascii	"dggr\0"
.balign 4
_Lt_0113:	.ascii	"pndx\0"
.balign 4
_Lt_0115:	.ascii	"Poindexter\0"
.balign 4
_Lt_0116:	.ascii	"wstf\0"
.balign 4
_Lt_0118:	.ascii	"dtby\0"
.balign 4
_Lt_011A:	.ascii	"Dust Bunny\0"
.balign 4
_Lt_011B:	.ascii	"movebitekickdtbydust\0"
.balign 4
_Lt_011D:	.ascii	"shkt\0"
.balign 4
_Lt_011F:	.ascii	"Shiny Knight\0"
.balign 4
_Lt_0120:	.ascii	"movepnchdggr\0"
.balign 4
_Lt_0122:	.ascii	"emgd\0"
.balign 4
_Lt_0124:	.ascii	"Emerald Guard\0"
.balign 4
_Lt_0129:	.ascii	"pike\0"
.balign 4
_Lt_012B:	.ascii	"door\0"
.balign 4
_Lt_012D:	.ascii	"Door\0"
.balign 4
_Lt_0131:	.ascii	"loc1\0"
.balign 4
_Lt_0134:	.ascii	"loc2\0"
.balign 4
_Lt_0137:	.ascii	"loc3\0"
.balign 4
_Lt_0139:	.ascii	"imp_\0"
.balign 4
_Lt_013B:	.ascii	"Little Imp\0"
.balign 4
_Lt_013C:	.ascii	"movewingfire\0"
.balign 4
_Lt_013F:	.ascii	"Merchant\0"
.balign 4
_Lt_0140:	.ascii	"dggrgrplseed\0"
.balign 4
_Lt_0145:	.ascii	"chst\0"
.balign 4
_Lt_0147:	.ascii	"Treasure chest\0"
.balign 4
_Lt_014A:	.ascii	"key1\0"
.balign 4
_Lt_014B:	.ascii	"key2\0"
.balign 4
_Lt_014D:	.ascii	"bldr\0"
.balign 4
_Lt_014F:	.ascii	"Big boulder\0"
.balign 4
_Lt_0155:	.ascii	"Puzzlum : Realm of Existence\0"
.balign 4
_Lt_0156:	.ascii	"Build: puzzlum-fbc068.200908170813\0"
.balign 4
_Lt_0157:	.ascii	"Created 1989-2009 Timothy Robert Keal\0"
.balign 4
_Lt_0158:	.ascii	"Released under Gnu Public License 2.0\0"
.balign 4
_Lt_0159:	.ascii	"http://www.gnu.org/copyleft/gpl.html\0"
.balign 4
_Lt_015A:	.ascii	"http://puzzlum.retromachineshop.com/\0"
.balign 4
_Lt_015B:	.ascii	"irc://chat.freenode.net/puzzlum\0"
.balign 4
_Lt_015C:	.ascii	"mailto:jargon@juno.com\0"
.balign 4
_Lt_015D:	.ascii	" (H)elp\0"
.balign 4
_Lt_015E:	.ascii	" (C)ontinue\0"
.balign 4
_Lt_015F:	.ascii	" (R)estart\0"
.balign 4
_Lt_0160:	.ascii	" (Q)uit\0"
.balign 4
_Lt_0161:	.ascii	"r\0"
.balign 4
_Lt_0162:	.ascii	"R\0"
.balign 4
_Lt_0165:	.ascii	"q\0"
.balign 4
_Lt_0166:	.ascii	"Q\0"
.balign 4
_Lt_0169:	.ascii	"h\0"
.balign 4
_Lt_016A:	.ascii	"H\0"
.balign 4
_Lt_016D:	.ascii	"c\0"
.balign 4
_Lt_016E:	.ascii	"C\0"
.balign 4
_Lt_0175:	.ascii	"\376 page start\0"
.balign 4
_Lt_0178:	.ascii	"\376 page end\0"
.balign 4
_Lt_017B:	.ascii	" (T)itle\0"
.balign 4
_Lt_017F:	.ascii	"T\0"
.balign 4
_Lt_0182:	.ascii	"\376 end\0"
.balign 4
_Lt_0185:	.ascii	"\376 COLOR\0"
.balign 4
_Lt_019A:	.ascii	"zzzz\0"
.balign 4
_Lt_01B0:	.ascii	"fire\0"
.balign 4
_Lt_01B5:	.ascii	"ccts\0"
.balign 4
_Lt_01CD:	.ascii	"0002\0"
.balign 4
_Lt_01D4:	.ascii	"&HFF3B\0"
.balign 4
_Lt_01D7:	.ascii	"&HFF3C\0"
.balign 4
_Lt_01DB:	.ascii	"&HFF3D\0"
.balign 4
_Lt_01DE:	.ascii	"L\0"
.balign 4
_Lt_01E1:	.ascii	"&H20\0"
.balign 4
_Lt_01E4:	.ascii	"&HFF48\0"
.balign 4
_Lt_01E7:	.ascii	"&HFF4D\0"
.balign 4
_Lt_01EA:	.ascii	"&HFF50\0"
.balign 4
_Lt_01ED:	.ascii	"&HFF4B\0"
.balign 4
_Lt_0203:	.ascii	"||\0"
.balign 4
_Lt_0211:	.ascii	"&HFF47\0"
.balign 4
_Lt_0214:	.ascii	"&HFF4F\0"
.balign 4
_Lt_0217:	.ascii	"&HFF49\0"
.balign 4
_Lt_021C:	.ascii	"&HFF51\0"
.balign 4
_Lt_0247:	.ascii	"bite\0"
.balign 4
_Lt_024A:	.ascii	"pnch\0"
.balign 4
_Lt_024D:	.ascii	"kick\0"
.balign 4
_Lt_0256:	.ascii	"cure\0"
.balign 4
_Lt_0275:	.ascii	"burn\0"
.balign 4
_Lt_027E:	.ascii	"tngl\0"
.balign 4
_Lt_0281:	.ascii	"lash\0"
.balign 4
_Lt_0294:	.ascii	"slep\0"
.balign 4
_Lt_029F:	.ascii	"pouch\0"
.balign 4
_Lt_02A0:	.ascii	"pwch\0"
.balign 4
_Lt_02A8:	.ascii	"lvup\0"
.balign 4
_Lt_02AF:	.ascii	"ispt\0"
.balign 4
_Lt_02B6:	.ascii	"move\0"
.balign 4
_Lt_02D9:	.ascii	"cncl\0"
.balign 4
_Lt_02E3:	.ascii	"\372\0"
.balign 4
_Lt_02E4:	.ascii	"-\0"
.balign 4
_Lt_02E5:	.ascii	"----\0"
.balign 4
_Lt_02E6:	.ascii	"$\0"
.balign 4
_Lt_0310:	.ascii	"grpl\0"
.balign 4
_Lt_0315:	.ascii	"seed\0"
.balign 4
_Lt_0321:	.ascii	"Wha'du like?\0"
.balign 4
_Lt_0325:	.ascii	"____.24\0"
.balign 4
_Lt_034F:	.ascii	"bye_\0"
.balign 4
_Lt_0352:	.ascii	"Poindexter:\0"
.balign 4
_Lt_0354:	.ascii	"Hi. How are you. My\0"
.balign 4
_Lt_0356:	.ascii	"name is Poindexter. I\0"
.balign 4
_Lt_0358:	.ascii	"am the greatest thief\0"
.balign 4
_Lt_035A:	.ascii	"in the entire world!!!\0"
.balign 4
_Lt_0367:	.ascii	" =\0"
.balign 4
_Lt_0380:	.ascii	"gained\0"
.balign 4
_Lt_038A:	.ascii	"      level up!\0"
.balign 4
_Lt_038C:	.ascii	"HPmax +\0"
.balign 4
_Lt_0390:	.ascii	"STRmax +\0"
.balign 4
_Lt_0394:	.ascii	"ESSmax +\0"
.balign 4
_Lt_0398:	.ascii	"STRspd up!\0"
.balign 4
_Lt_039A:	.ascii	"ESSspd up!\0"
.balign 4
_Lt_03A0:	.ascii	"reached LV!\0"
.balign 4
_Lt_03A6:	.ascii	"next:\0"
.balign 4
_Lt_03BD:	.ascii	"from\0"
.balign 4
_Lt_03BF:	.ascii	"!\0"
.balign 4
_Lt_03C6:	.ascii	"used\0"
.balign 4
_Lt_03C8:	.ascii	"on\0"
.balign 4
_Lt_03CF:	.ascii	"HP -\0"
.balign 4
_Lt_03D3:	.ascii	"STR-\0"
.balign 4
_Lt_03DB:	.ascii	"pillaged\0"
.balign 4
_Lt_03DD:	.ascii	"EXP+\0"
.balign 4
_Lt_03E2:	.ascii	"EXP:\0"
.balign 4
_Lt_03E7:	.ascii	"STR+\0"
.balign 4
_Lt_03EB:	.ascii	"STR:\0"
.balign 4
_Lt_0415:	.ascii	".24\0"
.balign 4
_Lt_0435:	.ascii	"zzzz____.24\0"
.balign 4
_Lt_0441:	.ascii	"rapl\0"
.balign 4
_Lt_0456:	.ascii	"A RetroMachineShop Featured Project!\0"
.balign 4
_Lt_0460:	.ascii	"LV\0"
.balign 4
_Lt_0463:	.ascii	"     \0"
.balign 4
_Lt_0468:	.ascii	"HP\0"
.balign 4
_Lt_046B:	.ascii	"/\0"
.balign 4
_Lt_046E:	.ascii	"STR\0"
.balign 4
_Lt_0473:	.ascii	"ESS\0"
.balign 4
_Lt_047E:	.ascii	"____pwch\0"
.balign 4
_Lt_0481:	.ascii	"watr\0"
.balign 4
_Lt_0486:	.ascii	"hole\0"
.balign 4
_Lt_0487:	.ascii	"holestpsstp2\0"
.balign 4
_Lt_04AE:	.ascii	"Flame\0"
.balign 4
_Lt_04AF:	.ascii	"moveburn\0"
.balign 4
_Lt_04B4:	.ascii	"Sleepy dust\0"
.balign 4
_Lt_04BF:	.ascii	"Cactus\0"
.balign 4
_Lt_04C4:	.ascii	"bitekick\0"
.balign 4
_Lt_051F:	.ascii	" EXP\0"
.balign 4
_Lt_055C:	.ascii	"\372Ok\0"
.balign 4
_Lt_0563:	.ascii	"&H0D\0"
.balign 4
_Lt_0568:	.ascii	"%%\0"
.balign 4
_Lt_0581:	.ascii	"pndxspdrgrmldtbyemgdshktimp_\0"
.balign 4
_Lt_0602:	.ascii	"pwchchst\0"
.balign 4
_Lt_0640:	.ascii	"bldrchst\0"
.balign 4
_Lt_065D:	.ascii	"pndxgrmlspdrdtbyweb_emgdshkt\0"
.balign 4
_Lt_066B:	.ascii	"pndxgrmlspdrdtbyweb_shktemgd\0"
.balign 4
_Lt_0672:	.ascii	"pndxgrmlspdrshktemgdimp_\0"
.balign 4
_Lt_0679:	.ascii	"pndxgrmlspdrdtbyweb_imp_\0"
.balign 4
_Lt_069E:	.ascii	"pndxdtbyspdrimp_emgdshktgrml\0"
.balign 4
_Lt_06AD:	.ascii	"pndxgrmldtbyweb_shktemgdimp_\0"
.balign 4
_Lt_06B6:	.ascii	"pndxgrmlspdrimp_emgdshkt\0"
.balign 4
_Lt_06C7:	.ascii	"pndxdtbyspdrimp_emgdshktweb_\0"
.balign 4
_Lt_06DA:	.ascii	"pndxdtbyspdrimp_emgdshktweb_grmlccts\0"
.balign 4
_Lt_0707:	.ascii	"stpw\0"
.balign 4
_Lt_070A:	.ascii	"stps\0"
.balign 4
_Lt_0713:	.ascii	"dirt\0"
.balign 4
_Lt_071A:	.ascii	"\377""\0"
.balign 4
_Lt_071D:	.ascii	"&HFF\0"
.balign 4
_Lt_071E:	.ascii	"0\0"
.balign 4
_Lt_0723:	.ascii	"&H\0"
.balign 4
_Lt_072C:	.ascii	"%\0"
.balign 4
_Lt_073B:	.ascii	".\0"
.balign 4
_Lt_0744:	.ascii	"________.24\0"
.balign 4
_Lt_0747:	.ascii	"y\0"
.balign 4
_Lt_0749:	.ascii	".png\0"
.balign 4
_Lt_074E:	.ascii	"x\0"
.balign 4
_Lt_0798:	.ascii	"bttnself.24\0"
.balign 4
_Lt_079D:	.ascii	"bttnnrth.24\0"
.balign 4
_Lt_07A2:	.ascii	"bttneast.24\0"
.balign 4
_Lt_07A7:	.ascii	"bttnsuth.24\0"
.balign 4
_Lt_07AC:	.ascii	"bttnwest.24\0"
.balign 4
_Lt_07CC:	.ascii	"Puzzlum\0"
.balign 4
_Lt_07D0:	.ascii	"(T)itle\0"
.balign 4
_Lt_07E5:	.ascii	"&HFF0D\0"
.balign 4
_Lt_07E9:	.ascii	"Loading Map\0"
.balign 4
_Lt_07EA:	.ascii	"mapname_str\0"
.balign 4
_Lt_07F0:	.ascii	"AA_si\0"
.balign 4
_Lt_07F2:	.ascii	"DD_si\0"
.balign 4
_Lt_07FC:	.ascii	"d_sia[\0"
.balign 4
_Lt_07FD:	.ascii	"][\0"
.balign 4
_Lt_07FE:	.ascii	"]\0"
.balign 4
_Lt_0804:	.ascii	"ex_si\0"
.balign 4
_Lt_0806:	.ascii	"dy_si\0"
.balign 4
_Lt_0808:	.ascii	"mdx_si\0"
.balign 4
_Lt_080A:	.ascii	"mdy_si\0"
.balign 4
_Lt_080C:	.ascii	"textcolor_si\0"
.balign 4
_Lt_080E:	.ascii	"textdelay_sf\0"
.balign 4
_Lt_0810:	.ascii	"win_si\0"
.balign 4
_Lt_0828:	.ascii	"win_sia[\0"
.balign 4
_Lt_0836:	.ascii	"l_sia[\0"
.balign 4
_Lt_083A:	.ascii	"ctrl_str\0"
.balign 4
_Lt_0846:	.ascii	"prflidty_str[\0"
.balign 4
_Lt_084C:	.ascii	"prflactn_str[\0"
.balign 4
_Lt_0852:	.ascii	"prflgpic_str[\0"
.balign 4
_Lt_0858:	.ascii	"prflcmnd_str[\0"
.balign 4
_Lt_085E:	.ascii	"prflgpicactn_str[\0"
.balign 4
_Lt_0864:	.ascii	"prflactnct_str[\0"
.balign 4
_Lt_086A:	.ascii	"prflidty_sf[\0"
.balign 4
_Lt_0870:	.ascii	"prflhp_sf[\0"
.balign 4
_Lt_0876:	.ascii	"prflstr_sf[\0"
.balign 4
_Lt_087C:	.ascii	"prfless_sf[\0"
.balign 4
_Lt_0882:	.ascii	"prflspd_sf[\0"
.balign 4
_Lt_0888:	.ascii	"prflarmr_sf[\0"
.balign 4
_Lt_088E:	.ascii	"prflexp_sf[\0"
.balign 4
_Lt_0894:	.ascii	"prflvalu_sf[\0"
.balign 4
_Lt_089A:	.ascii	"prflpirc_sf[\0"
.balign 4
_Lt_08A0:	.ascii	"prflchck_sf[\0"
.balign 4
_Lt_08A6:	.ascii	"prfllv_sf[\0"
.balign 4
_Lt_08AC:	.ascii	"prflhpmax_sf[\0"
.balign 4
_Lt_08B2:	.ascii	"prflstrmax_sf[\0"
.balign 4
_Lt_08B8:	.ascii	"prflessmax_sf[\0"
.balign 4
_Lt_08BE:	.ascii	"prflessspd_sf[\0"
.balign 4
_Lt_08C4:	.ascii	"prflevad_sf[\0"
.balign 4
_Lt_08CA:	.ascii	"prflblnk_sf[\0"
.balign 4
_Lt_08D3:	.ascii	"Saving Map \"\0"
.balign 4
_Lt_09B3:	.ascii	".\\save\\\0"
.balign 4
_Lt_09B4:	.ascii	".dat\0"
