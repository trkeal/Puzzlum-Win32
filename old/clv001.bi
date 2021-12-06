'Advanced freeBASIC Composite Layer Video Routines 0x001
'Created August 15th - September 15th 2009 by Timothy Robert Keal alias jargon
'Released under the Gnu Public License 2.0
'
'http://puzzlum.retromachineshop.com/
'irc://chat.freenode.net/puzzlum
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html
#inclib "clv001"
#include once "fbgfx.bi"
#include once "inc\fbpng.bi"
#include once "inc\png_image.bi"
    declare sub clv_buffer_ini(clv_buffer() as fb.image ptr, Screen_Width as integer, Screen_Height as integer)
    declare sub clv_font_load (clv_font() as fb.image ptr, FontIndex as integer, Switch as integer, Filename as string)
    declare sub clv_draw_text (clv_buffer() as fb.image ptr, clv_font() as fb.image ptr, PageIndex as integer, clv_glyph() as integer, X as integer, Y as integer, Value as string)
    declare sub clv_buffer_cls(clv_buffer() as fb.image ptr, PageIndex as integer)
    declare sub clv_buffer_copy(clv_buffer() as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    declare sub clv_buffer_overlay(clv_buffer() as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    declare sub clv_buffer_flip(clv_buffer() as fb.image ptr, PageIndex as integer, Display_Width as integer, Display_Height as integer)
    declare sub clv_draw_line(clv_buffer() as fb.image ptr, PageIndex as integer, X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, ColorMask as uinteger, TransparencyMask as uinteger, Gfx_Method as integer)
    declare sub clv_draw_pixel(clv_buffer() as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorMask as uinteger, TransparencyMask as uinteger)
    declare sub clv_draw_image(clv_buffer() as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorGraphic as fb.image ptr, TransparencyGraphic as fb.image ptr)
    declare function clv_filter_mask (SRC as uinteger, DST as uinteger, PARM as any ptr) as uinteger   
    declare sub clv_draw_primitive_circle(Buffer as fb.image ptr, X1 as double, Y1 as double, X2 as double, Y2 as double, A1 as double, A2 as double, R1 as double, R2 as double, argb32 as uinteger)
    declare function clv_math_vector2decimal (X1 as double, Y1 as double, X2 as double, Y2 as double) as double
    redim shared as integer clv_glyph(&H00 to &HFF, 0 to 1)
    redim shared as fb.image ptr clv_font(&H00 to &HFF), clv_buffer(0 to 15, 0 to 1)
    dim shared as integer clv_buffer_focus
    const clv_math_Pi = 3.141592653589793#
    const clv_flag_and=&HFFFFFFFF, clv_flag_or=&H00000000
    const clv_buffer_visible=0, clv_buffer_draw=1
    const clv_flag_default=0, clv_flag_b=1, clv_flag_bf=2
    const clv_font_default=0
    const clv_font_flag_load=1, clv_font_flag_destroy=2
