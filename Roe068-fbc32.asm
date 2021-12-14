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
push 9
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
push offset _DB_QUEUE
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
.balign 16

.globl _LN_STARTUP@0
_LN_STARTUP@0:
push ebp
mov ebp, esp
sub esp, 104
push ebx
.Lt_00B4:
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
push offset _Lt_00B6
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
fdiv qword ptr [_Lt_0131]
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
fdiv qword ptr [_Lt_0131]
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
push dword ptr [_Lt_0132]
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
mov word ptr [ebp-64], ax
jmp .Lt_00BB
.Lt_00BE:
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
.Lt_00BC:
movsx eax, word ptr [_TTT_SI]
inc eax
mov word ptr [_TTT_SI], ax
.Lt_00BB:
movsx eax, word ptr [_TTT_SI]
movsx ebx, word ptr [ebp-64]
cmp eax, ebx
jle .Lt_00BE
.Lt_00BD:
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
lea ebx, [ebp-48]
push ebx
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
mov word ptr [_T_SI], 0
.Lt_00C4:
push 2
call _fb_FileInput@4
movsx eax, word ptr [_T_SI]
lea ebx, [_L_SIA+eax*2]
push ebx
call _fb_InputShort@4
.Lt_00C2:
movsx ebx, word ptr [_T_SI]
inc ebx
mov word ptr [_T_SI], bx
.Lt_00C1:
movsx ebx, word ptr [_T_SI]
cmp ebx, 64
jle .Lt_00C4
.Lt_00C3:
push 2
call _fb_FileClose@4
push 0
push 9
push offset _Lt_00C5
push -1
push offset _CTRL_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0133]
call _fb_Rnd@4
fmul qword ptr [_Lt_0131]
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
fadd qword ptr [_Lt_0134]
fcomp qword ptr [_Lt_0131]
fnstsw ax
test ah, 0b01000000
jz .Lt_00C7
push 0
push 5
push offset _Lt_00C8
push -1
push offset _CTRL_STR
call _fb_StrConcatAssign@20
.Lt_00C7:
mov word ptr [_TY_SI], 1
mov bx, word ptr [_DD_SI]
mov word ptr [ebp-64], bx
jmp .Lt_00CA
.Lt_00CD:
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
mov bx, word ptr [_AA_SI]
mov word ptr [ebp-68], bx
jmp .Lt_00CF
.Lt_00D2:
push 0
push -1
push 4
movsx ebx, word ptr [_TX_SI]
imul ebx, 5
add ebx, -4
push ebx
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
push offset _Lt_00D3
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
push offset _Lt_00D3
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
push offset _Lt_00D4
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
push offset _Lt_00D3
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00D6
.Lt_00D7:
call _LN_PRFLBLNK@0
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_00D6:
push 5
push offset _Lt_00D9
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00D8
.Lt_00DA:
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_00DB
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_00DC
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
push offset _Lt_00D9
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0135]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0136]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0135]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0136]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0138]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0139]
pop dword ptr [_PRFLESSSPD_SF]
push 5
push offset _Lt_00DF
push -1
push offset _MAPNAME_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00DE
.Lt_00E0:
fld dword ptr [_PRFLIDTY_SF]
fcomp dword ptr [_Lt_0133]
fnstsw ax
test ah, 0b01000000
jz .Lt_00E2
push 0
push 5
push offset _Lt_00E3
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
.Lt_00E2:
.Lt_00E1:
.Lt_00DE:
.Lt_00DD:
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_00D8:
push 5
push offset _Lt_00E5
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00E4
.Lt_00E6:
call _LN_PRFLBLNK@0
push 0
push 5
push offset _Lt_00E5
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00E5
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_Lt_013A]
pop dword ptr [_PRFLIDTY_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_00E4:
push 5
push offset _Lt_00E8
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00E7
.Lt_00E9:
call _LN_PRFLBLNK@0
push 0
push 4
push offset _Lt_00EA
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00D9
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
push offset _Lt_00E8
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_013B]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_013C]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_013B]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_013C]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0138]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_013A]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_00E7:
push 5
push offset _Lt_00EC
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00EB
.Lt_00ED:
call _LN_PRFLBLNK@0
push 0
push 8
push offset _Lt_00EE
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_00EF
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
push dword ptr [_Lt_0133]
call _fb_Rnd@4
fcomp qword ptr [_Lt_013D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00F1
push 0
push 5
push offset _Lt_00F2
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
.Lt_00F1:
.Lt_00F0:
push 0
push 5
push offset _Lt_00EC
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_013E]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_013F]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_013A]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_013E]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_013F]
pop dword ptr [_PRFLSTRMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_00EB:
push 5
push offset _Lt_00F4
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00F3
.Lt_00F5:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_00F6
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00F7
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00F4
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0140]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_013F]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0139]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_013A]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0135]
pop dword ptr [_PRFLEXP_SF]
push dword ptr [_Lt_0142]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_013A]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0140]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_013F]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0140]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0143]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_0144]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_00F3:
push 5
push offset _Lt_00F9
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00F8
.Lt_00FA:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_00FB
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 21
push offset _Lt_00FC
push -1
push offset _PRFLACTN_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00F9
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0142]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0136]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0145]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_013A]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0142]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0136]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0146]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_00F8:
push 5
push offset _Lt_00FE
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_00FD
.Lt_00FF:
call _LN_PRFLBLNK@0
push 0
push 13
push offset _Lt_0100
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0101
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
push offset _Lt_00FE
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0147]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0148]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0149]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_014A]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0139]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0147]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0148]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_014B]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_014C]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_00FD:
push 5
push offset _Lt_0103
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0102
.Lt_0104:
call _LN_PRFLBLNK@0
push 0
push 14
push offset _Lt_0105
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0101
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
push dword ptr [_Lt_0133]
call _fb_Rnd@4
fstp dword ptr [_RR_SF]
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_014D]
fnstsw ax
test ah, 0b01000001
setz al
shr eax, 1
sbb eax, eax
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_014E]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0107
push 0
push 5
push offset _Lt_00F2
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
.Lt_0107:
.Lt_0106:
fld dword ptr [_RR_SF]
fcomp qword ptr [_Lt_014E]
fnstsw ax
test ah, 0b01000001
setz al
shr eax, 1
sbb eax, eax
fld dword ptr [_RR_SF]
fcomp dword ptr [_Lt_0133]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0109
push 0
push 5
push offset _Lt_010A
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
.Lt_0109:
.Lt_0108:
push 0
push 5
push offset _Lt_0103
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_013B]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_014F]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_013A]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_014A]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0139]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_013B]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_014F]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0150]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_0102:
push 5
push offset _Lt_010C
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_010B
.Lt_010D:
call _LN_PRFLBLNK@0
push 0
push 5
push offset _Lt_010E
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_010C
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_0133]
fnstsw ax
test ah, 0b01000000
jz .Lt_0110
.Lt_0111:
push 0
push 5
push offset _Lt_0112
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
jmp .Lt_010F
.Lt_0110:
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_013A]
fnstsw ax
test ah, 0b01000000
jz .Lt_0113
.Lt_0114:
push 0
push 5
push offset _Lt_0115
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
jmp .Lt_010F
.Lt_0113:
fld dword ptr [_RID_SF]
fcomp dword ptr [_Lt_0139]
fnstsw ax
test ah, 0b01000000
jz .Lt_0116
.Lt_0117:
push 0
push 5
push offset _Lt_0118
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
.Lt_0116:
.Lt_010F:
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_014F]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_014F]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_014F]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_014F]
pop dword ptr [_PRFLSTRMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_010B:
push 5
push offset _Lt_011A
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0119
.Lt_011B:
call _LN_PRFLBLNK@0
push 0
push 11
push offset _Lt_011C
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_011D
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
push dword ptr [_Lt_0133]
call _fb_Rnd@4
fmul qword ptr [_Lt_0131]
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
fadd qword ptr [_Lt_0134]
fcomp qword ptr [_Lt_0131]
fnstsw ax
test ah, 0b01000000
jz .Lt_011F
push 0
push 9
push offset _Lt_0120
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_0121
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
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _PRFLACTNCT_STR
call _fb_StrAssign@20
.Lt_011F:
.Lt_011E:
push 0
push 5
push offset _Lt_011A
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0140]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0140]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0140]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0151]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0140]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0140]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_013F]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0139]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_0152]
pop dword ptr [_PRFLEVAD_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_0119:
push 5
push offset _Lt_0126
push -1
push offset _RFG_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0125
.Lt_0127:
call _LN_PRFLBLNK@0
push 0
push 15
push offset _Lt_0128
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0133]
call _fb_Rnd@4
fmul qword ptr [_Lt_0131]
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
fcomp qword ptr [_Lt_0134]
fnstsw ax
test ah, 0b01000000
jz .Lt_012A
push 0
push 5
push offset _Lt_012B
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
jmp .Lt_0129
.Lt_012A:
push 0
push 5
push offset _Lt_012C
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
.Lt_0129:
push 0
push 5
push offset _Lt_0126
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0153]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0153]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLSET@0
jmp .Lt_00D5
.Lt_0125:
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
push 12
push offset _Lt_0130
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
push offset _Lt_012E
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_RID_SF]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0154]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0135]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0154]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLSET@0
.Lt_012D:
.Lt_00D5:
.Lt_00D0:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_00CF:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-68]
cmp eax, ebx
jle .Lt_00D2
.Lt_00D1:
.Lt_00CB:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_00CA:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-64]
cmp ebx, eax
jle .Lt_00CD
.Lt_00CC:
push 1
call _fb_FileClose@4
.Lt_00B5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_STARTTITLE@0
_LN_STARTTITLE@0:
push ebx
.Lt_0159:
.Lt_015B:
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
push offset _Lt_015E
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
push offset _Lt_015F
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
push offset _Lt_0160
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
push offset _Lt_0161
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
push offset _Lt_0162
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
push offset _Lt_0163
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
push offset _Lt_0164
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
push offset _Lt_0165
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
push offset _Lt_0166
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
push offset _Lt_0167
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
push offset _Lt_0168
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
push offset _Lt_0169
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
push offset _Lt_016A
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_016B
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
je .Lt_016D
call _LN_SCREENSET@0
mov dword ptr [_RESTART_ROE], 1
jmp .Lt_015C
.Lt_016D:
.Lt_016C:
push 2
push offset _Lt_016E
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_016F
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
je .Lt_0171
call _LN_SCREENSET@0
push 0
call _fb_End@4
.Lt_0171:
.Lt_0170:
push 2
push offset _Lt_0172
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0173
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
je .Lt_0175
call _LN_STARTHELP@0
.Lt_0175:
.Lt_0174:
.Lt_015D:
push 2
push offset _Lt_0176
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0177
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
jne .Lt_015B
.Lt_015C:
.Lt_015A:
pop ebx
ret
.balign 16

.globl _LN_STARTHELP@0
_LN_STARTHELP@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_018C:
mov eax, dword ptr [_CLV_BUFFER_HELP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
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
.Lt_0190:
push 63
call _fb_FileEof@4
not eax
test eax, eax
je .Lt_0191
push 0
push -1
push offset _R_STR
push 63
call _fb_FileLineInput@16
push 13
push offset _Lt_0192
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0194
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
.Lt_0194:
.Lt_0193:
push 11
push offset _Lt_0195
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0197
push 0
push 0
push -1
push 1
push 22
call _fb_Locate@20
mov word ptr [_COLR_SI], 9
push 0
push 12
push offset _Lt_0167
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
push offset _Lt_0198
push -1
push offset _TEXTS_STR
call _fb_StrAssign@20
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
.Lt_0199:
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _LN_COMMANDWAIT@0
push 2
push offset _Lt_008E
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_019C
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
je .Lt_019E
push 63
call _fb_FileClose@4
jmp .Lt_018D
.Lt_019E:
.Lt_019D:
.Lt_019B:
push 2
push offset _Lt_0176
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
push offset _Lt_0177
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
jne .Lt_0199
.Lt_019A:
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
.Lt_0197:
.Lt_0196:
push 6
push offset _Lt_019F
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_01A1
push 63
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
jmp .Lt_018D
.Lt_01A1:
.Lt_01A0:
push 8
push offset _Lt_01A2
push -1
push 7
push offset _R_STR
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01A4
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
.Lt_01A4:
.Lt_01A3:
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
je .Lt_01A6
push -1
push 0
call _fb_SPACE@4
push eax
push -1
push offset _R_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_01A8
push dword ptr [_CLV_BUFFER_HELP]
push offset _CLV_BUFFER
call _LN_SHOWTEXT@8
jmp .Lt_01A7
.Lt_01A8:
push 1
push 0
call _fb_PrintVoid@8
.Lt_01A7:
.Lt_01A6:
.Lt_01A5:
jmp .Lt_0190
.Lt_0191:
push 63
call _fb_FileClose@4
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
call _CINPUT@0
.Lt_018D:
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
.Lt_01B3:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-4], ax
jmp .Lt_01B6
.Lt_01B9:
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-8], ax
jmp .Lt_01BB
.Lt_01BE:
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
fcomp qword ptr [_Lt_01EC]
fnstsw ax
test ah, 0b01000000
jz .Lt_01C0
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_Lt_0134]
push dword ptr [_Lt_0134+4]
pop dword ptr [_G_DFA+eax+76]
pop dword ptr [_G_DFA+eax+72]
push 4
push offset _Lt_00D3
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
push offset _Lt_01C1
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
je .Lt_01C3
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_01C3:
.Lt_01C2:
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
jne .Lt_01C6
.Lt_01C7:
jmp .Lt_01C4
.Lt_01C6:
cmp dword ptr [ebp-12], 1919185011
jne .Lt_01C8
.Lt_01C9:
call _LN_CRTNSPDR@0
jmp .Lt_01C4
.Lt_01C8:
cmp dword ptr [ebp-12], 1600284023
jne .Lt_01CA
.Lt_01CB:
call _LN_CRTNWEB@0
jmp .Lt_01C4
.Lt_01CA:
cmp dword ptr [ebp-12], 2036495460
jne .Lt_01CC
.Lt_01CD:
call _LN_CRTNDTBY@0
jmp .Lt_01C4
.Lt_01CC:
cmp dword ptr [ebp-12], 1819112039
jne .Lt_01CE
.Lt_01CF:
call _LN_CRTNGRML@0
jmp .Lt_01C4
.Lt_01CE:
cmp dword ptr [ebp-12], 1953196147
jne .Lt_01D0
.Lt_01D1:
call _LN_CRTNSHKT@0
jmp .Lt_01C4
.Lt_01D0:
cmp dword ptr [ebp-12], 1684499813
jne .Lt_01D2
.Lt_01D3:
call _LN_CRTNEMGD@0
jmp .Lt_01C4
.Lt_01D2:
cmp dword ptr [ebp-12], 1601203561
jne .Lt_01D4
.Lt_01D5:
call _LN_CRTNIMP@0
jmp .Lt_01C4
.Lt_01D4:
cmp dword ptr [ebp-12], 1701996902
jne .Lt_01D6
.Lt_01D8:
call _LN_CRTNFIRE@0
jmp .Lt_01C4
.Lt_01D6:
cmp dword ptr [ebp-12], 2019847792
jne .Lt_01D9
.Lt_01DA:
call _LN_CRTNPNDX@0
jmp .Lt_01C4
.Lt_01D9:
cmp dword ptr [ebp-12], 1937007459
jne .Lt_01DB
.Lt_01DD:
call _LN_CRTNCCTS@0
jmp .Lt_01C4
.Lt_01DB:
cmp dword ptr [ebp-12], 1919183970
jne .Lt_01DE
.Lt_01DF:
call _LN_CRTNBLDR@0
jmp .Lt_01C4
.Lt_01DE:
cmp dword ptr [ebp-12], 1953723748
jne .Lt_01E0
.Lt_01E1:
call _LN_CRTNDUST@0
.Lt_01E0:
.Lt_01C4:
.Lt_01C0:
.Lt_01BF:
.Lt_01BC:
movsx eax, word ptr [_TY_SI]
inc eax
mov word ptr [_TY_SI], ax
.Lt_01BB:
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [ebp-8]
cmp eax, ebx
jle .Lt_01BE
.Lt_01BD:
.Lt_01B7:
movsx ebx, word ptr [_TX_SI]
inc ebx
mov word ptr [_TX_SI], bx
.Lt_01B6:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [ebp-4]
cmp ebx, eax
jle .Lt_01B9
.Lt_01B8:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-4], ax
jmp .Lt_01E3
.Lt_01E6:
mov word ptr [_TY_SI], 1
mov ax, word ptr [_DD_SI]
mov word ptr [ebp-8], ax
jmp .Lt_01E8
.Lt_01EB:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
push dword ptr [_Lt_01EC]
push dword ptr [_Lt_01EC+4]
pop dword ptr [_G_DFA+eax+76]
pop dword ptr [_G_DFA+eax+72]
.Lt_01E9:
movsx eax, word ptr [_TY_SI]
inc eax
mov word ptr [_TY_SI], ax
.Lt_01E8:
movsx eax, word ptr [_TY_SI]
movsx ebx, word ptr [ebp-8]
cmp eax, ebx
jle .Lt_01EB
.Lt_01EA:
.Lt_01E4:
movsx ebx, word ptr [_TX_SI]
inc ebx
mov word ptr [_TX_SI], bx
.Lt_01E3:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [ebp-4]
cmp ebx, eax
jle .Lt_01E6
.Lt_01E5:
.Lt_01B4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_COMMAND@0
_LN_COMMAND@0:
.Lt_01EF:
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
.Lt_01F0:
ret
.balign 16

.globl _LN_COMMAND2@0
_LN_COMMAND2@0:
.Lt_01F1:
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
jle .Lt_01F4
mov eax, dword ptr [_CLV_BUFFER_STATUS]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
mov word ptr [_STATX_SI], 24
call _LN_STATUS@0
.Lt_01F4:
.Lt_01F3:
.Lt_01F2:
ret
.balign 16

