
'clv.bi
'Advanced freeBASIC Composite Layer Video Routines (CLV)
'
'CLV is Copyright (C) 2009, 2021 Timothy Robert Keal
'Released under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )
'
'http://puzzlum.com/
'mailto:trkeal@gmail.com
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

'=====
	#ifndef clv_lib
	#inclib "clv"
	#endif

	#include once ".\inc\VGA_Table.bi"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"
	#include once ".\inc\central-debug.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"
	
	const clv_math_Pi = 4 * ATN(1)
    
	dim shared as const ulong clv_flag_and=0, clv_flag_or=1	

	const clv_buffer_and=0, clv_buffer_or=1
    const clv_buffer_visible=0, clv_buffer_draw=1
    const clv_flag_default=0, clv_flag_b=1, clv_flag_bf=2
	const clv_font_default=0
    const clv_font_flag_load=1, clv_font_flag_destroy=2

    dim shared as integer clv_buffer_focus

	clv_buffer_focus=clv_buffer_visible

	redim shared clv_buffer( 0 to 16, 0 to 1 ) as fb.image ptr

	redim shared as integer clv_glyph(&H00 to &HFF, 0 to 1)
    redim shared as fb.image ptr clv_font(&H00 to &HFF), clv_buffer(0 to 15, 0 to 1)

	declare sub clv_buffer_ini_all( clv_buffer(any,any) as fb.image ptr)

    declare sub clv_buffer_ini(clv_buffer(any,any) as fb.image ptr, Screen_Width as integer, Screen_Height as integer)

    declare sub clv_font_load (clv_font(any) as fb.image ptr, FontIndex as integer, Switch as integer, Filename as string)

    declare sub clv_draw_text (clv_buffer(any,any) as fb.image ptr, clv_font(any) as fb.image ptr, PageIndex as integer, clv_glyph(any,any) as integer, X as integer, Y as integer, Value as string)

    declare sub clv_buffer_cls(clv_buffer(any,any) as fb.image ptr, PageIndex as integer)
    
	declare sub clv_buffer_copy(clv_buffer(any,any) as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    
	declare sub clv_buffer_overlay(clv_buffer(any,any) as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    
	declare sub clv_buffer_flip(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, Display_Width as integer, Display_Height as integer)
    
	declare sub clv_draw_line(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, ColorMask as ulong, TransparencyMask as ulong, Gfx_Method as integer)
    
	declare sub clv_draw_pixel(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorMask as ulong, TransparencyMask as ulong)
    
	declare sub clv_draw_image(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorGraphic as fb.image ptr, TransparencyGraphic as fb.image ptr)
    
	declare function clv_filter_mask( byval SRC as ulong, byval DST as ulong, byval PARM as any ptr) as ulong   
    
	declare sub clv_draw_primitive_circle(Buffer as fb.image ptr, X1 as double, Y1 as double, X2 as double, Y2 as double, A1 as double, A2 as double, R1 as double, R2 as double, argb32_inner as ulong, argb32_outer as ulong, argb32_clockwise as ulong, argb32_counterclockwise as ulong)
    
	declare sub clv_draw_primitive_triangle(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, X1 as double, Y1 as double, X2 as double, Y2 as double, X3 as double, Y3 as double, ColorMask as ulong, TransparencyMask as ulong, Center_X as double, Center_Y as double)
    
	declare function clv_math_vector2decimal (X1 as double, Y1 as double, X2 as double, Y2 as double) as double
    
	declare function clv_argb32_mix(argb32(any) as ulong, weight(any) as double) as ulong
	
	declare function clv_VGA( index as integer = 0 ) as integer
