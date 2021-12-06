#inclib "pages00"
#include once "fbgfx.bi"
#include once "inc\fbpng.bi"
#include once "inc\png_image.bi"
    
    declare sub pages_buffer_ini(pages_buffer() as fb.image ptr, Screen_Width as integer, Screen_Height as integer)
    declare sub pages_font_load (pages_font() as fb.image ptr, FontIndex as integer, Switch as integer, Filename as string)
    declare sub pages_text (pages_buffer() as fb.image ptr, pages_font() as fb.image ptr, PageIndex as integer, pages_glyph() as integer, X as integer, Y as integer, Value as string)
    declare sub pages_cls(pages_buffer() as fb.image ptr, PageIndex as integer)
    declare sub pages_copy(pages_buffer() as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    declare sub pages_overlay(pages_buffer() as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    declare sub pages_flip(pages_buffer() as fb.image ptr, PageIndex as integer, Display_Width as integer, Display_Height as integer)
    declare sub pages_line(pages_buffer() as fb.image ptr, PageIndex as integer, X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, ColorMask as uinteger, TransparencyMask as uinteger, Gfx_Method as integer)
    declare sub pages_pset(pages_buffer() as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorMask as uinteger, TransparencyMask as uinteger)
    declare sub pages_put(pages_buffer() as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorGraphic as fb.image ptr, TransparencyGraphic as fb.image ptr)
    declare function pages_MaskEffect (SRC as uinteger, DST as uinteger, PARM as any ptr) as uinteger   

    redim shared as integer pages_glyph(&H00 to &HFF, 0 to 1)
    redim shared as fb.image ptr pages_font(&H00 to &HFF), pages_buffer(0 to 15, 0 to 1)

    dim shared as integer pages_buffer_focus

    const pages_flag_and=&HFFFFFFFF, pages_flag_or=&H00000000
    const pages_buffer_visible=0, pages_buffer_draw=1
    const pages_flag_default=0, pages_flag_b=1, pages_flag_bf=2
    const pages_font_default=0
    const pages_font_flag_load=1, pages_font_flag_destroy=2