.globl _LN_COMMAND3@0
_LN_COMMAND3@0:
push ebp
mov ebp, esp
sub esp, 176
push ebx
push esi
.Lt_01F5:
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
push offset _Lt_01F7
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
push offset _NAMES_BUFFER
call _fb_ArrayRedimObj
add esp, 28
push 0
push 1
push offset _Lt_0000
push -1
mov eax, dword ptr [_NAMES_BUFFER]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
mov ebx, dword ptr [_NAMES_BUFFER]
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
je .Lt_01FB
mov word ptr [_TITLED_SI], 1
call _LN_COMMAND2@0
jmp .Lt_01FA
.Lt_01FB:
mov word ptr [_TITLED_SI], 0
call _LN_COMMAND2@0
.Lt_01FA:
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
push 7
push offset _Lt_01FE
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_01FD
.Lt_01FF:
push offset _MAP_BUFFER
lea eax, [ebp-12]
push eax
call _SAVEGAME_SAVE@8
push 0
push 2
push offset _Lt_008E
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
jmp .Lt_01F6
jmp .Lt_01FC
.Lt_01FD:
push 7
push offset _Lt_0201
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0200
.Lt_0202:
push offset _MAP_BUFFER
lea eax, [ebp-12]
push eax
call _SAVEGAME_LOAD@8
push 0
push 2
push offset _Lt_008E
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
jmp .Lt_01F6
.Lt_0200:
.Lt_01FC:
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0204
mov word ptr [_STATX_SI], 24
call _LN_GETACTION@0
push 7
push offset _Lt_0205
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
je .Lt_0207
push 0
push 2
push offset _Lt_0208
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_PAYLEVELUP@0
mov dword ptr [_EXITCOMMAND3], -1
lea ebx, [ebp-168]
push ebx
call _fb_ArrayDestructStr@4
lea ebx, [ebp-60]
push ebx
call _fb_ArrayStrErase@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .Lt_01F6
.Lt_0207:
.Lt_0206:
push 5
push offset _Lt_020B
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_020A
.Lt_020C:
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
jmp .Lt_01F6
jmp .Lt_0209
.Lt_020A:
push 7
push offset _Lt_020E
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_020D
.Lt_020F:
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
jmp .Lt_01F6
jmp .Lt_0209
.Lt_020D:
push 7
push offset _Lt_0211
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0210
.Lt_0212:
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
jmp .Lt_01F6
jmp .Lt_0209
.Lt_0210:
push 7
push offset _Lt_0214
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0213
.Lt_0215:
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
jmp .Lt_01F6
jmp .Lt_0209
.Lt_0213:
push 7
push offset _Lt_0217
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0216
.Lt_0218:
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
jmp .Lt_01F6
.Lt_0216:
.Lt_0209:
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
je .Lt_021A
mov word ptr [_D_SI], 0
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_021A:
.Lt_0219:
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
je .Lt_021C
mov word ptr [_D_SI], 1
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_021C:
.Lt_021B:
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
je .Lt_021E
mov word ptr [_D_SI], 2
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_021E:
.Lt_021D:
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
je .Lt_0220
mov word ptr [_D_SI], 3
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_0220:
.Lt_021F:
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
je .Lt_0222
mov word ptr [_D_SI], 4
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
call _LN_COMMAND2@0
.Lt_0222:
.Lt_0221:
push 5
push offset _Lt_01C1
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
je .Lt_0224
movsx eax, word ptr [_LB_SI]
cmp eax, -1
jne .Lt_0226
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
je .Lt_0228
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_STATX_SI]
sub ebx, eax
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_025C]
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
fdiv qword ptr [_Lt_025C]
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
fstp qword ptr [ebp-176]
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_025D]
fld qword ptr [ebp-176]
fcompp
fnstsw ax
test ah, 0b01000001
setnz al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_022A
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
je .Lt_022C
push 0
push -1
push offset _AA_STR
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
jmp .Lt_022B
.Lt_022C:
push 0
push 5
push offset _Lt_00D3
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
.Lt_022B:
push 0
push 3
push offset _Lt_022D
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_022A:
.Lt_0229:
.Lt_0228:
.Lt_0227:
jmp .Lt_0225
.Lt_0226:
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
fdiv qword ptr [_Lt_025D]
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
jle .Lt_022F
mov word ptr [ebp-72], 1
lea eax, [ebp-96]
push eax
call _fb_CVL@4
mov word ptr [ebp-172], ax
jmp .Lt_0231
.Lt_0234:
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
jne .Lt_0236
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
.Lt_0236:
.Lt_0235:
.Lt_0232:
movsx eax, word ptr [ebp-72]
inc eax
mov word ptr [ebp-72], ax
.Lt_0231:
movsx eax, word ptr [ebp-72]
movsx ebx, word ptr [ebp-172]
cmp eax, ebx
jle .Lt_0234
.Lt_0233:
lea ebx, [ebp-120]
push ebx
call _fb_CVL@4
test eax, eax
jle .Lt_0238
push 7
push offset _Lt_023B
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_023A
.Lt_023C:
push 0
push -1
lea eax, [ebp-120]
push eax
call _fb_CVL@4
dec eax
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_025F]
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
fmul qword ptr [_Lt_025F]
lea eax, [ebp-120]
push eax
fstp qword ptr [ebp-176]
call _fb_CVL@4
add eax, 8
mov ecx, 5
cdq
idiv ecx
mov eax, edx
push eax
fild dword ptr [esp]
add esp, 4
fadd qword ptr [ebp-176]
fadd qword ptr [_Lt_0134]
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
jmp .Lt_0239
.Lt_023A:
push 7
push offset _Lt_023E
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_023D
.Lt_023F:
push 0
push -1
lea eax, [ebp-120]
push eax
call _fb_CVL@4
dec eax
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_025F]
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
fmul qword ptr [_Lt_025F]
lea eax, [ebp-120]
push eax
fstp qword ptr [ebp-176]
call _fb_CVL@4
add eax, 10
mov ecx, 5
cdq
idiv ecx
mov eax, edx
push eax
fild dword ptr [esp]
add esp, 4
fadd qword ptr [ebp-176]
fadd qword ptr [_Lt_0134]
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
jmp .Lt_0239
.Lt_023D:
push 7
push offset _Lt_0241
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0240
.Lt_0242:
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
jge .Lt_0244
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
.Lt_0244:
.Lt_0243:
jmp .Lt_0239
.Lt_0240:
push 7
push offset _Lt_0246
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0245
.Lt_0247:
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
jle .Lt_0249
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
.Lt_0249:
.Lt_0248:
.Lt_0245:
.Lt_0239:
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
.Lt_0238:
.Lt_0237:
.Lt_022F:
.Lt_022E:
.Lt_0225:
.Lt_0224:
.Lt_0223:
call _LN_PUTACTION@0
call _fb_Timer@0
fstp dword ptr [_ST_SF]
.Lt_0204:
.Lt_0203:
mov word ptr [_STATX_SI], 24
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
je .Lt_024B
call _LN_STARTTITLE@0
lea ebx, [ebp-168]
push ebx
call _fb_ArrayDestructStr@4
lea ebx, [ebp-60]
push ebx
call _fb_ArrayStrErase@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .Lt_01F6
.Lt_024B:
.Lt_024A:
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
je .Lt_024D
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
je .Lt_024F
movsx ebx, word ptr [_YM_SI]
add ebx, -2
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_025C]
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
fadd qword ptr [_Lt_0262]
fistp word ptr [_TEMPY_SI]
movsx ebx, word ptr [_XM_SI]
add ebx, -2
push ebx
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_025C]
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
fadd qword ptr [_Lt_0262]
fistp word ptr [_TEMPX_SI]
mov bx, word ptr [_TEMPY_SI]
mov word ptr [_DY_SI], bx
mov bx, word ptr [_TEMPX_SI]
mov word ptr [_EX_SI], bx
push 0
push 3
push offset _Lt_022D
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_024F:
.Lt_024E:
.Lt_024D:
.Lt_024C:
movsx ebx, word ptr [_EX_SI]
cmp ebx, 1
jge .Lt_0251
.Lt_0252:
mov word ptr [_EX_SI], 1
jmp .Lt_0250
.Lt_0251:
movsx ebx, word ptr [_EX_SI]
movsx eax, word ptr [_AA_SI]
cmp ebx, eax
jle .Lt_0253
.Lt_0254:
mov ax, word ptr [_AA_SI]
mov word ptr [_EX_SI], ax
.Lt_0253:
.Lt_0250:
movsx eax, word ptr [_DY_SI]
cmp eax, 1
jge .Lt_0256
.Lt_0257:
mov word ptr [_DY_SI], 1
jmp .Lt_0255
.Lt_0256:
movsx eax, word ptr [_DY_SI]
movsx ebx, word ptr [_DD_SI]
cmp eax, ebx
jle .Lt_0258
.Lt_0259:
mov bx, word ptr [_DD_SI]
mov word ptr [_DY_SI], bx
.Lt_0258:
.Lt_0255:
movsx ebx, word ptr [_RB_SI]
cmp ebx, -1
jne .Lt_025B
push 0
push 2
push offset _Lt_00A1
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_025B:
.Lt_025A:
lea ebx, [ebp-168]
push ebx
call _fb_ArrayDestructStr@4
lea ebx, [ebp-60]
push ebx
call _fb_ArrayStrErase@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_01F6:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_NAMES@0
_LN_NAMES@0:
.Lt_0290:
.Lt_0291:
ret
.balign 16

.globl _LN_SWAPDATA@0
_LN_SWAPDATA@0:
push ebx
push esi
.Lt_0292:
mov word ptr [_T_SI], 0
.Lt_0297:
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
.Lt_0295:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0294:
movsx eax, word ptr [_T_SI]
cmp eax, 1
jle .Lt_0297
.Lt_0296:
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
.Lt_029B:
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
.Lt_0299:
movsx ebx, word ptr [_T_SI]
inc ebx
mov word ptr [_T_SI], bx
.Lt_0298:
movsx ebx, word ptr [_T_SI]
cmp ebx, 4
jle .Lt_029B
.Lt_029A:
mov word ptr [_T_SI], 0
.Lt_029F:
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
.Lt_029D:
movsx ebx, word ptr [_T_SI]
inc ebx
mov word ptr [_T_SI], bx
.Lt_029C:
movsx ebx, word ptr [_T_SI]
cmp ebx, 16
jle .Lt_029F
.Lt_029E:
.Lt_0293:
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
.Lt_02A0:
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
jne .Lt_02A4
.Lt_02A6:
call _LN_ATTKBITE@0
jmp .Lt_02A2
.Lt_02A4:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_02A7
.Lt_02A9:
call _LN_ATTKPNCH@0
jmp .Lt_02A2
.Lt_02A7:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_02AA
.Lt_02AC:
call _LN_ATTKKICK@0
jmp .Lt_02A2
.Lt_02AA:
cmp dword ptr [ebp-4], 1836019318
jne .Lt_02AD
.Lt_02AE:
call _LN_ATTKVNOM@0
jmp .Lt_02A2
.Lt_02AD:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_02AF
.Lt_02B0:
call _LN_ATTKDGGR@0
jmp .Lt_02A2
.Lt_02AF:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_02B1
.Lt_02B2:
call _LN_ATTKPIKE@0
jmp .Lt_02A2
.Lt_02B1:
cmp dword ptr [ebp-4], 1701999971
jne .Lt_02B3
.Lt_02B5:
call _LN_USECURE@0
jmp .Lt_02A2
.Lt_02B3:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_02B6
.Lt_02B7:
call _LN_ATTKFIRE@0
jmp .Lt_02A2
.Lt_02B6:
push 4
push offset _Lt_00D3
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
push offset _Lt_00D3
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
.Lt_02B8:
.Lt_02A2:
.Lt_02A1:
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
.Lt_02B9:
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
je .Lt_02BC
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
push dword ptr [_Lt_0133]
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
jge .Lt_02C0
mov word ptr [_ATTACKBLOCKED], 0
.Lt_02C0:
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
fcomp qword ptr [_Lt_01EC]
fnstsw ax
test ah, 0b01000001
jz .Lt_02C2
call _LN_VICTORY@0
.Lt_02C2:
.Lt_02C1:
.Lt_02BE:
.Lt_02BD:
jmp .Lt_02BB
.Lt_02BC:
push 4
push offset _Lt_00D3
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
push offset _Lt_00D3
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
.Lt_02BB:
.Lt_02BA:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ATTKBITE@0
_LN_ATTKBITE@0:
push ebx
.Lt_02C6:
push 0
push 5
push offset _Lt_02A5
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02A5
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
fdiv qword ptr [_Lt_025D]
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
fadd qword ptr [_Lt_025F]
fistp word ptr [_ATTACKDAMAGE]
mov word ptr [_STRDAMAGE_SI], 2
call _LN_BATTLE@0
.Lt_02C7:
pop ebx
ret
.balign 16

.globl _LN_ATTKPNCH@0
_LN_ATTKPNCH@0:
push ebx
.Lt_02C8:
push 0
push 5
push offset _Lt_02A8
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02A8
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
fdiv qword ptr [_Lt_02CA]
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
fadd qword ptr [_Lt_025C]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02CB]
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
fadd qword ptr [_Lt_0131]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02C9:
pop ebx
ret
.balign 16

.globl _LN_ATTKWSTF@0
_LN_ATTKWSTF@0:
push ebx
.Lt_02CC:
push 0
push 5
push offset _Lt_00F7
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00F7
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
fdiv qword ptr [_Lt_025D]
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
fadd qword ptr [_Lt_025F]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02CA]
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
fadd qword ptr [_Lt_025D]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02CD:
pop ebx
ret
.balign 16

.globl _LN_ATTKKICK@0
_LN_ATTKKICK@0:
push ebx
.Lt_02CE:
push 0
push 5
push offset _Lt_02AB
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02AB
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
fdiv qword ptr [_Lt_025F]
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
fadd qword ptr [_Lt_025D]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02D0]
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
fadd qword ptr [_Lt_025C]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02CF:
pop ebx
ret
.balign 16

.globl _LN_ATTKVNOM@0
_LN_ATTKVNOM@0:
push ebx
.Lt_02D1:
push 0
push 5
push offset _Lt_00E3
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00E3
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
fdiv qword ptr [_Lt_025D]
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
fadd qword ptr [_Lt_02D0]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_025D]
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
fadd qword ptr [_Lt_02D3]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02D2:
pop ebx
ret
.balign 16

.globl _LN_ATTKDGGR@0
_LN_ATTKDGGR@0:
push ebx
.Lt_02D4:
push 0
push 5
push offset _Lt_00F2
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00F2
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
fdiv qword ptr [_Lt_025D]
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
fadd qword ptr [_Lt_02CB]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02D3]
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
fadd qword ptr [_Lt_0134]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02D5:
pop ebx
ret
.balign 16

.globl _LN_ATTKPIKE@0
_LN_ATTKPIKE@0:
push ebx
.Lt_02D6:
push 0
push 5
push offset _Lt_010A
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_010A
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
fdiv qword ptr [_Lt_025C]
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
fadd qword ptr [_Lt_02D8]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_025F]
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
fadd qword ptr [_Lt_02CB]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02D7:
pop ebx
ret
.balign 16

.globl _LN_ATTKBURN@0
_LN_ATTKBURN@0:
push ebx
.Lt_02D9:
push 0
push 5
push offset _Lt_00D3
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02DB
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
fdiv qword ptr [_Lt_0131]
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
fadd qword ptr [_Lt_02D8]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_025D]
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
fadd qword ptr [_Lt_02DE]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
push 5
push offset _Lt_01D7
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
jne .Lt_02DD
call _LN_GONE@0
.Lt_02DD:
.Lt_02DC:
.Lt_02DA:
pop ebx
ret
.balign 16

.globl _LN_ATTKFIRE@0
_LN_ATTKFIRE@0:
push ebx
.Lt_02DF:
push 0
push 5
push offset _Lt_00D3
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_01D7
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
fdiv qword ptr [_Lt_0131]
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
fadd qword ptr [_Lt_02DE]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_025D]
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
fadd qword ptr [_Lt_02E1]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02E0:
pop ebx
ret
.balign 16

.globl _LN_ATTKWEB@0
_LN_ATTKWEB@0:
push ebx
.Lt_02E2:
push 0
push 5
push offset _Lt_00D3
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00E8
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
fdiv qword ptr [_Lt_025F]
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
fadd qword ptr [_Lt_02DE]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02E3:
pop ebx
ret
.balign 16

.globl _LN_ATTKTNGL@0
_LN_ATTKTNGL@0:
push ebx
.Lt_02E4:
push 0
push 5
push offset _Lt_00D3
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02E6
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
fdiv qword ptr [_Lt_02CA]
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
fadd qword ptr [_Lt_02D3]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02E5:
pop ebx
ret
.balign 16

.globl _LN_ATTKLASH@0
_LN_ATTKLASH@0:
push ebx
.Lt_02E7:
push 0
push 5
push offset _Lt_00D3
push -1
push offset _ATTACKPIC_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_02E9
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
fdiv qword ptr [_Lt_025F]
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
fadd qword ptr [_Lt_025F]
fistp word ptr [_ATTACKDAMAGE]
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fdiv qword ptr [_Lt_02D0]
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
fadd qword ptr [_Lt_02CB]
fistp word ptr [_STRDAMAGE_SI]
call _LN_BATTLE@0
.Lt_02E8:
pop ebx
ret
.balign 16

.globl _LN_USECURE@0
_LN_USECURE@0:
push ebx
push esi
.Lt_02EA:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02CB]
fnstsw ax
test ah, 0b00000001
jnz .Lt_02ED
push 4
push offset _Lt_02B4
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
push offset _Lt_02B4
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
push offset _Lt_02B4
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
fld qword ptr [_Lt_02F6]
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
fadd qword ptr [_Lt_02D8]
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
fadd qword ptr [_Lt_02DE]
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
fcomp qword ptr [_Lt_01EC]
fnstsw ax
test ah, 0b01000001
jz .Lt_02F1
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
push dword ptr [_Lt_01EC]
push dword ptr [_Lt_01EC+4]
pop dword ptr [_G_DFA+ebx+20]
pop dword ptr [_G_DFA+ebx+16]
.Lt_02F1:
.Lt_02F0:
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
fcomp qword ptr [_Lt_01EC]
fnstsw ax
test ah, 0b01000001
jz .Lt_02F3
call _LN_VICTORY@0
.Lt_02F3:
.Lt_02F2:
.Lt_02EF:
.Lt_02EE:
jmp .Lt_02EC
.Lt_02ED:
push 4
push offset _Lt_00D3
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
push offset _Lt_00D3
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
.Lt_02F5:
.Lt_02F4:
.Lt_02EC:
.Lt_02EB:
pop esi
pop ebx
ret
.balign 16

.globl _LN_USESLEP@0
_LN_USESLEP@0:
push ebx
push esi
.Lt_02F7:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02CB]
fnstsw ax
test ah, 0b00000001
jnz .Lt_02FA
push 4
push offset _Lt_00D3
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
push offset _Lt_02FD
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
push offset _Lt_02FD
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
fld qword ptr [_Lt_02F6]
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
push offset _Lt_00D3
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
push offset _Lt_01C1
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
fdiv qword ptr [_Lt_02D3]
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
push offset _Lt_01C1
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_02FF
push 0
push 5
push offset _Lt_01C1
push -1
push offset _TEMPACTION_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0133]
call _fb_Rnd@4
fmul qword ptr [_Lt_02CA]
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
fadd qword ptr [_Lt_025F]
fistp word ptr [_TEMPDIS_SI]
call _LN_TEMPPUT@0
.Lt_02FF:
.Lt_02FE:
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
fld qword ptr [_Lt_0306]
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
fcomp qword ptr [_Lt_01EC]
fnstsw ax
test ah, 0b01000001
jz .Lt_0301
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
push dword ptr [_Lt_01EC]
push dword ptr [_Lt_01EC+4]
pop dword ptr [_G_DFA+eax+20]
pop dword ptr [_G_DFA+eax+16]
.Lt_0301:
.Lt_0300:
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
fcomp qword ptr [_Lt_01EC]
fnstsw ax
test ah, 0b01000001
jz .Lt_0303
call _LN_VICTORY@0
.Lt_0303:
.Lt_0302:
.Lt_02FC:
.Lt_02FB:
jmp .Lt_02F9
.Lt_02FA:
push 4
push offset _Lt_00D3
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
push offset _Lt_00D3
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
.Lt_0305:
.Lt_0304:
.Lt_02F9:
.Lt_02F8:
pop esi
pop ebx
ret
.balign 16

.globl _LN_VICTORY@0
_LN_VICTORY@0:
push ebx
push esi
.Lt_0307:
call _LN_PRFLBLNK@0
push 0
push 6
push offset _Lt_0309
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
push offset _Lt_030A
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
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_030B]
pop dword ptr [_PRFLHPMAX_SF]
call _LN_PRFLMAKE@0
.Lt_0308:
pop esi
pop ebx
ret
.balign 16

