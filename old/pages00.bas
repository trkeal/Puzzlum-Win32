
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

sub pages_buffer_ini(pages_buffer() as fb.image ptr, Screen_Width as integer, Screen_Height as integer)
    dim as integer PageIndex
    for PageIndex=lbound(pages_buffer,1) to ubound(pages_buffer,1)
        pages_buffer(PageIndex,0)=imagecreate(Screen_Width,Screen_Height)
        pages_buffer(PageIndex,1)=imagecreate(Screen_Width,Screen_Height)
        pages_cls pages_buffer(), PageIndex
    next
end sub

sub pages_font_load (pages_font() as fb.image ptr, FontIndex as integer, Switch as integer, Filename as string)
    if Switch and pages_font_flag_destroy then
        png_destroy pages_font(FontIndex)
    end if
    if Switch and pages_font_flag_load then
        pages_font(FontIndex)=png_load(Filename)
    end if
end sub

sub pages_text (pages_buffer() as fb.image ptr, pages_font() as fb.image ptr, PageIndex as integer, pages_glyph() as integer, X as integer, Y as integer, Value as string)
    dim as integer Glyph, Px, Py, Offset, Glyph_X, Glyph_Y
    dim as fb.image ptr ColorGraphic, TransparencyGraphic
    dim as uinteger Pc

    ColorGraphic=imagecreate(8,8)
    TransparencyGraphic=imagecreate(8,8)

    line ColorGraphic,(0,0)-(7,7),rgb(0,0,0),bf
    line TransparencyGraphic,(0,0)-(7,7),rgb(255,255,255),bf
    
    for Offset = 0 to len(Value)-1
        Glyph=pages_glyph(asc(mid(Value,Offset+1,1)),1)
        'Glyph=asc(mid(Value,Offset+1,1))
        Glyph_X=(Glyph and 15) shl 3
        Glyph_Y=(Glyph shr 4) shl 3
        put ColorGraphic,(0,0),pages_font(pages_glyph(Glyph,0)),(Glyph_X,Glyph_Y)-(Glyph_X+7,Glyph_Y+7),pset
        'put ColorGraphic,(0,0),pages_font(pages_font_default),(Glyph_X,Glyph_Y)-(Glyph_X+7,Glyph_Y+7),pset
        for Py=0 to 7
            for Px=0 to 7
                Pc=point(Px,Py,ColorGraphic)
                if (Pc and &HFFFFFF)=0 then
                    pset TransparencyGraphic,(Px,Py),rgb(255,255,255)
                else
                    pset TransparencyGraphic,(Px,Py),rgb(0,0,0)                    
                end if                
            next
        next
        Px=X+(Offset shl 3)
        Py=Y
        pages_put pages_buffer(), PageIndex, Px, Py, ColorGraphic, TransparencyGraphic
        'put pages_buffer(PageIndex,1),(Px,Py),pages_font(pages_font_default),(Glyph_X,Glyph_Y)-(Glyph_X+7,Glyph_Y+7),pset
        'pages_line pages_buffer(), PageIndex, Px, Py, Px+7, Py+7, rgb(255,0,0), rgb(0,0,0), pages_flag_b
    next
    imagedestroy ColorGraphic
    imagedestroy TransparencyGraphic
end sub

sub pages_cls(pages_buffer() as fb.image ptr, PageIndex as integer)
    line pages_buffer(PageIndex,0),(0,0)-(pages_buffer(PageIndex,0)->width-1,pages_buffer(PageIndex,0)->height-1),rgb(255,255,255),bf
    line pages_buffer(PageIndex,1),(0,0)-(pages_buffer(PageIndex,1)->width-1,pages_buffer(PageIndex,1)->height-1),rgb(0,0,0),bf
end sub

sub pages_copy(pages_buffer() as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    put pages_buffer(DestIndex,0),(0,0),pages_buffer(SrcIndex,0),pset
    put pages_buffer(DestIndex,1),(0,0),pages_buffer(SrcIndex,1),pset
end sub

sub pages_overlay(pages_buffer() as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    'transparency layer
    put pages_buffer(DestIndex,0),(0,0),pages_buffer(SrcIndex,0),custom,@pages_MaskEffect,pages_flag_and

    'color layer
    put pages_buffer(DestIndex,1),(0,0),pages_buffer(SrcIndex,0),custom,@pages_MaskEffect,pages_flag_and
    put pages_buffer(DestIndex,1),(0,0),pages_buffer(SrcIndex,1),custom,@pages_MaskEffect,pages_flag_or
end sub

sub pages_flip(pages_buffer() as fb.image ptr, PageIndex as integer, Display_Width as integer, Display_Height as integer)
    dim as integer X, Y, Px, Py
    dim as fb.image ptr Buffer
    Buffer=imagecreate(Display_Width, pages_buffer(PageIndex,1)->height)
    for Px=0 to Buffer->width-1
        X=fix(Px*pages_buffer(PageIndex,0)->width/Buffer->width)
        put Buffer,(Px,0),pages_buffer(PageIndex,1),(X,0)-(X,pages_buffer(PageIndex,1)->height-1),pset
    next
    for Py=0 to Display_height-1' step 2
        Y=fix(Py*pages_buffer(PageIndex,0)->height/Display_Height)
        put (0,Py),Buffer,(0,Y)-(Buffer->width-1,Y),pset
    next
    imagedestroy Buffer
end sub

sub pages_line(pages_buffer() as fb.image ptr, PageIndex as integer, X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, ColorMask as uinteger, TransparencyMask as uinteger, pages_flag_method as integer)
    select case pages_flag_method
    case pages_flag_default
        line pages_buffer(PageIndex,0),(X1,Y1)-(X2,Y2),TransparencyMask
        line pages_buffer(PageIndex,1),(X1,Y1)-(X2,Y2),ColorMask
    case pages_flag_b
        line pages_buffer(PageIndex,0),(X1,Y1)-(X2,Y2),TransparencyMask,b
        line pages_buffer(PageIndex,1),(X1,Y1)-(X2,Y2),ColorMask,b
    case pages_flag_bf
        line pages_buffer(PageIndex,0),(X1,Y1)-(X2,Y2),TransparencyMask,bf
        line pages_buffer(PageIndex,1),(X1,Y1)-(X2,Y2),ColorMask,bf
    end select
end sub

sub pages_pset(pages_buffer() as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorMask as uinteger, TransparencyMask as uinteger)
    pset pages_buffer(PageIndex,0),(X,Y),TransparencyMask
    pset pages_buffer(PageIndex,1),(X,Y),ColorMask
end sub

sub pages_put(pages_buffer() as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorGraphic as fb.image ptr, TransparencyGraphic as fb.image ptr)
    'transparency layer
    put pages_buffer(PageIndex,0),(X,Y),TransparencyGraphic,custom,@pages_MaskEffect,pages_flag_and
    
    'color layer
    put pages_buffer(PageIndex,1),(X,Y),TransparencyGraphic,custom,@pages_MaskEffect,pages_flag_and
    put pages_buffer(PageIndex,1),(X,Y),ColorGraphic,custom,@pages_MaskEffect,pages_flag_or
end sub

function pages_MaskEffect (SRC as uinteger, DST as uinteger, PARM as any ptr) as uinteger   
    select case (cast(uinteger,PARM) shr 24) and &HFF
    case (pages_flag_and shr 24) and &HFF
        return SRC and DST
    case (pages_flag_or shr 24) and &HFF
        return SRC or DST
    end select
end function