.globl _LN_PILLAGE@0
_LN_PILLAGE@0:
push ebx
push esi
.Lt_030C:
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
.Lt_030D:
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
.Lt_030E:
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
jle .Lt_0311
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_EXPSHOP]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
.Lt_0312:
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
push offset _Lt_0313
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
push offset _Lt_00F4
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
jne .Lt_0317
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0134]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0319
push 0
push 5
push offset _Lt_031A
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_031C
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_031A
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
.Lt_031C:
.Lt_031B:
.Lt_0319:
.Lt_0318:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0134]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0320
push 0
push 5
push offset _Lt_0321
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0323
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0321
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
.Lt_0323:
.Lt_0322:
.Lt_0320:
.Lt_031F:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0134]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0327
push 0
push 5
push offset _Lt_02A5
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0329
push 0
push -1
push -1
push 2
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02A5
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
.Lt_0329:
.Lt_0328:
.Lt_0327:
.Lt_0326:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0134]
fnstsw ax
test ah, 0b00000001
jnz .Lt_032D
push 0
push 5
push offset _Lt_02A8
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_032F
push 0
push -1
push -1
push 2
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02A8
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
.Lt_032F:
.Lt_032E:
.Lt_032D:
.Lt_032C:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0131]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0333
push 0
push 5
push offset _Lt_02AB
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0335
push 0
push -1
push -1
push 10
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02AB
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
.Lt_0335:
.Lt_0334:
.Lt_0333:
.Lt_0332:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_025C]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0339
push 0
push 5
push offset _Lt_02B4
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_033B
push 0
push -1
push -1
push 20
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_02B4
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
.Lt_033B:
.Lt_033A:
.Lt_0339:
.Lt_0338:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_02D0]
fnstsw ax
test ah, 0b00000001
jnz .Lt_033F
push 0
push 5
push offset _Lt_00E3
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
push 30
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_00E3
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
.Lt_033F:
.Lt_033E:
.Lt_0317:
.Lt_0316:
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0344
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
fdiv qword ptr [_Lt_02CB]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov word ptr [_MENUITEM_SI], 1
mov ax, word ptr [_MENUSIZE_SI]
mov word ptr [ebp-84], ax
jmp .Lt_0348
.Lt_034B:
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
jle .Lt_034D
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push 5
push 2
push offset _Lt_0351
push -1
push -1
movsx eax, word ptr [_MENUCOST_SI]
push eax
call _fb_IntToStr@4
push eax
push 5
push offset _Lt_0350
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
push offset _Lt_034F
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
push offset _Lt_00A1
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_034E
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
.Lt_034D:
.Lt_034C:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_035A
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_034E
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
.Lt_035A:
.Lt_0359:
.Lt_0349:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_0348:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-84]
cmp eax, ebx
jle .Lt_034B
.Lt_034A:
.Lt_035D:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_00D3
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
jne .Lt_035F
movsx ebx, word ptr [_XM_SI]
cmp ebx, 15
jne .Lt_0361
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
je .Lt_0363
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
.Lt_0363:
.Lt_0362:
.Lt_0361:
.Lt_0360:
.Lt_035F:
.Lt_035E:
push 5
push offset _Lt_0313
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_0344
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
push offset _Lt_00D3
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0365
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
jnz .Lt_0367
push 0
push 2
push offset _Lt_0208
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_ABILITYGAIN@0
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_0367:
.Lt_0366:
jmp .Lt_0312
.Lt_0365:
.Lt_0364:
push 5
push offset _Lt_0313
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_0369
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
jnz .Lt_036B
push 0
push 2
push offset _Lt_0208
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_LEVELUP@0
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
.Lt_036B:
.Lt_036A:
jmp .Lt_0312
.Lt_0369:
.Lt_0368:
push 5
push offset _Lt_0344
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_036D
push 0
push 2
push offset _Lt_0208
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_036C
.Lt_036D:
jmp .Lt_035D
.Lt_036C:
.Lt_0311:
.Lt_0310:
.Lt_030F:
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
.Lt_0373:
.Lt_0375:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0377
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
push offset _Lt_00F2
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0379
push 0
push -1
push -1
push 5
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_00F2
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
.Lt_0379:
.Lt_0378:
push 0
push 5
push offset _Lt_010A
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_037D
push 0
push -1
push -1
push 20
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_010A
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
.Lt_037D:
.Lt_037C:
push 0
push 5
push offset _Lt_0380
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0382
push 0
push -1
push -1
push 15
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0380
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
.Lt_0382:
.Lt_0381:
push 0
push 5
push offset _Lt_0385
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_0387
push 0
push -1
push -1
push 15
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0385
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
.Lt_0387:
.Lt_0386:
push 0
push 5
push offset _Lt_00F7
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_038B
push 0
push -1
push -1
push 10
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_00F7
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
.Lt_038B:
.Lt_038A:
push 0
push -1
push -1
push 0
call _fb_MKL@4
push eax
push -1
push 5
push offset _Lt_0344
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
fdiv qword ptr [_Lt_02CB]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 9
push offset _Lt_0120
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
push offset _Lt_0391
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
push offset _Lt_0395
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
jmp .Lt_0399
.Lt_039C:
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
jle .Lt_039E
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push 5
push 2
push offset _Lt_0351
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
push offset _Lt_0350
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
push offset _Lt_034F
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
push offset _Lt_00A1
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_034E
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
.Lt_039E:
.Lt_039D:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_03A7
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_034E
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
.Lt_03A7:
.Lt_03A6:
.Lt_039A:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_0399:
movsx eax, word ptr [_MENUITEM_SI]
movsx ebx, word ptr [ebp-84]
cmp eax, ebx
jle .Lt_039C
.Lt_039B:
.Lt_03AA:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_00D3
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ebx, word ptr [_LB_SI]
cmp ebx, -1
jne .Lt_03AC
movsx ebx, word ptr [_XM_SI]
movsx eax, word ptr [_VIEWX_SI]
cmp ebx, eax
jne .Lt_03AE
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
je .Lt_03B0
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
.Lt_03B0:
.Lt_03AF:
.Lt_03AE:
.Lt_03AD:
.Lt_03AC:
.Lt_03AB:
push 5
push offset _Lt_0313
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_0344
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
push offset _Lt_00D3
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_03B2
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
jnz .Lt_03B4
push 0
push 2
push offset _Lt_0208
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
jmp .Lt_0375
.Lt_03B4:
.Lt_03B3:
jmp .Lt_0375
.Lt_03B2:
.Lt_03B1:
push 5
push offset _Lt_0313
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_03B6
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
jnz .Lt_03B8
push 0
push 2
push offset _Lt_0208
push -1
push offset _C_STR
call _fb_StrAssign@20
call _LN_LEVELUP@0
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
jmp .Lt_0375
.Lt_03B8:
.Lt_03B7:
jmp .Lt_0375
.Lt_03B6:
.Lt_03B5:
push 5
push offset _Lt_0344
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_03BA
push 0
push 2
push offset _Lt_0208
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_03B9
.Lt_03BA:
jmp .Lt_03AA
.Lt_03B9:
.Lt_0377:
.Lt_0376:
.Lt_0374:
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
.Lt_03C0:
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
jle .Lt_03C3
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
push offset _Lt_03C4
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
fdiv qword ptr [_Lt_02CB]
fistp word ptr [_MENUSIZE_SI]
mov word ptr [_INMENU_SI], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 12
push offset _Lt_03C7
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
push offset _Lt_03C9
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
push offset _Lt_03CB
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
push offset _Lt_03CD
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
push offset _Lt_03CF
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
push offset _Lt_0395
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
jmp .Lt_03D6
.Lt_03D9:
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
jle .Lt_03DB
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
push offset _Lt_03DC
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_034E
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
.Lt_03DB:
.Lt_03DA:
movsx eax, word ptr [_MENUCOST_SI]
test eax, eax
jne .Lt_03E2
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
push 0
push -1
push -1
push offset _RR_STR
push 2
push offset _Lt_034E
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
.Lt_03E2:
.Lt_03E1:
.Lt_03D7:
movsx eax, word ptr [_MENUITEM_SI]
inc eax
mov word ptr [_MENUITEM_SI], ax
.Lt_03D6:
movsx eax, word ptr [_MENUITEM_SI]
movsx ecx, word ptr [ebp-152]
cmp eax, ecx
jle .Lt_03D9
.Lt_03D8:
.Lt_03E5:
.Lt_03E6:
call _LN_BUTTONWAIT@0
push 0
push 5
push offset _Lt_00D3
push -1
push offset _MENUSELECT_STR
call _fb_StrAssign@20
mov word ptr [_MENUCOST_SI], 0
movsx ecx, word ptr [_LB_SI]
cmp ecx, -1
jne .Lt_03EA
movsx ecx, word ptr [_XM_SI]
movsx eax, word ptr [_VIEWX_SI]
cmp ecx, eax
jne .Lt_03EC
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
je .Lt_03EE
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
.Lt_03EE:
.Lt_03ED:
.Lt_03EC:
.Lt_03EB:
.Lt_03EA:
.Lt_03E9:
.Lt_03E8:
push 5
push offset _Lt_03C4
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_03E6
.Lt_03E7:
push 5
push offset _Lt_03C4
push -1
push offset _MENUSELECT_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_03F0
push 0
push 2
push offset _Lt_0208
push -1
push offset _C_STR
call _fb_StrAssign@20
jmp .Lt_03EF
.Lt_03F0:
call _LN_MERCHANT@0
.Lt_03EF:
.Lt_03C3:
.Lt_03C2:
.Lt_03C1:
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
.Lt_03F3:
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
jle .Lt_03F6
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
push offset _Lt_03F7
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
.Lt_03F6:
.Lt_03F5:
.Lt_03F4:
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
.Lt_03F9:
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
mov dword ptr [_CLV_BUFFER_FOCUS], eax
push dword ptr [_CLV_BUFFER_PLAYBYPLAY]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 5
push offset _Lt_00D3
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
je .Lt_03FC
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
jnz .Lt_03FE
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
push dword ptr [_Lt_0133]
call _fb_Rnd@4
fmul qword ptr [_Lt_025F]
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
fadd qword ptr [_Lt_0134]
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
push dword ptr [_Lt_0133]
call _fb_Rnd@4
fmul qword ptr [_Lt_025F]
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
fadd qword ptr [_Lt_0134]
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
push dword ptr [_Lt_0133]
call _fb_Rnd@4
fmul qword ptr [_Lt_025F]
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
fadd qword ptr [_Lt_0134]
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
jle .Lt_0400
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0428]
push dword ptr [_Lt_0429]
push dword ptr [_Lt_0141]
push dword ptr [_Lt_042A]
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
push offset _Lt_0401
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
push offset _Lt_0403
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
push offset _Lt_00A1
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
push offset _Lt_0407
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
push offset _Lt_00A1
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
push offset _Lt_040B
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
push offset _Lt_00A1
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
push offset _Lt_040F
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
push offset _Lt_0411
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
.Lt_0400:
.Lt_03FF:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_042B]
fnstsw ax
sahf
jae .Lt_0414
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_0134]
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
jle .Lt_0416
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 12
push offset _Lt_0417
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
push offset _Lt_00A1
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
fcomp qword ptr [_Lt_01EC]
fnstsw ax
test ah, 0b00000001
jnz .Lt_041C
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 6
push offset _Lt_041D
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
push offset _Lt_0351
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
push offset _Lt_00A1
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
.Lt_041C:
.Lt_041B:
.Lt_0416:
.Lt_0415:
.Lt_0414:
.Lt_0413:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0423
call _LN_OKBUTTON@0
.Lt_0423:
.Lt_0422:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+80]
fcomp qword ptr [_Lt_0131]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_00D9
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
je .Lt_0425
push 0
push 5
push offset _Lt_00E3
push -1
push offset _GETIT_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00E3
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jne .Lt_0427
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
.Lt_0427:
.Lt_0426:
.Lt_0425:
.Lt_0424:
.Lt_03FE:
.Lt_03FD:
.Lt_03FC:
.Lt_03FB:
.Lt_03FA:
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
.Lt_042E:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0431
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
push offset _Lt_03F7
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
.Lt_0431:
.Lt_0430:
.Lt_042F:
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
.Lt_0433:
push 1
push offset _Lt_0000
push -1
push offset _GETIT_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_0436
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
je .Lt_0438
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0428]
push dword ptr [_Lt_0429]
push dword ptr [_Lt_0141]
push dword ptr [_Lt_042A]
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
push offset _Lt_03F7
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
push offset _Lt_043A
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
push offset _Lt_043C
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
.Lt_0438:
.Lt_0437:
.Lt_0436:
.Lt_0435:
.Lt_0434:
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
.Lt_0441:
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
je .Lt_0444
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
push offset _Lt_0445
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
push offset _Lt_0447
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
.Lt_0444:
.Lt_0443:
.Lt_0442:
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
.Lt_044B:
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
je .Lt_044E
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
push offset _Lt_0445
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
push offset _Lt_0450
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
push offset _Lt_00A1
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
push offset _Lt_0454
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
push offset _Lt_00A1
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
.Lt_044E:
.Lt_044D:
.Lt_044C:
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
.Lt_045A:
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
je .Lt_045D
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
push offset _Lt_045E
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
push offset _Lt_0460
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
push offset _Lt_0351
push -1
push 5
push -1
movsx ecx, word ptr [_EXPGAIN_SI]
push ecx
call _fb_IntToStr@4
push eax
push -1
push 1
push offset _Lt_00A1
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
push offset _Lt_0465
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
push offset _Lt_0351
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
push offset _Lt_00A1
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
push offset _Lt_046A
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
push offset _Lt_00A1
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
push offset _Lt_046E
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
push offset _Lt_00A1
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
.Lt_045D:
.Lt_045C:
.Lt_045B:
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
.Lt_0474:
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
fadd qword ptr [_Lt_04D9]
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
jge .Lt_0477
mov word ptr [ebp-4], 0
.Lt_0477:
movsx eax, word ptr [ebp-4]
cmp eax, 20
jle .Lt_0479
mov word ptr [ebp-4], 20
.Lt_0479:
movsx eax, word ptr [ebp-8]
test eax, eax
jge .Lt_047B
mov word ptr [ebp-8], 0
.Lt_047B:
movsx eax, word ptr [ebp-8]
cmp eax, 21
jle .Lt_047D
mov word ptr [ebp-8], 21
.Lt_047D:
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
fadd qword ptr [_Lt_04D9]
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
jge .Lt_047F
mov word ptr [ebp-4], 0
.Lt_047F:
movsx eax, word ptr [ebp-4]
cmp eax, 20
jle .Lt_0481
mov word ptr [ebp-4], 20
.Lt_0481:
movsx eax, word ptr [ebp-8]
test eax, eax
jge .Lt_0483
mov word ptr [ebp-8], 0
.Lt_0483:
movsx eax, word ptr [ebp-8]
cmp eax, 21
jle .Lt_0485
mov word ptr [ebp-8], 21
.Lt_0485:
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
jge .Lt_0487
mov word ptr [_DX1_SI], 1
.Lt_0487:
.Lt_0486:
movsx eax, word ptr [_DY1_SI]
cmp eax, 1
jge .Lt_0489
mov word ptr [_DY1_SI], 1
.Lt_0489:
.Lt_0488:
movsx eax, word ptr [_DX2_SI]
movsx ebx, word ptr [_AA_SI]
cmp eax, ebx
jle .Lt_048B
mov bx, word ptr [_AA_SI]
mov word ptr [_DX2_SI], bx
.Lt_048B:
.Lt_048A:
movsx ebx, word ptr [_DY2_SI]
movsx eax, word ptr [_DD_SI]
cmp ebx, eax
jle .Lt_048D
mov ax, word ptr [_DD_SI]
mov word ptr [_DY2_SI], ax
.Lt_048D:
.Lt_048C:
mov ax, word ptr [_DX1_SI]
mov word ptr [_TTX], ax
mov ax, word ptr [_DX2_SI]
mov word ptr [ebp-72], ax
jmp .Lt_048F
.Lt_0492:
mov ax, word ptr [_DY1_SI]
mov word ptr [_TTY], ax
mov ax, word ptr [_DY2_SI]
mov word ptr [ebp-76], ax
jmp .Lt_0494
.Lt_0497:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 4
push offset _Lt_049A
push -1
push 5
push offset _Lt_00D3
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
push offset _Lt_049A
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
fdiv qword ptr [_Lt_025D]
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
jmp .Lt_04A4
.Lt_04A7:
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
push offset _Lt_0112
push -1
lea eax, [ebp-180]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04AA
.Lt_04AB:
mov word ptr [ebp-68], 1
jmp .Lt_04A8
.Lt_04AA:
push 5
push offset _Lt_0115
push -1
lea eax, [ebp-180]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04AC
.Lt_04AD:
mov word ptr [ebp-68], 1
jmp .Lt_04A8
.Lt_04AC:
push 5
push offset _Lt_0118
push -1
lea eax, [ebp-180]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04AE
.Lt_04AF:
mov word ptr [ebp-68], 1
.Lt_04AE:
.Lt_04A8:
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
movsx eax, word ptr [ebp-68]
test eax, eax
jle .Lt_04B1
push offset _SPRITEPATH_STR
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
push 0
push -1
push 8
push offset _Lt_0395
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
.Lt_04B1:
.Lt_04B0:
.Lt_04A5:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_04A4:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-168]
cmp eax, ebx
jle .Lt_04A7
.Lt_04A6:
push 5
push offset _Lt_01C1
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_04B7
push offset _SPRITEPATH_STR
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 12
push offset _Lt_04BA
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
.Lt_04B7:
.Lt_04B6:
.Lt_0495:
movsx eax, word ptr [_TTY]
inc eax
mov word ptr [_TTY], ax
.Lt_0494:
movsx eax, word ptr [_TTY]
movsx ebx, word ptr [ebp-76]
cmp eax, ebx
jle .Lt_0497
.Lt_0496:
.Lt_0490:
movsx ebx, word ptr [_TTX]
inc ebx
mov word ptr [_TTX], bx
.Lt_048F:
movsx ebx, word ptr [_TTX]
movsx eax, word ptr [ebp-72]
cmp ebx, eax
jle .Lt_0492
.Lt_0491:
mov ax, word ptr [_DX1_SI]
mov word ptr [_TTX], ax
mov ax, word ptr [_DX2_SI]
mov word ptr [ebp-72], ax
jmp .Lt_04BD
.Lt_04C0:
mov ax, word ptr [_DY1_SI]
mov word ptr [_TTY], ax
mov ax, word ptr [_DY2_SI]
mov word ptr [ebp-76], ax
jmp .Lt_04C2
.Lt_04C5:
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
push offset _Lt_0380
push -1
push offset _TEMPACTION_STR
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 5
push offset _Lt_04C6
push -1
push offset _TEMPACTION_STR
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_04C8
movsx eax, word ptr [_TEMPDIS_SI]
test eax, eax
jle .Lt_04CA
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
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPY2_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPX2_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPY1_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPX1_SF]
fadd dword ptr [_Lt_0149]
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
fdiv qword ptr [_Lt_02CB]
fistp word ptr [ebp-84]
movsx eax, word ptr [ebp-84]
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-88], eax
jmp .Lt_04CE
.Lt_04D1:
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
jg .Lt_04D3
fild word ptr [_T_SF]
fstp dword ptr [_TT_SF]
jmp .Lt_04D2
.Lt_04D3:
movsx eax, word ptr [_T_SF]
movsx ebx, word ptr [_TEMPDIS_SI]
dec ebx
cmp eax, ebx
jge .Lt_04D5
push dword ptr [_Lt_04DB]
pop dword ptr [_TT_SF]
jmp .Lt_04D4
.Lt_04D5:
movsx ebx, word ptr [_T_SF]
movsx eax, word ptr [_TEMPDIS_SI]
sub ebx, eax
inc ebx
push ebx
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_TT_SF]
.Lt_04D4:
.Lt_04D2:
fld dword ptr [_TT_SF]
fcomp dword ptr [_Lt_0141]
fnstsw ax
test ah, 0b00000001
jnz .Lt_04D7
push 4278190080
push 4290822336
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPY_SF]
fsub dword ptr [_TT_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_TT_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_TT_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPX_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
push 4278190080
push 4290822336
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPY_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld dword ptr [_Lt_04DA]
fmul dword ptr [_TEMPX_SF]
fsub dword ptr [_TT_SF]
fadd dword ptr [_Lt_0149]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
push dword ptr [_CLV_BUFFER_PORTAL]
push offset _CLV_BUFFER
call _CLV_DRAW_PIXEL@24
.Lt_04D7:
.Lt_04D6:
.Lt_04CF:
movsx ebx, word ptr [_T_SF]
movsx eax, word ptr [ebp-84]
add ebx, eax
mov word ptr [_T_SF], bx
.Lt_04CE:
cmp dword ptr [ebp-88], 0
jne .Lt_04D8
movsx ebx, word ptr [_T_SF]
movsx eax, word ptr [ebp-80]
cmp ebx, eax
jge .Lt_04D1
jmp .Lt_04D0
.Lt_04D8:
movsx eax, word ptr [_T_SF]
movsx ebx, word ptr [ebp-80]
cmp eax, ebx
jle .Lt_04D1
.Lt_04D0:
.Lt_04CA:
.Lt_04C9:
.Lt_04C8:
.Lt_04C7:
.Lt_04C3:
movsx ebx, word ptr [_TTY]
inc ebx
mov word ptr [_TTY], bx
.Lt_04C2:
movsx ebx, word ptr [_TTY]
movsx eax, word ptr [ebp-76]
cmp ebx, eax
jle .Lt_04C5
.Lt_04C4:
.Lt_04BE:
movsx eax, word ptr [_TTX]
inc eax
mov word ptr [_TTX], ax
.Lt_04BD:
movsx eax, word ptr [_TTX]
movsx ebx, word ptr [ebp-72]
cmp eax, ebx
jle .Lt_04C0
.Lt_04BF:
.Lt_0475:
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
.Lt_04DF:
push 1
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
mov word ptr [_COLR_SI], 9
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 37
push offset _Lt_04E1
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
.Lt_04E0:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LN_STATUS@0
_LN_STATUS@0:
.Lt_04E3:
push dword ptr [_CLV_BUFFER_STATUS]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
push 24
push 4
call _FRAME_STATUS@8
push 24
push 14
call _FRAME_INVENTORY@8
.Lt_04E4:
ret
.balign 16

.globl _LN_FRAMSTTS@0
_LN_FRAMSTTS@0:
.Lt_04E5:
fild word ptr [_STATX_SI]
fstp dword ptr [_FRAMEX1_SF]
movsx eax, word ptr [_STATX_SI]
add eax, 14
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_FRAMEX2_SF]
push dword ptr [_Lt_0149]
pop dword ptr [_FRAMEY1_SF]
push dword ptr [_Lt_014B]
pop dword ptr [_FRAMEY2_SF]
mov word ptr [_FRAMEC1_SI], 4
mov word ptr [_FRAMEC2_SI], 12
call _LN_FRAMEPUT@0
.Lt_04E6:
ret
.balign 16

.globl _LN_FRAMSTTSITMS@0
_LN_FRAMSTTSITMS@0:
.Lt_04E7:
fild word ptr [_STATX_SI]
fstp dword ptr [_FRAMEX1_SF]
movsx eax, word ptr [_STATX_SI]
add eax, 14
push eax
fild dword ptr [esp]
add esp, 4
fstp dword ptr [_FRAMEX2_SF]
push dword ptr [_Lt_04E9]
pop dword ptr [_FRAMEY1_SF]
push dword ptr [_Lt_04EA]
pop dword ptr [_FRAMEY2_SF]
mov word ptr [_FRAMEC1_SI], 4
mov word ptr [_FRAMEC2_SI], 12
call _LN_FRAMEPUT@0
.Lt_04E8:
ret
.balign 16

.globl _LN_STTS@16
_LN_STTS@16:
push ebp
mov ebp, esp
sub esp, 216
push ebx
.Lt_04EB:
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
push offset _Lt_04ED
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
fld qword ptr [_Lt_0505]
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
push offset _Lt_0351
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
push offset _Lt_04F0
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
push offset _Lt_034E
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
push offset _Lt_04F5
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
fadd qword ptr [_Lt_0506]
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
push offset _Lt_04F8
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
fadd qword ptr [_Lt_0506]
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
push offset _Lt_04FB
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
fadd qword ptr [_Lt_0506]
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
push offset _Lt_04F8
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
fadd qword ptr [_Lt_0506]
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
push offset _Lt_0500
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
fadd qword ptr [_Lt_0506]
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
push offset _Lt_04F8
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
fadd qword ptr [_Lt_0506]
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
.Lt_04EC:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _LN_STTSGPIC@0
_LN_STTSGPIC@0:
.Lt_0507:
.Lt_0508:
ret
.balign 16

.globl _LN_STTSITMS@0
_LN_STTSITMS@0:
.Lt_0509:
.Lt_050A:
ret
.balign 16

.globl _LN_MOVE@0
_LN_MOVE@0:
push ebx
.Lt_050B:
push 4
push offset _Lt_0321
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
push offset _Lt_0321
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
push offset _Lt_050D
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
fcomp qword ptr [_Lt_0134]
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
je .Lt_050F
mov word ptr [_MOVE_SI], 1
push 0
push 5
push offset _Lt_0510
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx eax, word ptr [_HERE_SI]
test eax, eax
jle .Lt_0512
mov word ptr [_MOVE_SI], 0
.Lt_0512:
push 0
push 5
push offset _Lt_0510
push -1
push offset _THERE_STR
call _fb_StrAssign@20
call _LN_THERE@0
movsx eax, word ptr [_THERE_SI]
test eax, eax
jle .Lt_0514
mov word ptr [_MOVE_SI], 0
.Lt_0514:
push 0
push 5
push offset _Lt_0515
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
push 0
push 13
push offset _Lt_0516
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
je .Lt_0518
mov word ptr [_MOVE_SI], 0
.Lt_0518:
movsx ebx, word ptr [_MOVE_SI]
cmp ebx, 1
jne .Lt_051A
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
je .Lt_051C
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_051E
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
.Lt_051E:
.Lt_051D:
.Lt_051C:
.Lt_051B:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_04D9]
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
.Lt_051A:
.Lt_0519:
.Lt_050F:
.Lt_050E:
.Lt_050C:
pop ebx
ret
.balign 16

.globl _LN_WINGMOVE@0
_LN_WINGMOVE@0:
push ebx
.Lt_0525:
push 4
push offset _Lt_0321
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
push offset _Lt_0321
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
push offset _Lt_050D
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
fcomp qword ptr [_Lt_025C]
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
je .Lt_0528
mov word ptr [_MOVE_SI], 1
movsx eax, word ptr [_MOVE_SI]
cmp eax, 1
jne .Lt_052A
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
je .Lt_052C
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_052E
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
.Lt_052E:
.Lt_052D:
.Lt_052C:
.Lt_052B:
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fld qword ptr [_Lt_0262]
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
.Lt_052A:
.Lt_0529:
.Lt_0528:
.Lt_0527:
.Lt_0526:
pop ebx
ret
.balign 16

.globl _LN_FIREMOVE@0
_LN_FIREMOVE@0:
push ebx
.Lt_0533:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+16]
fcomp qword ptr [_Lt_0134]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0536
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
je .Lt_053A
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_053C
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
.Lt_053C:
.Lt_053B:
.Lt_053A:
.Lt_0539:
push 4
push offset _Lt_00D3
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
push offset _Lt_0321
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
fld qword ptr [_Lt_04D9]
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
.Lt_0538:
.Lt_0537:
jmp .Lt_0535
.Lt_0536:
call _LN_GONE@0
.Lt_0535:
.Lt_0534:
pop ebx
ret
.balign 16

.globl _LN_WEBMOVE@0
_LN_WEBMOVE@0:
push ebx
.Lt_053F:
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
je .Lt_0542
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx ebx, word ptr [_AM_SI]
test ebx, ebx
jle .Lt_0544
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
.Lt_0544:
.Lt_0543:
.Lt_0542:
.Lt_0541:
push 4
push offset _Lt_0321
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
push offset _Lt_0321
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
fld qword ptr [_Lt_04D9]
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
.Lt_0540:
pop ebx
ret
.balign 16

.globl _LN_CASTFIRE@0
_LN_CASTFIRE@0:
push ebx
.Lt_0547:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02E1]
fnstsw ax
test ah, 0b00000001
jnz .Lt_054A
push 4
push offset _Lt_00D3
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
push offset _Lt_01D7
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
fld qword ptr [_Lt_054D]
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
push offset _Lt_054B
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_054C
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
push offset _Lt_01D7
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
push offset _Lt_0321
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
push dword ptr [_Lt_054E]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0135]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0153]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_054E]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_013C]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0153]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_054A:
.Lt_0549:
.Lt_0548:
pop ebx
ret
.balign 16

.globl _LN_CASTDUST@0
_LN_CASTDUST@0:
push ebx
.Lt_054F:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_02CB]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0552
push 4
push offset _Lt_00D3
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
push offset _Lt_00C8
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
fld qword ptr [_Lt_02F6]
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
push offset _Lt_0553
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0321
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
push offset _Lt_00C8
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
push offset _Lt_0321
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
push dword ptr [_Lt_054E]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0135]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0153]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_054E]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_013C]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0153]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0552:
.Lt_0551:
.Lt_0550:
pop ebx
ret
.balign 16

.globl _LN_CASTWEB@0
_LN_CASTWEB@0:
push ebx
.Lt_0554:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0558]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0557
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_0559]
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
push offset _Lt_00EA
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_00D9
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
push offset _Lt_00E8
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
push offset _Lt_0321
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
push dword ptr [_Lt_0139]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_013B]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_013C]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_013B]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_013C]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0138]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_013A]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0557:
.Lt_0556:
.Lt_0555:
pop ebx
ret
.balign 16

.globl _LN_CASTSPDR@0
_LN_CASTSPDR@0:
push ebx
.Lt_055A:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_055E]
fnstsw ax
test ah, 0b00000001
jnz .Lt_055D
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_055F]
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
push offset _Lt_00DB
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_00DC
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
push offset _Lt_00D9
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
push offset _Lt_0321
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
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0135]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0136]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0135]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0136]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0138]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0139]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_055D:
.Lt_055C:
.Lt_055B:
pop ebx
ret
.balign 16

.globl _LN_CASTCCTS@0
_LN_CASTCCTS@0:
.Lt_0560:
call _LN_PRFLBLNK@0
push 0
push 7
push offset _Lt_0562
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_01DC
push -1
push offset _PRFLGPIC_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0563]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0135]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0136]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0139]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0135]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0136]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0138]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0139]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0561:
ret
.balign 16

.globl _LN_CASTDTBY@0
_LN_CASTDTBY@0:
push ebx
.Lt_0564:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_G_DFA+eax+24]
fcomp qword ptr [_Lt_0569]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0567
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [_TY_SI]
dec ebx
movsx ecx, word ptr [_AA_SI]
imul ebx, ecx
add eax, ebx
imul eax, 136
fld qword ptr [_Lt_056A]
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
push offset _Lt_00FB
push -1
push offset _PRFLIDTY_STR
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_0568
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
push offset _Lt_00F9
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
push offset _Lt_0321
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
push dword ptr [_Lt_056B]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0142]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0136]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0137]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0145]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_013A]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0142]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0136]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0146]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0133]
pop dword ptr [_PRFLESSSPD_SF]
call _LN_PRFLMAKE@0
.Lt_0567:
.Lt_0566:
.Lt_0565:
pop ebx
ret
.balign 16

.globl _LN_GONE@0
_LN_GONE@0:
.Lt_056C:
call _LN_PRFLBLNK@0
call _LN_PRFLSET@0
.Lt_056D:
ret
.balign 16

.globl _LN_DELETE2@0
_LN_DELETE2@0:
.Lt_056E:
call _LN_PRFLBLNK@0
call _LN_PRFLMAKE@0
.Lt_056F:
ret
.balign 16

.globl _LN_AUTOLEVELUP@0
_LN_AUTOLEVELUP@0:
.Lt_0570:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jne .Lt_0573
call _LN_LEVELUP@0
.Lt_0573:
.Lt_0572:
.Lt_0571:
ret
.balign 16

.globl _LN_STATGAIN@0
_LN_STATGAIN@0:
push ebx
push esi
.Lt_0574:
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
.Lt_0575:
pop esi
pop ebx
ret
.balign 16

.globl _LN_STATMAX@0
_LN_STATMAX@0:
push ebx
push esi
.Lt_0576:
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
jnz .Lt_0579
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
.Lt_0579:
.Lt_0578:
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
jnz .Lt_057B
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
.Lt_057B:
.Lt_057A:
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
jnz .Lt_057D
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
.Lt_057D:
.Lt_057C:
.Lt_0577:
pop esi
pop ebx
ret
.balign 16

.globl _LN_NEXTACTION@0
_LN_NEXTACTION@0:
.Lt_057E:
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jne .Lt_0581
call _LN_NEWACTION@0
call _LN_PUTACTION@0
.Lt_0583:
.Lt_0582:
jmp .Lt_0580
.Lt_0581:
call _LN_GETACTION@0
.Lt_0580:
.Lt_057F:
ret
.balign 16

.globl _LN_NEWACTION@0
_LN_NEWACTION@0:
push ebx
.Lt_0584:
call _LN_GETACTION@0
push 5
push offset _Lt_01C1
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
je .Lt_0587
push dword ptr [_Lt_0133]
call _fb_Rnd@4
fmul qword ptr [_Lt_025D]
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
fadd qword ptr [_Lt_0134]
fistp word ptr [_D_SI]
call _LN_RANDOMACTION@0
mov word ptr [_DIS_SI], 0
.Lt_0587:
.Lt_0586:
.Lt_0585:
pop ebx
ret
.balign 16

.globl _LN_RANDOMACTION@0
_LN_RANDOMACTION@0:
push ebx
.Lt_058A:
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
fdiv qword ptr [_Lt_025D]
fistp word ptr [_R_SI]
push dword ptr [_Lt_0133]
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
jne .Lt_058D
push 0
push 5
push offset _Lt_00D3
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
jmp .Lt_058C
.Lt_058D:
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
.Lt_058C:
.Lt_058B:
pop ebx
ret
.balign 16

.globl _LN_GETACTION@0
_LN_GETACTION@0:
push ebx
.Lt_058E:
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
.Lt_058F:
pop ebx
ret
.balign 16

.globl _LN_PUTACTION@0
_LN_PUTACTION@0:
push ebx
.Lt_0590:
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
.Lt_0591:
pop ebx
ret
.balign 16

.globl _LN_TEMPGET@0
_LN_TEMPGET@0:
push ebx
.Lt_0592:
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
.Lt_0593:
pop ebx
ret
.balign 16

.globl _LN_TEMPPUT@0
_LN_TEMPPUT@0:
push ebx
.Lt_0594:
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
.Lt_0595:
pop ebx
ret
.balign 16

.globl _LN_INBOUNDS@0
_LN_INBOUNDS@0:
push ebx
push esi
.Lt_0596:
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
je .Lt_0599
mov word ptr [_INBOUNDS_SI], 1
jmp .Lt_0598
.Lt_0599:
mov word ptr [_INBOUNDS_SI], 0
.Lt_0598:
.Lt_0597:
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
.Lt_059E:
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
fdiv qword ptr [_Lt_025D]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-4], ax
jmp .Lt_05A1
.Lt_05A4:
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
jne .Lt_05A6
movsx eax, word ptr [_HAVEIT_SI]
inc eax
mov word ptr [_HAVEIT_SI], ax
.Lt_05A6:
.Lt_05A5:
.Lt_05A2:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_05A1:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_05A4
.Lt_05A3:
.Lt_059F:
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
.Lt_05A7:
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
fdiv qword ptr [_Lt_025D]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-4], ax
jmp .Lt_05AA
.Lt_05AD:
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
jne .Lt_05AF
movsx eax, word ptr [_HASIT_SI]
inc eax
mov word ptr [_HASIT_SI], ax
.Lt_05AF:
.Lt_05AE:
.Lt_05AB:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_05AA:
movsx eax, word ptr [_TT_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_05AD
.Lt_05AC:
.Lt_05A8:
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
.Lt_05B0:
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
fdiv qword ptr [_Lt_025D]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-4], ax
jmp .Lt_05B3
.Lt_05B6:
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
jne .Lt_05B8
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
.Lt_05B8:
.Lt_05B7:
.Lt_05B4:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_05B3:
movsx eax, word ptr [_TT_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_05B6
.Lt_05B5:
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
.Lt_05B1:
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
.Lt_05BA:
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
fdiv qword ptr [_Lt_025D]
fistp word ptr [_T_SI]
mov word ptr [_TT_SI], 1
mov ax, word ptr [_T_SI]
mov word ptr [ebp-4], ax
jmp .Lt_05BD
.Lt_05C0:
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
jne .Lt_05C2
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
.Lt_05C2:
.Lt_05C1:
.Lt_05BE:
movsx eax, word ptr [_TT_SI]
inc eax
mov word ptr [_TT_SI], ax
.Lt_05BD:
movsx eax, word ptr [_TT_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_05C0
.Lt_05BF:
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
.Lt_05BB:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_HAVEGOTIT@0
_LN_HAVEGOTIT@0:
push ebx
.Lt_05C4:
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
.Lt_05C5:
pop ebx
ret
.balign 16

.globl _LN_HASGOTIT@0
_LN_HASGOTIT@0:
push ebx
push esi
.Lt_05C6:
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
.Lt_05C7:
pop esi
pop ebx
ret
.balign 16

.globl _LN_WINEXP@0
_LN_WINEXP@0:
push ebx
push esi
.Lt_05C8:
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
jle .Lt_05CB
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
push offset _Lt_05CC
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
push dword ptr [_Lt_01EC]
push dword ptr [_Lt_01EC+4]
pop dword ptr [_G_DFA+eax+52]
pop dword ptr [_G_DFA+eax+48]
.Lt_05CB:
.Lt_05CA:
.Lt_05C9:
pop esi
pop ebx
ret
.balign 16

.globl _LN_WINDGGR@0
_LN_WINDGGR@0:
.Lt_05CD:
push 0
push 5
push offset _Lt_00F2
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05CE:
ret
.balign 16

.globl _LN_WINPIKE@0
_LN_WINPIKE@0:
.Lt_05CF:
push 0
push 5
push offset _Lt_010A
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05D0:
ret
.balign 16

.globl _LN_WINGRPL@0
_LN_WINGRPL@0:
.Lt_05D1:
push 0
push 5
push offset _Lt_0380
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05D2:
ret
.balign 16

.globl _LN_WINSEED@0
_LN_WINSEED@0:
.Lt_05D3:
push 0
push 5
push offset _Lt_0385
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05D4:
ret
.balign 16

.globl _LN_WINKEY1@0
_LN_WINKEY1@0:
.Lt_05D5:
push 0
push 5
push offset _Lt_012B
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05D6:
ret
.balign 16

.globl _LN_WINKEY2@0
_LN_WINKEY2@0:
.Lt_05D7:
push 0
push 5
push offset _Lt_012C
push -1
push offset _WINIT_STR
call _fb_StrAssign@20
call _LN_WINIT@0
.Lt_05D8:
ret
.balign 16

.globl _LN_WINIT@0
_LN_WINIT@0:
.Lt_05D9:
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
jne .Lt_05DC
jmp .Lt_05DA
.Lt_05DC:
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HAVEIT_STR
call _fb_StrAssign@20
call _LN_HAVEIT@0
movsx eax, word ptr [_HAVEIT_SI]
test eax, eax
jle .Lt_05DE
jmp .Lt_05DA
.Lt_05DE:
call _LN_GETIT@0
push 0
push -1
push offset _WINIT_STR
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
.Lt_05DA:
ret
.balign 16

.globl _LN_AM@0
_LN_AM@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_05DF:
mov word ptr [_AM_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _AM_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_025D]
fistp word ptr [ebp-4]
jmp .Lt_05E2
.Lt_05E5:
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
jne .Lt_05E7
movsx eax, word ptr [_AM_SI]
inc eax
mov word ptr [_AM_SI], ax
.Lt_05E7:
.Lt_05E6:
.Lt_05E3:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_05E2:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_05E5
.Lt_05E4:
.Lt_05E0:
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
.Lt_05E8:
mov word ptr [_ARE_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _ARE_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_025D]
fistp word ptr [ebp-4]
jmp .Lt_05EB
.Lt_05EE:
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
jne .Lt_05F0
movsx eax, word ptr [_ARE_SI]
inc eax
mov word ptr [_ARE_SI], ax
.Lt_05F0:
.Lt_05EF:
.Lt_05EC:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_05EB:
movsx eax, word ptr [_T_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_05EE
.Lt_05ED:
.Lt_05E9:
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
.Lt_05F1:
mov word ptr [_HERE_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _HERE_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_025D]
fistp word ptr [ebp-4]
jmp .Lt_05F4
.Lt_05F7:
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
jne .Lt_05F9
movsx eax, word ptr [_HERE_SI]
inc eax
mov word ptr [_HERE_SI], ax
.Lt_05F9:
.Lt_05F8:
.Lt_05F5:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_05F4:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-4]
cmp eax, ebx
jle .Lt_05F7
.Lt_05F6:
.Lt_05F2:
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
.Lt_05FA:
mov word ptr [_THERE_SI], 0
mov word ptr [_T_SI], 1
push -1
push offset _THERE_STR
call _fb_StrLen@8
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_025D]
fistp word ptr [ebp-4]
jmp .Lt_05FD
.Lt_0600:
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
jne .Lt_0602
movsx eax, word ptr [_THERE_SI]
inc eax
mov word ptr [_THERE_SI], ax
.Lt_0602:
.Lt_0601:
.Lt_05FE:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_05FD:
movsx eax, word ptr [_T_SI]
movsx ecx, word ptr [ebp-4]
cmp eax, ecx
jle .Lt_0600
.Lt_05FF:
.Lt_05FB:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_BLANKCHECK@0
_LN_BLANKCHECK@0:
.Lt_0603:
push 0
push -1
push offset _BLANKCHECK_STR
push -1
push offset _ARE_STR
call _fb_StrAssign@20
call _LN_INBOUNDS@0
movsx eax, word ptr [_INBOUNDS_SI]
cmp eax, 1
jne .Lt_0606
call _LN_ARE@0
jmp .Lt_0605
.Lt_0606:
mov word ptr [_ARE_SI], -1
.Lt_0605:
mov ax, word ptr [_ARE_SI]
mov word ptr [_BLANKCHECK_SI], ax
.Lt_0604:
ret
.balign 16

.globl _LN_OKBUTTON@0
_LN_OKBUTTON@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0607:
push dword ptr [_CLV_BUFFER_MENU]
push offset _CLV_BUFFER
call _CLV_BUFFER_CLS@8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 4
push offset _Lt_0609
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
.Lt_0608:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_WWAIT@0
_LN_WWAIT@0:
push ebx
.Lt_060B:
.Lt_060D:
call _LN_BUTTONWAIT@0
.Lt_060F:
push 5
push offset _Lt_0610
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
jne .Lt_060D
.Lt_060E:
push 0
push 2
push offset _Lt_0208
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_060C:
pop ebx
ret
.balign 16

.globl _LN_BUTTONWAIT@0
_LN_BUTTONWAIT@0:
.Lt_0615:
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0616:
ret
.balign 16

.globl _LN_COMMANDWAIT@0
_LN_COMMANDWAIT@0:
push ebx
.Lt_0617:
push 0
push 3
push offset _Lt_0619
push -1
push offset _C_STR
call _fb_StrAssign@20
mov word ptr [_LB_SI], 0
.Lt_061A:
push 3
push offset _Lt_0619
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
je .Lt_061B
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
jmp .Lt_061A
.Lt_061B:
.Lt_0618:
pop ebx
ret
.balign 16

.globl _LN_FRAMEPUT@0
_LN_FRAMEPUT@0:
.Lt_061E:
push 0
push 4
push 4278190080
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0620]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0620]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 2
push 4278190080
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_04DB]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_04DB]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_0141]
push dword ptr [_Lt_0141]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0621]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0622]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4286808963
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_013A]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_0141]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_0141]
push dword ptr [_Lt_0141]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0622]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0621]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4286808963
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0141]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_013A]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_0141]
push dword ptr [_Lt_0141]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4278190080
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0623]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0623]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 2
push 65535
push 1
push 4290822336
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0133]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_0133]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_0141]
push dword ptr [_Lt_0141]
push 0
call _fb_GfxLine@36
push 0
push 4
push 4286808963
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0623]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0623]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0133]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_0133]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY2_SF]
fadd dword ptr [_Lt_0624]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX1_SF]
fadd dword ptr [_Lt_0623]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
push 0
push 4
push 4286808963
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEY1_SF]
fadd dword ptr [_Lt_0625]
sub esp,4
fstp dword ptr [esp]
fld dword ptr [_Lt_04DA]
fmul dword ptr [_FRAMEX2_SF]
fadd dword ptr [_Lt_0133]
sub esp,4
fstp dword ptr [esp]
push 0
call _fb_GfxPset@24
.Lt_061F:
ret
.balign 16

.globl _LN_AVGFRAME@0
_LN_AVGFRAME@0:
push ebp
mov ebp, esp
sub esp, 32
.Lt_0626:
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
.Lt_0627:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_SCREENSET@0
_LN_SCREENSET@0:
.Lt_0628:
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0629:
ret
.balign 16

.globl _LN_FINDCRSR@0
_LN_FINDCRSR@0:
.Lt_062A:
call _fb_GetY@0
mov word ptr [_CRSRY_SI], ax
push 0
call _fb_Pos@4
mov word ptr [_CRSRX_SI], ax
.Lt_062B:
ret
.balign 16

.globl _LN_SHOWTEXT@8
_LN_SHOWTEXT@8:
push ebp
mov ebp, esp
.Lt_062C:
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
.Lt_062D:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LN_PRFLBLNK@0
_LN_PRFLBLNK@0:
.Lt_062E:
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
push offset _Lt_00D3
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
push offset _Lt_00D3
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
push offset _Lt_00D4
push -1
push offset _PRFLGPICACTN_STR
call _fb_StrAssign@20
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLIDTY_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLHP_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLSTR_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLESS_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLSPD_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLARMR_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLEXP_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLVALU_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLPIRC_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLCHCK_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLLV_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLHPMAX_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLSTRMAX_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLESSMAX_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLESSSPD_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLEVAD_SF]
push dword ptr [_Lt_0141]
pop dword ptr [_PRFLBLNK_SF]
.Lt_062F:
ret
.balign 16

.globl _LN_PRFLSET@0
_LN_PRFLSET@0:
push ebx
.Lt_0630:
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
.Lt_0631:
pop ebx
ret
.balign 16

.globl _LN_PRFLMAKE@0
_LN_PRFLMAKE@0:
push ebx
push esi
.Lt_0632:
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
.Lt_0633:
pop esi
pop ebx
ret
.balign 16

.globl _LN_ACTNCURE@0
_LN_ACTNCURE@0:
.Lt_0634:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0637
jmp .Lt_0635
.Lt_0637:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0639
jmp .Lt_0635
.Lt_0639:
push 0
push 29
push offset _Lt_063A
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_063C
call _LN_USECURE@0
jmp .Lt_0635
.Lt_063C:
.Lt_063B:
.Lt_0635:
ret
.balign 16

.globl _LN_ACTNBITE@0
_LN_ACTNBITE@0:
.Lt_063D:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0640
jmp .Lt_063E
.Lt_0640:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0642
jmp .Lt_063E
.Lt_0642:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0644
call _LN_ATTKBITE@0
jmp .Lt_063E
.Lt_0644:
.Lt_0643:
.Lt_063E:
ret
.balign 16

.globl _LN_ACTNPNCH@0
_LN_ACTNPNCH@0:
.Lt_0645:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0648
jmp .Lt_0646
.Lt_0648:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_064A
jmp .Lt_0646
.Lt_064A:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_064C
call _LN_ATTKPNCH@0
jmp .Lt_0646
.Lt_064C:
.Lt_064B:
.Lt_0646:
ret
.balign 16

.globl _LN_ACTNKICK@0
_LN_ACTNKICK@0:
.Lt_064D:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0650
jmp .Lt_064E
.Lt_0650:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0652
jmp .Lt_064E
.Lt_0652:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0654
call _LN_ATTKKICK@0
jmp .Lt_064E
.Lt_0654:
.Lt_0653:
.Lt_064E:
ret
.balign 16

.globl _LN_ACTNDGGR@0
_LN_ACTNDGGR@0:
.Lt_0655:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0658
jmp .Lt_0656
.Lt_0658:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_065A
jmp .Lt_0656
.Lt_065A:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_065C
call _LN_ATTKDGGR@0
jmp .Lt_0656
.Lt_065C:
.Lt_065B:
.Lt_0656:
ret
.balign 16

.globl _LN_ACTNPIKE@0
_LN_ACTNPIKE@0:
.Lt_065D:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0660
jmp .Lt_065E
.Lt_0660:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0662
jmp .Lt_065E
.Lt_0662:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0664
call _LN_ATTKPIKE@0
jmp .Lt_065E
.Lt_0664:
.Lt_0663:
.Lt_065E:
ret
.balign 16

.globl _LN_ACTNVNOM@0
_LN_ACTNVNOM@0:
.Lt_0665:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0668
jmp .Lt_0666
.Lt_0668:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_066A
jmp .Lt_0666
.Lt_066A:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_066C
call _LN_ATTKVNOM@0
jmp .Lt_0666
.Lt_066C:
.Lt_066B:
.Lt_0666:
ret
.balign 16

.globl _LN_ACTNFIRE@0
_LN_ACTNFIRE@0:
.Lt_066D:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0670
jmp .Lt_066E
.Lt_0670:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0672
call _LN_CASTFIRE@0
jmp .Lt_066E
.Lt_0672:
.Lt_0671:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0674
call _LN_ATTKFIRE@0
jmp .Lt_066E
.Lt_0674:
.Lt_0673:
.Lt_066E:
ret
.balign 16

.globl _LN_ACTNDUST@0
_LN_ACTNDUST@0:
.Lt_0675:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0678
jmp .Lt_0676
.Lt_0678:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_067A
call _LN_CASTDUST@0
jmp .Lt_0676
.Lt_067A:
.Lt_0679:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_067C
call _LN_USESLEP@0
jmp .Lt_0676
.Lt_067C:
.Lt_067B:
.Lt_0676:
ret
.balign 16

.globl _LN_ACTNWEB@0
_LN_ACTNWEB@0:
.Lt_067D:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0680
jmp .Lt_067E
.Lt_0680:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0682
call _LN_CASTWEB@0
jmp .Lt_067E
.Lt_0682:
.Lt_0681:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0684
call _LN_ATTKWEB@0
jmp .Lt_067E
.Lt_0684:
.Lt_0683:
.Lt_067E:
ret
.balign 16

.globl _LN_ACTNSPDR@0
_LN_ACTNSPDR@0:
.Lt_0685:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0688
jmp .Lt_0686
.Lt_0688:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_068A
call _LN_CASTSPDR@0
jmp .Lt_0686
.Lt_068A:
.Lt_0689:
.Lt_0686:
ret
.balign 16

.globl _LN_ACTNCCTS@0
_LN_ACTNCCTS@0:
.Lt_068B:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
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
call _LN_CASTCCTS@0
jmp .Lt_068C
.Lt_0690:
.Lt_068F:
.Lt_068C:
ret
.balign 16

.globl _LN_ACTNDTBY@0
_LN_ACTNDTBY@0:
.Lt_0691:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_0694
jmp .Lt_0692
.Lt_0694:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_0696
call _LN_CASTDTBY@0
jmp .Lt_0692
.Lt_0696:
.Lt_0695:
.Lt_0692:
ret
.balign 16

.globl _LN_ACTNMOVE@0
_LN_ACTNMOVE@0:
.Lt_0697:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_069A
jmp .Lt_0698
.Lt_069A:
call _LN_MOVE@0
.Lt_0698:
ret
.balign 16

.globl _LN_ACTNWING@0
_LN_ACTNWING@0:
.Lt_069B:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_00D3
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_069E
jmp .Lt_069C
.Lt_069E:
call _LN_WINGMOVE@0
.Lt_069C:
ret
.balign 16

.globl _LN_ACTNWSTF@0
_LN_ACTNWSTF@0:
push ebx
.Lt_069F:
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
jle .Lt_06A2
mov word ptr [_DIS_SI], 2
push 0
push 9
push offset _Lt_050D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06A4
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
jmp .Lt_06A0
.Lt_06A4:
.Lt_06A3:
.Lt_06A2:
.Lt_06A1:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06A6
call _LN_ATTKWSTF@0
.Lt_06A6:
.Lt_06A5:
.Lt_06A0:
pop ebx
ret
.balign 16

.globl _LN_ACTNKEY1@0
_LN_ACTNKEY1@0:
.Lt_06A7:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_010C
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06AA
push 0
push 5
push offset _Lt_0112
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_06AC
push 0
push 5
push offset _Lt_0112
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
push 0
push 5
push offset _Lt_012B
push -1
push offset _HAVEHADIT_STR
call _fb_StrAssign@20
call _LN_HAVEHADIT@0
call _LN_DELETE2@0
.Lt_06AC:
.Lt_06AB:
.Lt_06AA:
.Lt_06A9:
.Lt_06A8:
ret
.balign 16

.globl _LN_ACTNKEY2@0
_LN_ACTNKEY2@0:
.Lt_06AD:
mov word ptr [_DIS_SI], 1
push 0
push 5
push offset _Lt_010C
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06B0
push 0
push 5
push offset _Lt_0115
push -1
push offset _HASIT_STR
call _fb_StrAssign@20
call _LN_HASIT@0
movsx eax, word ptr [_HASIT_SI]
test eax, eax
jle .Lt_06B2
push 0
push 5
push offset _Lt_0115
push -1
push offset _HASHADIT_STR
call _fb_StrAssign@20
call _LN_HASHADIT@0
push 0
push 5
push offset _Lt_012C
push -1
push offset _HAVEHADIT_STR
call _fb_StrAssign@20
call _LN_HAVEHADIT@0
call _LN_DELETE2@0
.Lt_06B2:
.Lt_06B1:
.Lt_06B0:
.Lt_06AF:
.Lt_06AE:
ret
.balign 16

.globl _LN_ACTNISPT@0
_LN_ACTNISPT@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
.Lt_06B3:
mov word ptr [ebp-4], 0
mov word ptr [_DIS_SI], 1
call _LN_PUTACTION@0
push 0
push 5
push offset _Lt_00D3
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
je .Lt_06B6
jmp .Lt_06B4
.Lt_06B6:
push 9
push offset _Lt_0120
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
jne .Lt_06B8
call _LN_MERCHANT@0
jmp .Lt_06B4
.Lt_06B8:
.Lt_06B7:
push 11
push offset _Lt_00F6
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
jne .Lt_06BA
call _LN_TALK0001@0
jmp .Lt_06B4
.Lt_06BA:
.Lt_06B9:
push 0
push 9
push offset _Lt_06BB
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06BD
call _LN_PILLAGE@0
push 0
push 5
push offset _Lt_030A
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06BF
call _LN_DELETE2@0
.Lt_06BF:
.Lt_06BE:
jmp .Lt_06B4
.Lt_06BD:
.Lt_06BC:
push 0
push 5
push offset _Lt_010C
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06C1
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
fdiv qword ptr [_Lt_025D]
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
jmp .Lt_06C3
.Lt_06C6:
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
push offset _Lt_0112
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_06C9
.Lt_06CA:
mov word ptr [ebp-4], 1
jmp .Lt_06C7
.Lt_06C9:
push 5
push offset _Lt_0115
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_06CB
.Lt_06CC:
mov word ptr [ebp-4], 1
jmp .Lt_06C7
.Lt_06CB:
push 5
push offset _Lt_0118
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_06CD
.Lt_06CE:
mov word ptr [ebp-4], 1
.Lt_06CD:
.Lt_06C7:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_06C4:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_06C3:
movsx eax, word ptr [_T_SI]
movsx ecx, word ptr [ebp-8]
cmp eax, ecx
jle .Lt_06C6
.Lt_06C5:
movsx ecx, word ptr [ebp-4]
test ecx, ecx
jne .Lt_06D0
call _LN_DELETE2@0
.Lt_06D0:
.Lt_06CF:
jmp .Lt_06B4
.Lt_06C1:
.Lt_06C0:
.Lt_06B4:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_ACTNFIREMOVE@0
_LN_ACTNFIREMOVE@0:
.Lt_06D3:
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_050D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_06D6
call _LN_GONE@0
jmp .Lt_06D4
.Lt_06D6:
.Lt_06D5:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06D8
call _LN_FIREMOVE@0
jmp .Lt_06D4
.Lt_06D8:
.Lt_06D7:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06DA
call _LN_ATTKBURN@0
call _LN_GONE@0
jmp .Lt_06D4
.Lt_06DA:
.Lt_06D9:
call _LN_GONE@0
.Lt_06D4:
ret
.balign 16

.globl _LN_ACTNDUSTMOVE@0
_LN_ACTNDUSTMOVE@0:
.Lt_06DB:
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_050D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_06DE
call _LN_GONE@0
jmp .Lt_06DC
.Lt_06DE:
.Lt_06DD:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06E0
call _LN_FIREMOVE@0
jmp .Lt_06DC
.Lt_06E0:
.Lt_06DF:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06E2
call _LN_USESLEP@0
call _LN_GONE@0
jmp .Lt_06DC
.Lt_06E2:
.Lt_06E1:
call _LN_GONE@0
.Lt_06DC:
ret
.balign 16

.globl _LN_ACTNWEBMOVE@0
_LN_ACTNWEBMOVE@0:
.Lt_06E3:
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_050D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
cmp eax, -1
jne .Lt_06E6
jmp .Lt_06E4
.Lt_06E6:
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06E8
call _LN_WEBMOVE@0
jmp .Lt_06E4
.Lt_06E8:
.Lt_06E7:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx eax, word ptr [_BLANKCHECK_SI]
test eax, eax
jle .Lt_06EA
call _LN_ATTKTNGL@0
call _LN_GONE@0
jmp .Lt_06E4
.Lt_06EA:
.Lt_06E9:
.Lt_06E4:
ret
.balign 16

.globl _LN_ACTNGRPL@0
_LN_ACTNGRPL@0:
push ebx
push esi
.Lt_06EB:
movsx eax, word ptr [_DIS_SI]
cmp eax, 3
jne .Lt_06EE
push 0
push 5
push offset _Lt_04C6
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
call _LN_PUTACTION@0
call _LN_ACTNRAPL@0
jmp .Lt_06EC
.Lt_06EE:
.Lt_06ED:
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
fcomp qword ptr [_Lt_02D3]
push eax
fnstsw ax
test ah, 0b00000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_06F0
push 0
push 9
push offset _Lt_050D
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
call _LN_PUTACTION@0
jmp .Lt_06EC
.Lt_06F0:
.Lt_06EF:
movsx ebx, word ptr [_DIS_SI]
test ebx, ebx
jne .Lt_06F2
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fld qword ptr [_Lt_06FE]
fadd qword ptr [_G_DFA+ebx+16]
movsx ebx, word ptr [_TX_SI]
movsx eax, word ptr [_TY_SI]
dec eax
movsx ecx, word ptr [_AA_SI]
imul eax, ecx
add ebx, eax
imul ebx, 136
fstp qword ptr [_G_DFA+ebx+16]
.Lt_06F2:
.Lt_06F1:
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 3
jge .Lt_06F4
movsx ebx, word ptr [_DIS_SI]
inc ebx
mov word ptr [_DIS_SI], bx
.Lt_06F4:
.Lt_06F3:
push 0
push 9
push offset _Lt_050D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
push 4
push offset _Lt_02A8
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
push offset _Lt_0380
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
jne .Lt_06F6
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
jmp .Lt_06EC
.Lt_06F6:
.Lt_06F5:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_06F8
call _LN_PUTACTION@0
jmp .Lt_06EC
.Lt_06F8:
.Lt_06F7:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_06FA
call _LN_PUTACTION@0
push 0
push 5
push offset _Lt_04C6
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push offset _Lt_02A8
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
push offset _Lt_0380
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
jmp .Lt_06EC
.Lt_06FA:
.Lt_06F9:
push 0
push 9
push offset _Lt_06FB
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_06FD
push 0
push 5
push offset _Lt_04C6
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
push 4
push offset _Lt_02A8
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
push offset _Lt_0380
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
jmp .Lt_06EC
.Lt_06FD:
.Lt_06FC:
.Lt_06EC:
pop esi
pop ebx
ret
.balign 16

.globl _LN_ACTNRAPL@0
_LN_ACTNRAPL@0:
push ebx
.Lt_0701:
push 4
push offset _Lt_02A8
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
push offset _Lt_0380
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
jne .Lt_0704
push 0
push 9
push offset _Lt_050D
push -1
push offset _ACTION_STR
call _fb_StrAssign@20
mov word ptr [_DIS_SI], 0
call _LN_PUTACTION@0
push 4
push offset _Lt_00D3
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
push offset _Lt_00D3
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
jmp .Lt_0702
.Lt_0704:
.Lt_0703:
push 0
push 9
push offset _Lt_050D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
cmp ebx, -1
jne .Lt_0706
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jle .Lt_0708
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_0708:
.Lt_0707:
jmp .Lt_0702
.Lt_0706:
.Lt_0705:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_070A
movsx ebx, word ptr [_DIS_SI]
cmp ebx, 1
jle .Lt_070C
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
.Lt_070C:
.Lt_070B:
.Lt_070A:
.Lt_0709:
push 0
push -1
push offset _ATTACKTHEM_STR
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_070E
call _LN_ATTKLASH@0
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
jmp .Lt_0702
.Lt_070E:
.Lt_070D:
push 0
push 9
push offset _Lt_06FB
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0710
mov word ptr [_DIS_SI], 1
push 0
push 9
push offset _Lt_050D
push -1
push offset _BLANKCHECK_STR
call _fb_StrAssign@20
call _LN_BLANKCHECK@0
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jne .Lt_0712
movsx ebx, word ptr [_DIS_SI]
dec ebx
mov word ptr [_DIS_SI], bx
call _LN_PUTACTION@0
jmp .Lt_0702
.Lt_0712:
.Lt_0711:
movsx ebx, word ptr [_BLANKCHECK_SI]
test ebx, ebx
jle .Lt_0714
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
je .Lt_0716
push 0
push -1
push offset _CTRL_STR
push -1
push offset _AM_STR
call _fb_StrAssign@20
call _LN_AM@0
movsx eax, word ptr [_AM_SI]
test eax, eax
jle .Lt_0718
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
.Lt_0718:
.Lt_0717:
.Lt_0716:
.Lt_0715:
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
jmp .Lt_0702
.Lt_0714:
.Lt_0713:
.Lt_0710:
.Lt_070F:
.Lt_0702:
pop ebx
ret
.balign 16

.globl _LN_CRTNIMP@0
_LN_CRTNIMP@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_071B:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_071D
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_0720
.Lt_0721:
call _LN_ACTNMOVE@0
jmp .Lt_071E
.Lt_0720:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_0722
.Lt_0723:
call _LN_ACTNFIRE@0
jmp .Lt_071E
.Lt_0722:
cmp dword ptr [ebp-4], 1953526633
jne .Lt_0724
.Lt_0725:
call _LN_ACTNISPT@0
jmp .Lt_071E
.Lt_0724:
cmp dword ptr [ebp-4], 1735289207
jne .Lt_0726
.Lt_0728:
call _LN_ACTNWING@0
.Lt_0726:
.Lt_071E:
call _LN_AUTOLEVELUP@0
.Lt_071C:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNFIRE@0
_LN_CRTNFIRE@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0729:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 0
push 29
push offset _Lt_072B
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_072E
.Lt_072F:
call _LN_ACTNFIREMOVE@0
.Lt_072E:
.Lt_072C:
.Lt_072A:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNDUST@0
_LN_CRTNDUST@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0730:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 0
push 25
push offset _Lt_0732
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_0735
.Lt_0736:
call _LN_ACTNDUSTMOVE@0
.Lt_0735:
.Lt_0733:
.Lt_0731:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNSHKT@0
_LN_CRTNSHKT@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0737:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0739
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_073C
.Lt_073D:
call _LN_ACTNMOVE@0
jmp .Lt_073A
.Lt_073C:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_073E
.Lt_073F:
call _LN_ACTNFIRE@0
jmp .Lt_073A
.Lt_073E:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_0740
.Lt_0741:
call _LN_ACTNBITE@0
jmp .Lt_073A
.Lt_0740:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_0742
.Lt_0743:
call _LN_ACTNPNCH@0
jmp .Lt_073A
.Lt_0742:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_0744
.Lt_0745:
call _LN_ACTNKICK@0
jmp .Lt_073A
.Lt_0744:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_0746
.Lt_0747:
call _LN_ACTNDGGR@0
jmp .Lt_073A
.Lt_0746:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_0748
.Lt_0749:
call _LN_ACTNPIKE@0
.Lt_0748:
.Lt_073A:
call _LN_AUTOLEVELUP@0
.Lt_0738:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNEMGD@0
_LN_CRTNEMGD@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_074A:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0739
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_074E
.Lt_074F:
call _LN_ACTNMOVE@0
jmp .Lt_074C
.Lt_074E:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_0750
.Lt_0751:
call _LN_ACTNFIRE@0
jmp .Lt_074C
.Lt_0750:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_0752
.Lt_0753:
call _LN_ACTNBITE@0
jmp .Lt_074C
.Lt_0752:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_0754
.Lt_0755:
call _LN_ACTNPNCH@0
jmp .Lt_074C
.Lt_0754:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_0756
.Lt_0757:
call _LN_ACTNKICK@0
jmp .Lt_074C
.Lt_0756:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_0758
.Lt_0759:
call _LN_ACTNDGGR@0
jmp .Lt_074C
.Lt_0758:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_075A
.Lt_075B:
call _LN_ACTNPIKE@0
.Lt_075A:
.Lt_074C:
call _LN_AUTOLEVELUP@0
.Lt_074B:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNSPDR@0
_LN_CRTNSPDR@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_075C:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_075E
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_0761
.Lt_0762:
call _LN_ACTNMOVE@0
jmp .Lt_075F
.Lt_0761:
cmp dword ptr [ebp-4], 1600284023
jne .Lt_0763
.Lt_0764:
call _LN_ACTNWEB@0
jmp .Lt_075F
.Lt_0763:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_0765
.Lt_0766:
call _LN_ACTNBITE@0
jmp .Lt_075F
.Lt_0765:
cmp dword ptr [ebp-4], 1836019318
jne .Lt_0767
.Lt_0768:
call _LN_ACTNKICK@0
.Lt_0767:
.Lt_075F:
call _LN_AUTOLEVELUP@0
.Lt_075D:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNWEB@0
_LN_CRTNWEB@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0769:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_GETACTION@0
push 5
push offset _Lt_0321
push -1
push offset _ACTION_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_076C
call _LN_NEXTACTION@0
.Lt_076C:
.Lt_076B:
push 0
push 29
push offset _Lt_076D
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_0770
.Lt_0771:
call _LN_ACTNWEBMOVE@0
jmp .Lt_076E
.Lt_0770:
cmp dword ptr [ebp-4], 1919185011
jne .Lt_0772
.Lt_0773:
call _LN_ACTNSPDR@0
.Lt_0772:
.Lt_076E:
call _LN_AUTOLEVELUP@0
.Lt_076A:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNDTBY@0
_LN_CRTNDTBY@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0774:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 25
push offset _Lt_0776
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_0779
.Lt_077A:
call _LN_ACTNMOVE@0
jmp .Lt_0777
.Lt_0779:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_077B
.Lt_077C:
call _LN_ACTNFIRE@0
jmp .Lt_0777
.Lt_077B:
cmp dword ptr [ebp-4], 2036495460
jne .Lt_077D
.Lt_077E:
call _LN_ACTNDTBY@0
jmp .Lt_0777
.Lt_077D:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_077F
.Lt_0780:
call _LN_ACTNBITE@0
jmp .Lt_0777
.Lt_077F:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_0781
.Lt_0782:
call _LN_ACTNKICK@0
jmp .Lt_0777
.Lt_0781:
cmp dword ptr [ebp-4], 1953723748
jne .Lt_0783
.Lt_0784:
call _LN_ACTNDUST@0
.Lt_0783:
.Lt_0777:
call _LN_AUTOLEVELUP@0
.Lt_0775:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNGRML@0
_LN_CRTNGRML@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0785:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 29
push offset _Lt_0787
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_078A
.Lt_078B:
call _LN_ACTNMOVE@0
jmp .Lt_0788
.Lt_078A:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_078C
.Lt_078D:
call _LN_ACTNFIRE@0
jmp .Lt_0788
.Lt_078C:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_078E
.Lt_078F:
call _LN_ACTNBITE@0
jmp .Lt_0788
.Lt_078E:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_0790
.Lt_0791:
call _LN_ACTNPNCH@0
jmp .Lt_0788
.Lt_0790:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_0792
.Lt_0793:
call _LN_ACTNKICK@0
jmp .Lt_0788
.Lt_0792:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_0794
.Lt_0795:
call _LN_ACTNDGGR@0
jmp .Lt_0788
.Lt_0794:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_0796
.Lt_0797:
call _LN_ACTNPIKE@0
.Lt_0796:
.Lt_0788:
call _LN_AUTOLEVELUP@0
.Lt_0786:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNPNDX@0
_LN_CRTNPNDX@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0798:
call _LN_STATGAIN@0
call _LN_STATMAX@0
call _LN_NEXTACTION@0
push 0
push 37
push offset _Lt_079A
push -1
push offset _ATTACKTHEM_STR
call _fb_StrAssign@20
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1702260589
jne .Lt_079D
.Lt_079E:
call _LN_ACTNMOVE@0
jmp .Lt_079B
.Lt_079D:
cmp dword ptr [ebp-4], 1701996902
jne .Lt_079F
.Lt_07A0:
call _LN_ACTNFIRE@0
jmp .Lt_079B
.Lt_079F:
cmp dword ptr [ebp-4], 1702127970
jne .Lt_07A1
.Lt_07A2:
call _LN_ACTNBITE@0
jmp .Lt_079B
.Lt_07A1:
cmp dword ptr [ebp-4], 1751346800
jne .Lt_07A3
.Lt_07A4:
call _LN_ACTNPNCH@0
jmp .Lt_079B
.Lt_07A3:
cmp dword ptr [ebp-4], 1801677163
jne .Lt_07A5
.Lt_07A6:
call _LN_ACTNKICK@0
jmp .Lt_079B
.Lt_07A5:
cmp dword ptr [ebp-4], 1919379300
jne .Lt_07A7
.Lt_07A8:
call _LN_ACTNDGGR@0
jmp .Lt_079B
.Lt_07A7:
cmp dword ptr [ebp-4], 1701538160
jne .Lt_07A9
.Lt_07AA:
call _LN_ACTNPIKE@0
jmp .Lt_079B
.Lt_07A9:
cmp dword ptr [ebp-4], 1919185011
jne .Lt_07AB
.Lt_07AC:
call _LN_ACTNSPDR@0
jmp .Lt_079B
.Lt_07AB:
cmp dword ptr [ebp-4], 1600284023
jne .Lt_07AD
.Lt_07AE:
call _LN_ACTNWEB@0
jmp .Lt_079B
.Lt_07AD:
cmp dword ptr [ebp-4], 1836019318
jne .Lt_07AF
.Lt_07B0:
call _LN_ACTNVNOM@0
jmp .Lt_079B
.Lt_07AF:
cmp dword ptr [ebp-4], 1701999971
jne .Lt_07B1
.Lt_07B2:
call _LN_ACTNCURE@0
jmp .Lt_079B
.Lt_07B1:
cmp dword ptr [ebp-4], 1953526633
jne .Lt_07B3
.Lt_07B4:
call _LN_ACTNISPT@0
jmp .Lt_079B
.Lt_07B3:
cmp dword ptr [ebp-4], 1819308647
jne .Lt_07B5
.Lt_07B6:
call _LN_ACTNGRPL@0
jmp .Lt_079B
.Lt_07B5:
cmp dword ptr [ebp-4], 1819304306
jne .Lt_07B7
.Lt_07B8:
call _LN_ACTNRAPL@0
jmp .Lt_079B
.Lt_07B7:
cmp dword ptr [ebp-4], 1684366707
jne .Lt_07B9
.Lt_07BA:
call _LN_ACTNCCTS@0
jmp .Lt_079B
.Lt_07B9:
cmp dword ptr [ebp-4], 1718907767
jne .Lt_07BB
.Lt_07BC:
call _LN_ACTNWSTF@0
jmp .Lt_079B
.Lt_07BB:
cmp dword ptr [ebp-4], 1735289207
jne .Lt_07BD
.Lt_07BE:
call _LN_ACTNWING@0
jmp .Lt_079B
.Lt_07BD:
cmp dword ptr [ebp-4], 830039403
jne .Lt_07BF
.Lt_07C0:
call _LN_ACTNKEY1@0
jmp .Lt_079B
.Lt_07BF:
cmp dword ptr [ebp-4], 846816619
jne .Lt_07C1
.Lt_07C2:
call _LN_ACTNKEY2@0
.Lt_07C1:
.Lt_079B:
call _LN_AUTOLEVELUP@0
.Lt_0799:
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
.Lt_07C3:
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
push offset _Lt_0510
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx eax, word ptr [_HERE_SI]
test eax, eax
jle .Lt_07C6
push 4
push offset _Lt_0515
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
.Lt_07C6:
.Lt_07C5:
push 0
push 5
push offset _Lt_07C7
push -1
push offset _HERE_STR
call _fb_StrAssign@20
call _LN_HERE@0
movsx ebx, word ptr [_HERE_SI]
test ebx, ebx
jle .Lt_07C9
push 4
push offset _Lt_07CA
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
.Lt_07C9:
.Lt_07C8:
push offset _ACTION_STR
call _fb_CVL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1684366707
jne .Lt_07CD
.Lt_07CE:
call _LN_ACTNCCTS@0
.Lt_07CD:
.Lt_07CB:
call _LN_AUTOLEVELUP@0
.Lt_07C4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LN_CRTNBLDR@0
_LN_CRTNBLDR@0:
push ebx
.Lt_07CF:
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
push offset _Lt_0515
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
jne .Lt_07D2
push 4
push offset _Lt_07D3
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
jmp .Lt_07D0
.Lt_07D2:
.Lt_07D1:
push 5
push offset _Lt_0510
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
jne .Lt_07D5
push 4
push offset _Lt_07C7
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
jmp .Lt_07D0
.Lt_07D5:
.Lt_07D4:
call _LN_AUTOLEVELUP@0
.Lt_07D0:
pop ebx
ret
.balign 16

.globl _CINPUT@0
_CINPUT@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_07D6:
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
jne .Lt_07D9
push 0
push 3
push offset _Lt_0619
push -1
push offset _C_STR
call _fb_StrAssign@20
.Lt_07D9:
push 2
push offset _Lt_07DA
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
je .Lt_07DC
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
push offset _Lt_07DE
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
push offset _Lt_07DD
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
.Lt_07DC:
.Lt_07DB:
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
je .Lt_07E2
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
push offset _Lt_07DE
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
push offset _Lt_07E3
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
.Lt_07E2:
.Lt_07E1:
push offset _YMOUSE_SI
push offset _XMOUSE_SI
push offset _RB_SI
push offset _LB_SI
call _MOUSESTATUS@16
movsx eax, word ptr [_YMOUSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_02CB]
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
fadd qword ptr [_Lt_0134]
fistp word ptr [_YM_SI]
movsx eax, word ptr [_XMOUSE_SI]
push eax
fild dword ptr [esp]
add esp, 4
fdiv qword ptr [_Lt_02CB]
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
fadd qword ptr [_Lt_0134]
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
je .Lt_07E7
mov cx, word ptr [_LB_SI]
mov word ptr [_LLB_SI], cx
mov cx, word ptr [_LB_SI]
mov word ptr [_L1B_SI], cx
jmp .Lt_07E6
.Lt_07E7:
mov word ptr [_LB_SI], 0
.Lt_07E6:
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
je .Lt_07E9
mov ax, word ptr [_RB_SI]
mov word ptr [_RRB_SI], ax
mov ax, word ptr [_RB_SI]
mov word ptr [_R1B_SI], ax
jmp .Lt_07E8
.Lt_07E9:
mov word ptr [_RB_SI], 0
.Lt_07E8:
.Lt_07D7:
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
.Lt_07F4:
push -1
push 1
push offset _Lt_07F6
call _fb_StrAllocTempDescZEx@8
push eax
push 2
call _fb_StrFill2@8
push eax
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
je .Lt_07F8
push 0
push -1
push offset _C_STR
push -1
push offset _CLAST_STR
call _fb_StrAssign@20
.Lt_07F8:
.Lt_07F7:
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
.Lt_07F5:
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
.Lt_07FE:
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
jg .Lt_0801
push 0
push -1
push 2
push offset _Lt_07F6
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
push offset _Lt_07DE
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
push offset _Lt_07DE
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
jmp .Lt_0800
.Lt_0801:
push 0
push -1
push 2
push offset _Lt_07F6
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
push offset _Lt_07DE
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
push offset _Lt_0805
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
.Lt_0800:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_07FF
mov eax, dword ptr [ebp+44]
and eax, 1
je .Lt_080B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
.Lt_080B:
.Lt_080A:
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
fdiv qword ptr [_Lt_0131]
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
fdiv qword ptr [_Lt_0131]
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
fdiv qword ptr [_Lt_0131]
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
fdiv qword ptr [_Lt_0131]
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
fdiv qword ptr [_Lt_0131]
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
.Lt_07FF:
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
.Lt_080E:
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
push offset _Lt_0810
push -1
push dword ptr [ebp+24]
mov ebx, eax
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0812
push 0
push -1
push 2
push offset _Lt_0813
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
push offset _Lt_0815
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
push offset _Lt_081A
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
push offset _Lt_0815
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
.Lt_0812:
.Lt_0811:
push -1
push dword ptr [ebp+24]
call _fb_StrLen@8
cmp eax, 11
je .Lt_0821
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
push offset _Lt_0805
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_0821:
.Lt_0820:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_080F:
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
.Lt_0824:
.Lt_0826:
call _CINPUT@0
call _CURSORPUT@0
push offset _CLV_BUFFER
call _CLV_BUFFER_STACK@4
.Lt_0828:
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
je .Lt_0826
.Lt_0827:
.Lt_0825:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CLS2@0
_CLS2@0:
.Lt_082B:
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_082D]
push dword ptr [_Lt_0429]
push dword ptr [_Lt_0141]
push dword ptr [_Lt_0141]
push 0
call _fb_GfxLine@36
.Lt_082C:
ret
.balign 16

.globl _FILE_PUT_CONTENTS@8
_FILE_PUT_CONTENTS@8:
push ebp
mov ebp, esp
sub esp, 4
.Lt_082E:
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
.Lt_082F:
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
.Lt_0830:
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
jg .Lt_0834
jl .Lt_0835
cmp eax, 0
ja .Lt_0834
.Lt_0835:
xor ecx, ecx
.Lt_0834:
and ebx, ecx
je .Lt_0833
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
.Lt_0833:
.Lt_0832:
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
.Lt_0831:
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
.Lt_0836:
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
.Lt_083B:
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
.Lt_0839:
inc dword ptr [ebp-16]
.Lt_0838:
cmp dword ptr [ebp-16], 255
jle .Lt_083B
.Lt_083A:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_0837:
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
.Lt_083C:
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
.Lt_083D:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _CLV_BUFFER_STACK@4
_CLV_BUFFER_STACK@4:
push ebp
mov ebp, esp
.Lt_0842:
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
jne .Lt_0845
.Lt_0846:
push 1
push dword ptr [_CLV_BUFFER_TITLE]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0844
.Lt_0845:
mov eax, dword ptr [_CLV_BUFFER_HELP]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0847
.Lt_0848:
push 1
push dword ptr [_CLV_BUFFER_HELP]
push dword ptr [ebp+8]
call _CLV_BUFFER_OVERLAY@12
jmp .Lt_0844
.Lt_0847:
mov eax, dword ptr [_CLV_BUFFER_PORTAL]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0849
.Lt_084A:
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
jmp .Lt_0844
.Lt_0849:
mov eax, dword ptr [_CLV_BUFFER_STATUS]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_084B
.Lt_084C:
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
jmp .Lt_0844
.Lt_084B:
mov eax, dword ptr [_CLV_BUFFER_EXPSHOP]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_084D
.Lt_084E:
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
jmp .Lt_0844
.Lt_084D:
mov eax, dword ptr [_CLV_BUFFER_MERCHANT]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_084F
.Lt_0850:
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
jmp .Lt_0844
.Lt_084F:
mov eax, dword ptr [_CLV_BUFFER_PLAYBYPLAY]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
jne .Lt_0851
.Lt_0852:
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
.Lt_0851:
.Lt_0844:
mov eax, dword ptr [_CLV_BUFFER_SPLASH]
cmp dword ptr [_CLV_BUFFER_FOCUS], eax
je .Lt_0854
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
.Lt_0854:
.Lt_0853:
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
push dword ptr [_Lt_0141]
push dword ptr [_Lt_0141]
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
.Lt_0843:
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
.Lt_0855:
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
push offset _Lt_04ED
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
fld qword ptr [_Lt_0505]
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
push offset _Lt_0351
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
push offset _Lt_04F0
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
push offset _Lt_034E
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
push offset _Lt_04F5
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
fadd qword ptr [_Lt_0506]
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
push offset _Lt_04F8
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
fadd qword ptr [_Lt_0506]
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
push offset _Lt_04FB
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
fadd qword ptr [_Lt_0506]
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
push offset _Lt_04F8
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
fadd qword ptr [_Lt_0506]
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
push offset _Lt_0500
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
fadd qword ptr [_Lt_0506]
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
push offset _Lt_04F8
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
fadd qword ptr [_Lt_0506]
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
jne .Lt_086A
.Lt_086B:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_086D
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
jmp .Lt_0869
.Lt_086A:
movsx eax, word ptr [_D_SI]
cmp eax, 1
jne .Lt_086F
.Lt_0870:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_0872
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
jmp .Lt_0869
.Lt_086F:
movsx eax, word ptr [_D_SI]
cmp eax, 2
jne .Lt_0874
.Lt_0875:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_0877
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
jmp .Lt_0869
.Lt_0874:
movsx eax, word ptr [_D_SI]
cmp eax, 3
jne .Lt_0879
.Lt_087A:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_087C
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
jmp .Lt_0869
.Lt_0879:
movsx eax, word ptr [_D_SI]
cmp eax, 4
jne .Lt_087E
.Lt_087F:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 12
push offset _Lt_0881
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
.Lt_087E:
.Lt_0869:
push offset _SPRITEPATH_STR
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 4
push offset _Lt_049A
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
fdiv qword ptr [_Lt_025D]
fistp word ptr [ebp-288]
jmp .Lt_0889
.Lt_088C:
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
jne .Lt_088E
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
.Lt_088E:
.Lt_088D:
.Lt_088A:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0889:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-288]
cmp eax, ebx
jle .Lt_088C
.Lt_088B:
.Lt_0856:
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
.Lt_088F:
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
fdiv qword ptr [_Lt_025D]
fistp word ptr [ebp-36]
jmp .Lt_0892
.Lt_0895:
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
fdiv qword ptr [_Lt_025F]
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
fmul qword ptr [_Lt_025C]
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
push offset _Lt_0395
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
jne .Lt_089B
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
.Lt_089B:
.Lt_089A:
.Lt_0893:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_0892:
movsx eax, word ptr [_T_SI]
movsx ebx, word ptr [ebp-36]
cmp eax, ebx
jle .Lt_0895
.Lt_0894:
.Lt_0890:
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
.Lt_089C:
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
jne .Lt_089F
.Lt_08A0:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 8
push offset _Lt_08A1
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
jmp .Lt_089E
.Lt_089F:
movsx eax, word ptr [_TITLED_SI]
cmp eax, 1
jne .Lt_08A3
.Lt_08A4:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 8
push offset _Lt_08A5
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
.Lt_08A3:
.Lt_089E:
.Lt_089D:
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
.Lt_08A7:
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
.Lt_08A8:
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
.Lt_08AA:
mov dword ptr [ebp-4], 0
push 1
push dword ptr [ebp+8]
call _fb_ArrayLBound@8
mov dword ptr [ebp-4], eax
push 1
push dword ptr [ebp+8]
call _fb_ArrayUBound@8
mov dword ptr [ebp-8], eax
jmp .Lt_08AD
.Lt_08B0:
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
je .Lt_08B2
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
mov dword ptr [eax], 1
.Lt_08B2:
.Lt_08B1:
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
.Lt_08AE:
inc dword ptr [ebp-4]
.Lt_08AD:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_08B0
.Lt_08AF:
.Lt_08AB:
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
.Lt_08BB:
.Lt_08BD:
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
push offset _Lt_08C2
push -1
push offset _C_STR
call _fb_StrCompare@16
test eax, eax
jne .Lt_08C1
.Lt_08C3:
jmp .Lt_08BE
.Lt_08C1:
.Lt_08C0:
.Lt_08BF:
jmp .Lt_08BD
.Lt_08BE:
.Lt_08BC:
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
.Lt_08C4:
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
push offset _Lt_08C6
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
push offset _Lt_08C7
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
push offset _Lt_00A1
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
push offset _Lt_08CD
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
push offset _Lt_08CF
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
.Lt_08D4:
mov dword ptr [ebp-8], 1
.Lt_08D8:
push offset _DATA_TABLE
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_08D9
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
.Lt_08D6:
inc dword ptr [ebp-8]
.Lt_08D5:
cmp dword ptr [ebp-8], 2
jle .Lt_08D8
.Lt_08D7:
.Lt_08D2:
inc dword ptr [ebp-4]
.Lt_08D1:
cmp dword ptr [ebp-4], 4
jle .Lt_08D4
.Lt_08D3:
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
push offset _DATA_TABLE
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
push 0
push 6
push offset _Lt_08E1
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
push offset _DATA_TABLE
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push 6
push offset _Lt_08E3
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
push offset _Lt_08E5
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
push offset _Lt_08E7
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
push offset _Lt_08E9
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
push offset _Lt_08EB
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
push offset _Lt_08ED
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
.Lt_08F2:
mov dword ptr [ebp-4], 1
.Lt_08F6:
push offset _DATA_TABLE
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
mov dword ptr [ebp-368], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_08D9
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
.Lt_08F4:
inc dword ptr [ebp-4]
.Lt_08F3:
cmp dword ptr [ebp-4], 2
jle .Lt_08F6
.Lt_08F5:
.Lt_08F0:
inc dword ptr [ebp-8]
.Lt_08EF:
cmp dword ptr [ebp-8], 4
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
mov dword ptr [ebp-4], 0
movsx eax, word ptr [_WIN_SI]
mov dword ptr [ebp-320], eax
jmp .Lt_08FD
.Lt_0900:
mov dword ptr [ebp-8], 1
.Lt_0904:
push offset _DATA_TABLE
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
mov dword ptr [ebp-372], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 9
push offset _Lt_0905
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
.Lt_0902:
inc dword ptr [ebp-8]
.Lt_0901:
cmp dword ptr [ebp-8], 2
jle .Lt_0904
.Lt_0903:
.Lt_08FE:
inc dword ptr [ebp-4]
.Lt_08FD:
mov eax, dword ptr [ebp-320]
cmp dword ptr [ebp-4], eax
jle .Lt_0900
.Lt_08FF:
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
.Lt_090E:
mov dword ptr [ebp-4], 1
.Lt_0912:
push offset _DATA_TABLE
mov dword ptr [ebp-352], 0
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_T_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 7
push offset _Lt_0913
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
.Lt_0910:
inc dword ptr [ebp-4]
.Lt_090F:
cmp dword ptr [ebp-4], 2
jle .Lt_0912
.Lt_0911:
.Lt_090C:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_090B:
movsx eax, word ptr [_T_SI]
cmp eax, 64
jle .Lt_090E
.Lt_090D:
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push 9
push offset _Lt_0917
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
jmp .Lt_091A
.Lt_091D:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-324], ax
jmp .Lt_091F
.Lt_0922:
push 0
push -1
push offset _DATA_TABLE
mov dword ptr [ebp-384], 0
mov dword ptr [ebp-380], 0
mov dword ptr [ebp-376], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0923
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
push offset _DATA_TABLE
mov dword ptr [ebp-444], 0
mov dword ptr [ebp-440], 0
mov dword ptr [ebp-436], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0929
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
push offset _DATA_TABLE
mov dword ptr [ebp-504], 0
mov dword ptr [ebp-500], 0
mov dword ptr [ebp-496], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_092F
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
push offset _DATA_TABLE
mov dword ptr [ebp-564], 0
mov dword ptr [ebp-560], 0
mov dword ptr [ebp-556], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0935
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
push offset _DATA_TABLE
mov dword ptr [ebp-624], 0
mov dword ptr [ebp-620], 0
mov dword ptr [ebp-616], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 18
push offset _Lt_093B
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
push offset _DATA_TABLE
mov dword ptr [ebp-684], 0
mov dword ptr [ebp-680], 0
mov dword ptr [ebp-676], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 16
push offset _Lt_0941
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
push offset _DATA_TABLE
mov dword ptr [ebp-744], 0
mov dword ptr [ebp-740], 0
mov dword ptr [ebp-736], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0947
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
push offset _DATA_TABLE
mov dword ptr [ebp-804], 0
mov dword ptr [ebp-800], 0
mov dword ptr [ebp-796], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_094D
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
push offset _DATA_TABLE
mov dword ptr [ebp-864], 0
mov dword ptr [ebp-860], 0
mov dword ptr [ebp-856], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0953
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
push offset _DATA_TABLE
mov dword ptr [ebp-924], 0
mov dword ptr [ebp-920], 0
mov dword ptr [ebp-916], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0959
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
push offset _DATA_TABLE
mov dword ptr [ebp-984], 0
mov dword ptr [ebp-980], 0
mov dword ptr [ebp-976], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_095F
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
push offset _DATA_TABLE
mov dword ptr [ebp-1044], 0
mov dword ptr [ebp-1040], 0
mov dword ptr [ebp-1036], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0965
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
push offset _DATA_TABLE
mov dword ptr [ebp-1104], 0
mov dword ptr [ebp-1100], 0
mov dword ptr [ebp-1096], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_096B
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
push offset _DATA_TABLE
mov dword ptr [ebp-1164], 0
mov dword ptr [ebp-1160], 0
mov dword ptr [ebp-1156], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0971
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
push offset _DATA_TABLE
mov dword ptr [ebp-1224], 0
mov dword ptr [ebp-1220], 0
mov dword ptr [ebp-1216], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0977
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
push offset _DATA_TABLE
mov dword ptr [ebp-1284], 0
mov dword ptr [ebp-1280], 0
mov dword ptr [ebp-1276], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_097D
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
push offset _DATA_TABLE
mov dword ptr [ebp-1344], 0
mov dword ptr [ebp-1340], 0
mov dword ptr [ebp-1336], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_0983
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
push offset _DATA_TABLE
mov dword ptr [ebp-1404], 0
mov dword ptr [ebp-1400], 0
mov dword ptr [ebp-1396], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0989
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
push offset _DATA_TABLE
mov dword ptr [ebp-1464], 0
mov dword ptr [ebp-1460], 0
mov dword ptr [ebp-1456], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_098F
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
push offset _DATA_TABLE
mov dword ptr [ebp-1524], 0
mov dword ptr [ebp-1520], 0
mov dword ptr [ebp-1516], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_0995
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
push offset _DATA_TABLE
mov dword ptr [ebp-1584], 0
mov dword ptr [ebp-1580], 0
mov dword ptr [ebp-1576], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_099B
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
push offset _DATA_TABLE
mov dword ptr [ebp-1644], 0
mov dword ptr [ebp-1640], 0
mov dword ptr [ebp-1636], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_09A1
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
push offset _DATA_TABLE
mov dword ptr [ebp-1704], 0
mov dword ptr [ebp-1700], 0
mov dword ptr [ebp-1696], 0
push 0
push -1
push 2
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_09A7
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
.Lt_0920:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_091F:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-324]
cmp eax, ebx
jle .Lt_0922
.Lt_0921:
.Lt_091B:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_091A:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-320]
cmp ebx, eax
jle .Lt_091D
.Lt_091C:
push dword ptr [_Lt_01EC+4]
push dword ptr [_Lt_01EC]
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
.Lt_08C5:
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
.Lt_09AD:
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
push offset _Lt_09B0
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
push offset _Lt_08C7
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
push offset _Lt_08CD
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
push offset _Lt_08CF
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
.Lt_09BB:
mov dword ptr [ebp-8], 1
.Lt_09BF:
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_08D9
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
.Lt_09BD:
inc dword ptr [ebp-8]
.Lt_09BC:
cmp dword ptr [ebp-8], 2
jle .Lt_09BF
.Lt_09BE:
.Lt_09B9:
inc dword ptr [ebp-4]
.Lt_09B8:
cmp dword ptr [ebp-4], 4
jle .Lt_09BB
.Lt_09BA:
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
push offset _Lt_08E1
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
push offset _Lt_08E3
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
push offset _Lt_08E5
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
push offset _Lt_08E7
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
push offset _Lt_08E9
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
push offset _Lt_08EB
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
push offset _Lt_08ED
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
.Lt_09D8:
mov dword ptr [ebp-4], 1
.Lt_09DC:
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push 7
push offset _Lt_08D9
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
.Lt_09DA:
inc dword ptr [ebp-4]
.Lt_09D9:
cmp dword ptr [ebp-4], 2
jle .Lt_09DC
.Lt_09DB:
.Lt_09D6:
inc dword ptr [ebp-8]
.Lt_09D5:
cmp dword ptr [ebp-8], 4
jle .Lt_09D8
.Lt_09D7:
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
jmp .Lt_09E4
.Lt_09E7:
mov dword ptr [ebp-8], 1
.Lt_09EB:
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
push dword ptr [ebp-8]
call __Z7TRIMINTl@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
push dword ptr [ebp-4]
call __Z7TRIMINTl@4
push eax
push 9
push offset _Lt_0905
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
.Lt_09E9:
inc dword ptr [ebp-8]
.Lt_09E8:
cmp dword ptr [ebp-8], 2
jle .Lt_09EB
.Lt_09EA:
.Lt_09E5:
inc dword ptr [ebp-4]
.Lt_09E4:
mov eax, dword ptr [ebp-420]
cmp dword ptr [ebp-4], eax
jle .Lt_09E7
.Lt_09E6:
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
.Lt_09F5:
mov dword ptr [ebp-4], 1
.Lt_09F9:
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_T_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 7
push offset _Lt_0913
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
.Lt_09F7:
inc dword ptr [ebp-4]
.Lt_09F6:
cmp dword ptr [ebp-4], 2
jle .Lt_09F9
.Lt_09F8:
.Lt_09F3:
movsx eax, word ptr [_T_SI]
inc eax
mov word ptr [_T_SI], ax
.Lt_09F2:
movsx eax, word ptr [_T_SI]
cmp eax, 64
jle .Lt_09F5
.Lt_09F4:
push offset _NAMES_BUFFER
push offset _CTRL_STR
mov dword ptr [ebp-416], 0
mov dword ptr [ebp-412], 0
mov dword ptr [ebp-408], 0
push 0
push 9
push offset _Lt_0917
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
jmp .Lt_0A00
.Lt_0A03:
mov word ptr [_TX_SI], 1
mov ax, word ptr [_AA_SI]
mov word ptr [ebp-424], ax
jmp .Lt_0A05
.Lt_0A08:
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0923
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0929
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_092F
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0935
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 18
push offset _Lt_093B
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 16
push offset _Lt_0941
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0947
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_094D
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0953
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_0959
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_095F
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0965
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 12
push offset _Lt_096B
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0971
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_0977
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_097D
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 11
push offset _Lt_0983
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 14
push offset _Lt_0989
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_098F
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_0995
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 15
push offset _Lt_099B
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_09A1
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
push offset _NAMES_BUFFER
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
push offset _Lt_08DB
push -1
push -1
movzx eax, word ptr [_TY_SI]
push eax
call __Z7TRIMINTs@4
push eax
push -1
push 3
push offset _Lt_08DA
push -1
push -1
movzx eax, word ptr [_TX_SI]
push eax
call __Z7TRIMINTs@4
push eax
push 13
push offset _Lt_09A7
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
.Lt_0A06:
movsx eax, word ptr [_TX_SI]
inc eax
mov word ptr [_TX_SI], ax
.Lt_0A05:
movsx eax, word ptr [_TX_SI]
movsx ebx, word ptr [ebp-424]
cmp eax, ebx
jle .Lt_0A08
.Lt_0A07:
.Lt_0A01:
movsx ebx, word ptr [_TY_SI]
inc ebx
mov word ptr [_TY_SI], bx
.Lt_0A00:
movsx ebx, word ptr [_TY_SI]
movsx eax, word ptr [ebp-420]
cmp ebx, eax
jle .Lt_0A03
.Lt_0A02:
push dword ptr [_Lt_01EC+4]
push dword ptr [_Lt_01EC]
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
.Lt_09AE:
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
.Lt_0A8E:
push dword ptr [ebp+12]
call _MAP_SAVE@4
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_0A91
push -1
push -1
push dword ptr [ebp+8]
push 8
push offset _Lt_0A90
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
.Lt_0A8F:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SAVEGAME_LOAD@8
_SAVEGAME_LOAD@8:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0A95:
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_0A91
push -1
push -1
push dword ptr [ebp+8]
push 8
push offset _Lt_0A90
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
.Lt_0A96:
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
.Lt_0A9B:
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
.Lt_0A9C:
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
_Lt_0074:	.ascii	"demo.vds\0"
.balign 4
_Lt_0075:	.ascii	"lvup\\\0"
.balign 4
_Lt_0076:	.ascii	"roe_lvup.dat\0"
.balign 4
_Lt_0077:	.ascii	".\\dict\\input.txt\0"
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
_Lt_00B6:	.ascii	".\\dict\\names.txt\0"
.balign 4
_Lt_00C5:	.ascii	"pndximp_\0"
.balign 4
_Lt_00C8:	.ascii	"dust\0"
.balign 4
_Lt_00D3:	.ascii	"____\0"
.balign 4
_Lt_00D4:	.ascii	"________\0"
.balign 4
_Lt_00D9:	.ascii	"spdr\0"
.balign 4
_Lt_00DB:	.ascii	"Spider\0"
.balign 4
_Lt_00DC:	.ascii	"movebiteweb_\0"
.balign 4
_Lt_00DF:	.ascii	"0001\0"
.balign 4
_Lt_00E3:	.ascii	"vnom\0"
.balign 4
_Lt_00E5:	.ascii	"wall\0"
.balign 4
_Lt_00E8:	.ascii	"web_\0"
.balign 4
_Lt_00EA:	.ascii	"Web\0"
.balign 4
_Lt_00EC:	.ascii	"grml\0"
.balign 4
_Lt_00EE:	.ascii	"Gremlin\0"
.balign 4
_Lt_00EF:	.ascii	"movebitepnch\0"
.balign 4
_Lt_00F2:	.ascii	"dggr\0"
.balign 4
_Lt_00F4:	.ascii	"pndx\0"
.balign 4
_Lt_00F6:	.ascii	"Poindexter\0"
.balign 4
_Lt_00F7:	.ascii	"wstf\0"
.balign 4
_Lt_00F9:	.ascii	"dtby\0"
.balign 4
_Lt_00FB:	.ascii	"Dust Bunny\0"
.balign 4
_Lt_00FC:	.ascii	"movebitekickdtbydust\0"
.balign 4
_Lt_00FE:	.ascii	"shkt\0"
.balign 4
_Lt_0100:	.ascii	"Shiny Knight\0"
.balign 4
_Lt_0101:	.ascii	"movepnchdggr\0"
.balign 4
_Lt_0103:	.ascii	"emgd\0"
.balign 4
_Lt_0105:	.ascii	"Emerald Guard\0"
.balign 4
_Lt_010A:	.ascii	"pike\0"
.balign 4
_Lt_010C:	.ascii	"door\0"
.balign 4
_Lt_010E:	.ascii	"Door\0"
.balign 4
_Lt_0112:	.ascii	"loc1\0"
.balign 4
_Lt_0115:	.ascii	"loc2\0"
.balign 4
_Lt_0118:	.ascii	"loc3\0"
.balign 4
_Lt_011A:	.ascii	"imp_\0"
.balign 4
_Lt_011C:	.ascii	"Little Imp\0"
.balign 4
_Lt_011D:	.ascii	"movewingfire\0"
.balign 4
_Lt_0120:	.ascii	"Merchant\0"
.balign 4
_Lt_0121:	.ascii	"dggrgrplseed\0"
.balign 4
_Lt_0126:	.ascii	"chst\0"
.balign 4
_Lt_0128:	.ascii	"Treasure chest\0"
.balign 4
_Lt_012B:	.ascii	"key1\0"
.balign 4
_Lt_012C:	.ascii	"key2\0"
.balign 4
_Lt_012E:	.ascii	"bldr\0"
.balign 4
_Lt_0130:	.ascii	"Big boulder\0"
.balign 8
_Lt_0131:	.quad	0x4000000000000000
.balign 4
_Lt_0132:	.long	0x40200000
.balign 4
_Lt_0133:	.long	0x3F800000
.balign 8
_Lt_0134:	.quad	0x3FF0000000000000
.balign 4
_Lt_0135:	.long	0x41200000
.balign 4
_Lt_0136:	.long	0x41A00000
.balign 4
_Lt_0137:	.long	0x40A00000
.balign 4
_Lt_0138:	.long	0x43BE0000
.balign 4
_Lt_0139:	.long	0x40400000
.balign 4
_Lt_013A:	.long	0x40000000
.balign 4
_Lt_013B:	.long	0x42200000
.balign 4
_Lt_013C:	.long	0x42480000
.balign 8
_Lt_013D:	.quad	0x3FC999999999999A
.balign 4
_Lt_013E:	.long	0x41C80000
.balign 4
_Lt_013F:	.long	0x42B40000
.balign 4
_Lt_0140:	.long	0x41F00000
.balign 4
_Lt_0141:	.long	0x00000000
.balign 4
_Lt_0142:	.long	0x41700000
.balign 4
_Lt_0143:	.long	0x3DCCCCCD
.balign 4
_Lt_0144:	.long	0x3D8F5C29
.balign 4
_Lt_0145:	.long	0x3F99999A
.balign 4
_Lt_0146:	.long	0x438C0000
.balign 4
_Lt_0147:	.long	0x42340000
.balign 4
_Lt_0148:	.long	0x42DC0000
.balign 4
_Lt_0149:	.long	0x40800000
.balign 4
_Lt_014A:	.long	0x41880000
.balign 4
_Lt_014B:	.long	0x41400000
.balign 4
_Lt_014C:	.long	0x3DF5C28F
.balign 8
_Lt_014D:	.quad	0x3FB999999999999A
.balign 8
_Lt_014E:	.quad	0x3FD999999999999A
.balign 4
_Lt_014F:	.long	0x430C0000
.balign 4
_Lt_0150:	.long	0x3E4CCCCD
.balign 4
_Lt_0151:	.long	0x41C00000
.balign 4
_Lt_0152:	.long	0x3E99999A
.balign 4
_Lt_0153:	.long	0x42C80000
.balign 4
_Lt_0154:	.long	0x447A0000
.balign 4
_Lt_015E:	.ascii	"Puzzlum : Realm of Existence\0"
.balign 4
_Lt_015F:	.ascii	"Build: puzzlum-fbc068.200908170813\0"
.balign 4
_Lt_0160:	.ascii	"Created 1989-2009 Timothy Robert Keal\0"
.balign 4
_Lt_0161:	.ascii	"Released under Gnu Public License 2.0\0"
.balign 4
_Lt_0162:	.ascii	"http://www.gnu.org/copyleft/gpl.html\0"
.balign 4
_Lt_0163:	.ascii	"http://puzzlum.retromachineshop.com/\0"
.balign 4
_Lt_0164:	.ascii	"irc://chat.freenode.net/puzzlum\0"
.balign 4
_Lt_0165:	.ascii	"mailto:jargon@juno.com\0"
.balign 4
_Lt_0166:	.ascii	" (H)elp\0"
.balign 4
_Lt_0167:	.ascii	" (C)ontinue\0"
.balign 4
_Lt_0168:	.ascii	" (R)estart\0"
.balign 4
_Lt_0169:	.ascii	" (Q)uit\0"
.balign 4
_Lt_016A:	.ascii	"r\0"
.balign 4
_Lt_016B:	.ascii	"R\0"
.balign 4
_Lt_016E:	.ascii	"q\0"
.balign 4
_Lt_016F:	.ascii	"Q\0"
.balign 4
_Lt_0172:	.ascii	"h\0"
.balign 4
_Lt_0173:	.ascii	"H\0"
.balign 4
_Lt_0176:	.ascii	"c\0"
.balign 4
_Lt_0177:	.ascii	"C\0"
.balign 4
_Lt_0192:	.ascii	"\376 page start\0"
.balign 4
_Lt_0195:	.ascii	"\376 page end\0"
.balign 4
_Lt_0198:	.ascii	" (T)itle\0"
.balign 4
_Lt_019C:	.ascii	"T\0"
.balign 4
_Lt_019F:	.ascii	"\376 end\0"
.balign 4
_Lt_01A2:	.ascii	"\376 COLOR\0"
.balign 4
_Lt_01C1:	.ascii	"zzzz\0"
.balign 4
_Lt_01D7:	.ascii	"fire\0"
.balign 4
_Lt_01DC:	.ascii	"ccts\0"
.balign 8
_Lt_01EC:	.quad	0x0000000000000000
.balign 4
_Lt_01F7:	.ascii	"0002\0"
.balign 4
_Lt_01FE:	.ascii	"&HFF3B\0"
.balign 4
_Lt_0201:	.ascii	"&HFF3C\0"
.balign 4
_Lt_0205:	.ascii	"&HFF3D\0"
.balign 4
_Lt_0208:	.ascii	"L\0"
.balign 4
_Lt_020B:	.ascii	"&H20\0"
.balign 4
_Lt_020E:	.ascii	"&HFF48\0"
.balign 4
_Lt_0211:	.ascii	"&HFF4D\0"
.balign 4
_Lt_0214:	.ascii	"&HFF50\0"
.balign 4
_Lt_0217:	.ascii	"&HFF4B\0"
.balign 4
_Lt_022D:	.ascii	"||\0"
.balign 4
_Lt_023B:	.ascii	"&HFF47\0"
.balign 4
_Lt_023E:	.ascii	"&HFF4F\0"
.balign 4
_Lt_0241:	.ascii	"&HFF49\0"
.balign 4
_Lt_0246:	.ascii	"&HFF51\0"
.balign 8
_Lt_025C:	.quad	0x4008000000000000
.balign 8
_Lt_025D:	.quad	0x4010000000000000
.balign 8
_Lt_025F:	.quad	0x4014000000000000
.balign 8
_Lt_0262:	.quad	0xC008000000000000
.balign 4
_Lt_02A5:	.ascii	"bite\0"
.balign 4
_Lt_02A8:	.ascii	"pnch\0"
.balign 4
_Lt_02AB:	.ascii	"kick\0"
.balign 4
_Lt_02B4:	.ascii	"cure\0"
.balign 8
_Lt_02CA:	.quad	0x4018000000000000
.balign 8
_Lt_02CB:	.quad	0x4020000000000000
.balign 8
_Lt_02D0:	.quad	0x401C000000000000
.balign 8
_Lt_02D3:	.quad	0x4024000000000000
.balign 8
_Lt_02D8:	.quad	0x4028000000000000
.balign 4
_Lt_02DB:	.ascii	"burn\0"
.balign 8
_Lt_02DE:	.quad	0x402E000000000000
.balign 8
_Lt_02E1:	.quad	0x4034000000000000
.balign 4
_Lt_02E6:	.ascii	"tngl\0"
.balign 4
_Lt_02E9:	.ascii	"lash\0"
.balign 8
_Lt_02F6:	.quad	0xC020000000000000
.balign 4
_Lt_02FD:	.ascii	"slep\0"
.balign 8
_Lt_0306:	.quad	0xC02E000000000000
.balign 4
_Lt_0309:	.ascii	"pouch\0"
.balign 4
_Lt_030A:	.ascii	"pwch\0"
.balign 4
_Lt_030B:	.long	0x47C34F80
.balign 4
_Lt_0313:	.ascii	"lvup\0"
.balign 4
_Lt_031A:	.ascii	"ispt\0"
.balign 4
_Lt_0321:	.ascii	"move\0"
.balign 4
_Lt_0344:	.ascii	"cncl\0"
.balign 4
_Lt_034E:	.ascii	"\372\0"
.balign 4
_Lt_034F:	.ascii	"-\0"
.balign 4
_Lt_0350:	.ascii	"----\0"
.balign 4
_Lt_0351:	.ascii	"$\0"
.balign 4
_Lt_0380:	.ascii	"grpl\0"
.balign 4
_Lt_0385:	.ascii	"seed\0"
.balign 4
_Lt_0391:	.ascii	"Wha'du like?\0"
.balign 4
_Lt_0395:	.ascii	"____.24\0"
.balign 4
_Lt_03C4:	.ascii	"bye_\0"
.balign 4
_Lt_03C7:	.ascii	"Poindexter:\0"
.balign 4
_Lt_03C9:	.ascii	"Hi. How are you. My\0"
.balign 4
_Lt_03CB:	.ascii	"name is Poindexter. I\0"
.balign 4
_Lt_03CD:	.ascii	"am the greatest thief\0"
.balign 4
_Lt_03CF:	.ascii	"in the entire world!!!\0"
.balign 4
_Lt_03DC:	.ascii	" =\0"
.balign 4
_Lt_03F7:	.ascii	"gained\0"
.balign 4
_Lt_0401:	.ascii	"      level up!\0"
.balign 4
_Lt_0403:	.ascii	"HPmax +\0"
.balign 4
_Lt_0407:	.ascii	"STRmax +\0"
.balign 4
_Lt_040B:	.ascii	"ESSmax +\0"
.balign 4
_Lt_040F:	.ascii	"STRspd up!\0"
.balign 4
_Lt_0411:	.ascii	"ESSspd up!\0"
.balign 4
_Lt_0417:	.ascii	"reached LV!\0"
.balign 4
_Lt_041D:	.ascii	"next:\0"
.balign 4
_Lt_0428:	.long	0x43470000
.balign 4
_Lt_0429:	.long	0x439F8000
.balign 4
_Lt_042A:	.long	0x43400000
.balign 8
_Lt_042B:	.quad	0x4050000000000000
.balign 4
_Lt_043A:	.ascii	"from\0"
.balign 4
_Lt_043C:	.ascii	"!\0"
.balign 4
_Lt_0445:	.ascii	"used\0"
.balign 4
_Lt_0447:	.ascii	"on\0"
.balign 4
_Lt_0450:	.ascii	"HP -\0"
.balign 4
_Lt_0454:	.ascii	"STR-\0"
.balign 4
_Lt_045E:	.ascii	"pillaged\0"
.balign 4
_Lt_0460:	.ascii	"EXP+\0"
.balign 4
_Lt_0465:	.ascii	"EXP:\0"
.balign 4
_Lt_046A:	.ascii	"STR+\0"
.balign 4
_Lt_046E:	.ascii	"STR:\0"
.balign 4
_Lt_049A:	.ascii	".24\0"
.balign 4
_Lt_04BA:	.ascii	"zzzz____.24\0"
.balign 4
_Lt_04C6:	.ascii	"rapl\0"
.balign 8
_Lt_04D9:	.quad	0xBFF0000000000000
.balign 4
_Lt_04DA:	.long	0x41000000
.balign 4
_Lt_04DB:	.long	0xBF800000
.balign 4
_Lt_04E1:	.ascii	"A RetroMachineShop Featured Project!\0"
.balign 4
_Lt_04E9:	.long	0x41600000
.balign 4
_Lt_04EA:	.long	0x41B80000
.balign 4
_Lt_04ED:	.ascii	"LV\0"
.balign 4
_Lt_04F0:	.ascii	"     \0"
.balign 4
_Lt_04F5:	.ascii	"HP\0"
.balign 4
_Lt_04F8:	.ascii	"/\0"
.balign 4
_Lt_04FB:	.ascii	"STR\0"
.balign 4
_Lt_0500:	.ascii	"ESS\0"
.balign 8
_Lt_0505:	.quad	0x4059000000000000
.balign 8
_Lt_0506:	.quad	0x40C3880000000000
.balign 4
_Lt_050D:	.ascii	"____pwch\0"
.balign 4
_Lt_0510:	.ascii	"watr\0"
.balign 4
_Lt_0515:	.ascii	"hole\0"
.balign 4
_Lt_0516:	.ascii	"holestpsstp2\0"
.balign 4
_Lt_054B:	.ascii	"Flame\0"
.balign 4
_Lt_054C:	.ascii	"moveburn\0"
.balign 8
_Lt_054D:	.quad	0xC034000000000000
.balign 4
_Lt_054E:	.long	0x42F00000
.balign 4
_Lt_0553:	.ascii	"Sleepy dust\0"
.balign 8
_Lt_0558:	.quad	0x406B800000000000
.balign 8
_Lt_0559:	.quad	0xC06B800000000000
.balign 8
_Lt_055E:	.quad	0x4074000000000000
.balign 8
_Lt_055F:	.quad	0xC074000000000000
.balign 4
_Lt_0562:	.ascii	"Cactus\0"
.balign 4
_Lt_0563:	.long	0x41500000
.balign 4
_Lt_0568:	.ascii	"bitekick\0"
.balign 8
_Lt_0569:	.quad	0x4064000000000000
.balign 8
_Lt_056A:	.quad	0xC064000000000000
.balign 4
_Lt_056B:	.long	0x40C00000
.balign 4
_Lt_05CC:	.ascii	" EXP\0"
.balign 4
_Lt_0609:	.ascii	"\372Ok\0"
.balign 4
_Lt_0610:	.ascii	"&H0D\0"
.balign 4
_Lt_0619:	.ascii	"%%\0"
.balign 4
_Lt_0620:	.long	0xC1000000
.balign 4
_Lt_0621:	.long	0xC1300000
.balign 4
_Lt_0622:	.long	0xC1100000
.balign 4
_Lt_0623:	.long	0xC1200000
.balign 4
_Lt_0624:	.long	0xC0E00000
.balign 4
_Lt_0625:	.long	0xC0000000
.balign 4
_Lt_063A:	.ascii	"pndxspdrgrmldtbyemgdshktimp_\0"
.balign 4
_Lt_06BB:	.ascii	"pwchchst\0"
.balign 4
_Lt_06FB:	.ascii	"bldrchst\0"
.balign 8
_Lt_06FE:	.quad	0xC024000000000000
.balign 4
_Lt_071D:	.ascii	"pndxgrmlspdrdtbyweb_emgdshkt\0"
.balign 4
_Lt_072B:	.ascii	"pndxgrmlspdrdtbyweb_shktemgd\0"
.balign 4
_Lt_0732:	.ascii	"pndxgrmlspdrshktemgdimp_\0"
.balign 4
_Lt_0739:	.ascii	"pndxgrmlspdrdtbyweb_imp_\0"
.balign 4
_Lt_075E:	.ascii	"pndxdtbyspdrimp_emgdshktgrml\0"
.balign 4
_Lt_076D:	.ascii	"pndxgrmldtbyweb_shktemgdimp_\0"
.balign 4
_Lt_0776:	.ascii	"pndxgrmlspdrimp_emgdshkt\0"
.balign 4
_Lt_0787:	.ascii	"pndxdtbyspdrimp_emgdshktweb_\0"
.balign 4
_Lt_079A:	.ascii	"pndxdtbyspdrimp_emgdshktweb_grmlccts\0"
.balign 4
_Lt_07C7:	.ascii	"stpw\0"
.balign 4
_Lt_07CA:	.ascii	"stps\0"
.balign 4
_Lt_07D3:	.ascii	"dirt\0"
.balign 4
_Lt_07DA:	.ascii	"\377""\0"
.balign 4
_Lt_07DD:	.ascii	"&HFF\0"
.balign 4
_Lt_07DE:	.ascii	"0\0"
.balign 4
_Lt_07E3:	.ascii	"&H\0"
.balign 4
_Lt_07F6:	.ascii	"%\0"
.balign 4
_Lt_0805:	.ascii	".\0"
.balign 4
_Lt_0810:	.ascii	"________.24\0"
.balign 4
_Lt_0813:	.ascii	"y\0"
.balign 4
_Lt_0815:	.ascii	".png\0"
.balign 4
_Lt_081A:	.ascii	"x\0"
.balign 4
_Lt_082D:	.long	0x436F0000
.balign 4
_Lt_086D:	.ascii	"bttnself.24\0"
.balign 4
_Lt_0872:	.ascii	"bttnnrth.24\0"
.balign 4
_Lt_0877:	.ascii	"bttneast.24\0"
.balign 4
_Lt_087C:	.ascii	"bttnsuth.24\0"
.balign 4
_Lt_0881:	.ascii	"bttnwest.24\0"
.balign 4
_Lt_08A1:	.ascii	"Puzzlum\0"
.balign 4
_Lt_08A5:	.ascii	"(T)itle\0"
.balign 4
_Lt_08C2:	.ascii	"&HFF0D\0"
.balign 4
_Lt_08C6:	.ascii	"Loading Map\0"
.balign 4
_Lt_08C7:	.ascii	"mapname_str\0"
.balign 4
_Lt_08CD:	.ascii	"AA_si\0"
.balign 4
_Lt_08CF:	.ascii	"DD_si\0"
.balign 4
_Lt_08D9:	.ascii	"d_sia[\0"
.balign 4
_Lt_08DA:	.ascii	"][\0"
.balign 4
_Lt_08DB:	.ascii	"]\0"
.balign 4
_Lt_08E1:	.ascii	"ex_si\0"
.balign 4
_Lt_08E3:	.ascii	"dy_si\0"
.balign 4
_Lt_08E5:	.ascii	"mdx_si\0"
.balign 4
_Lt_08E7:	.ascii	"mdy_si\0"
.balign 4
_Lt_08E9:	.ascii	"textcolor_si\0"
.balign 4
_Lt_08EB:	.ascii	"textdelay_sf\0"
.balign 4
_Lt_08ED:	.ascii	"win_si\0"
.balign 4
_Lt_0905:	.ascii	"win_sia[\0"
.balign 4
_Lt_0913:	.ascii	"l_sia[\0"
.balign 4
_Lt_0917:	.ascii	"ctrl_str\0"
.balign 4
_Lt_0923:	.ascii	"prflidty_str[\0"
.balign 4
_Lt_0929:	.ascii	"prflactn_str[\0"
.balign 4
_Lt_092F:	.ascii	"prflgpic_str[\0"
.balign 4
_Lt_0935:	.ascii	"prflcmnd_str[\0"
.balign 4
_Lt_093B:	.ascii	"prflgpicactn_str[\0"
.balign 4
_Lt_0941:	.ascii	"prflactnct_str[\0"
.balign 4
_Lt_0947:	.ascii	"prflidty_sf[\0"
.balign 4
_Lt_094D:	.ascii	"prflhp_sf[\0"
.balign 4
_Lt_0953:	.ascii	"prflstr_sf[\0"
.balign 4
_Lt_0959:	.ascii	"prfless_sf[\0"
.balign 4
_Lt_095F:	.ascii	"prflspd_sf[\0"
.balign 4
_Lt_0965:	.ascii	"prflarmr_sf[\0"
.balign 4
_Lt_096B:	.ascii	"prflexp_sf[\0"
.balign 4
_Lt_0971:	.ascii	"prflvalu_sf[\0"
.balign 4
_Lt_0977:	.ascii	"prflpirc_sf[\0"
.balign 4
_Lt_097D:	.ascii	"prflchck_sf[\0"
.balign 4
_Lt_0983:	.ascii	"prfllv_sf[\0"
.balign 4
_Lt_0989:	.ascii	"prflhpmax_sf[\0"
.balign 4
_Lt_098F:	.ascii	"prflstrmax_sf[\0"
.balign 4
_Lt_0995:	.ascii	"prflessmax_sf[\0"
.balign 4
_Lt_099B:	.ascii	"prflessspd_sf[\0"
.balign 4
_Lt_09A1:	.ascii	"prflevad_sf[\0"
.balign 4
_Lt_09A7:	.ascii	"prflblnk_sf[\0"
.balign 4
_Lt_09B0:	.ascii	"Saving Map \"\0"
.balign 4
_Lt_0A90:	.ascii	".\\save\\\0"
.balign 4
_Lt_0A91:	.ascii	".dat\0"

.section .dtors
.int __GLOBAL__D
