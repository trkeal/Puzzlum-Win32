'Advanced freeBASIC Composite Layer Video Routines 0x001
'Created August 15th - September 15th 2009 by Timothy Robert Keal alias jargon
'Released under the Gnu Public License 2.0
'
'http://puzzlum.retromachineshop.com/
'irc://chat.freenode.net/puzzlum
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html
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
sub clv_buffer_ini(clv_buffer() as fb.image ptr, Screen_Width as integer, Screen_Height as integer)
    dim as integer PageIndex
    for PageIndex=lbound(clv_buffer,1) to ubound(clv_buffer,1)
        clv_buffer(PageIndex,0)=imagecreate(Screen_Width,Screen_Height)
        clv_buffer(PageIndex,1)=imagecreate(Screen_Width,Screen_Height)
        clv_buffer_cls clv_buffer(), PageIndex
    next
end sub
sub clv_font_load (clv_font() as fb.image ptr, FontIndex as integer, Switch as integer, Filename as string)
    if Switch and clv_font_flag_destroy then
        png_destroy clv_font(FontIndex)
    end if
    if Switch and clv_font_flag_load then
        clv_font(FontIndex)=png_load(Filename)
    end if
end sub
sub clv_draw_text (clv_buffer() as fb.image ptr, clv_font() as fb.image ptr, PageIndex as integer, clv_glyph() as integer, X as integer, Y as integer, Value as string)
    dim as integer Glyph, Px, Py, Offset, Glyph_X, Glyph_Y
    dim as fb.image ptr ColorGraphic, TransparencyGraphic
    dim as uinteger Pc
    ColorGraphic=imagecreate(8,8)
    TransparencyGraphic=imagecreate(8,8)
    line ColorGraphic,(0,0)-(7,7),rgb(0,0,0),bf
    line TransparencyGraphic,(0,0)-(7,7),rgb(255,255,255),bf
    for Offset = 0 to len(Value)-1
        Glyph=clv_glyph(asc(mid(Value,Offset+1,1)),1)
        'Glyph=asc(mid(Value,Offset+1,1))
        Glyph_X=(Glyph and 15) shl 3
        Glyph_Y=(Glyph shr 4) shl 3
        put ColorGraphic,(0,0),clv_font(clv_glyph(Glyph,0)),(Glyph_X,Glyph_Y)-(Glyph_X+7,Glyph_Y+7),pset
        'put ColorGraphic,(0,0),clv_font(clv_font_default),(Glyph_X,Glyph_Y)-(Glyph_X+7,Glyph_Y+7),pset
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
        clv_draw_image clv_buffer(), PageIndex, Px, Py, ColorGraphic, TransparencyGraphic
        'put clv_buffer(PageIndex,1),(Px,Py),clv_font(clv_font_default),(Glyph_X,Glyph_Y)-(Glyph_X+7,Glyph_Y+7),pset
        'clv_draw_line clv_buffer(), PageIndex, Px, Py, Px+7, Py+7, rgb(255,0,0), rgb(0,0,0), clv_flag_b
    next
    imagedestroy ColorGraphic
    imagedestroy TransparencyGraphic
end sub
sub clv_buffer_cls(clv_buffer() as fb.image ptr, PageIndex as integer)
    line clv_buffer(PageIndex,0),(0,0)-(clv_buffer(PageIndex,0)->width-1,clv_buffer(PageIndex,0)->height-1),rgb(255,255,255),bf
    line clv_buffer(PageIndex,1),(0,0)-(clv_buffer(PageIndex,1)->width-1,clv_buffer(PageIndex,1)->height-1),rgb(0,0,0),bf
end sub
sub clv_buffer_copy(clv_buffer() as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    put clv_buffer(DestIndex,0),(0,0),clv_buffer(SrcIndex,0),pset
    put clv_buffer(DestIndex,1),(0,0),clv_buffer(SrcIndex,1),pset
end sub
sub clv_buffer_overlay(clv_buffer() as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    'transparency layer
    put clv_buffer(DestIndex,0),(0,0),clv_buffer(SrcIndex,0),custom,@clv_filter_mask,clv_flag_and
    'color layer
    put clv_buffer(DestIndex,1),(0,0),clv_buffer(SrcIndex,0),custom,@clv_filter_mask,clv_flag_and
    put clv_buffer(DestIndex,1),(0,0),clv_buffer(SrcIndex,1),custom,@clv_filter_mask,clv_flag_or
end sub
sub clv_buffer_flip(clv_buffer() as fb.image ptr, PageIndex as integer, Display_Width as integer, Display_Height as integer)
    dim as integer X, Y, Px, Py
    dim as fb.image ptr Buffer
    Buffer=imagecreate(Display_Width, clv_buffer(PageIndex,1)->height)
    for Px=0 to Buffer->width-1
        X=fix(Px*clv_buffer(PageIndex,0)->width/Buffer->width)
        put Buffer,(Px,0),clv_buffer(PageIndex,1),(X,0)-(X,clv_buffer(PageIndex,1)->height-1),pset
    next
    for Py=0 to Display_height-1' step 2
        Y=fix(Py*clv_buffer(PageIndex,0)->height/Display_Height)
        put (0,Py),Buffer,(0,Y)-(Buffer->width-1,Y),pset
    next
    imagedestroy Buffer
end sub
sub clv_draw_line(clv_buffer() as fb.image ptr, PageIndex as integer, X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, ColorMask as uinteger, TransparencyMask as uinteger, clv_flag_method as integer)
    select case clv_flag_method
    case clv_flag_default
        line clv_buffer(PageIndex,0),(X1,Y1)-(X2,Y2),TransparencyMask
        line clv_buffer(PageIndex,1),(X1,Y1)-(X2,Y2),ColorMask
    case clv_flag_b
        line clv_buffer(PageIndex,0),(X1,Y1)-(X2,Y2),TransparencyMask,b
        line clv_buffer(PageIndex,1),(X1,Y1)-(X2,Y2),ColorMask,b
    case clv_flag_bf
        line clv_buffer(PageIndex,0),(X1,Y1)-(X2,Y2),TransparencyMask,bf
        line clv_buffer(PageIndex,1),(X1,Y1)-(X2,Y2),ColorMask,bf
    end select
end sub
sub clv_draw_circle(clv_buffer() as fb.image ptr, PageIndex as integer, X1 as double, Y1 as double, X2 as double, Y2 as double, A1 as double, A2 as double, R1 as double, R2 as double, ColorMask as uinteger, TransparencyMask as uinteger)
    dim as fb.image ptr ColorGraphic, TransparencyGraphic
    ColorGraphic=imagecreate(clv_buffer(PageIndex,0)->width,clv_buffer(PageIndex,0)->height)
    TransparencyGraphic=imagecreate(clv_buffer(PageIndex,1)->width,clv_buffer(PageIndex,1)->height)
    clv_draw_primitive_circle ColorGraphic, X1, Y1, X2, Y2, A1, A2, R1, R2, ColorMask
    clv_draw_primitive_circle TransparencyGraphic, X1, Y1, X2, Y2, A1, A2, R1, R2, TransparencyMask
    clv_draw_image clv_buffer(), PageIndex, X1, Y1, ColorGraphic, TransparencyGraphic
    imagedestroy(ColorGraphic)
    imagedestroy(TransparencyGraphic)
end sub
sub clv_draw_pixel(clv_buffer() as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorMask as uinteger, TransparencyMask as uinteger)
    pset clv_buffer(PageIndex,0),(X,Y),TransparencyMask
    pset clv_buffer(PageIndex,1),(X,Y),ColorMask
end sub
sub clv_draw_image(clv_buffer() as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorGraphic as fb.image ptr, TransparencyGraphic as fb.image ptr)
    'transparency layer
    put clv_buffer(PageIndex,0),(X,Y),TransparencyGraphic,custom,@clv_filter_mask,clv_flag_and
    'color layer
    put clv_buffer(PageIndex,1),(X,Y),TransparencyGraphic,custom,@clv_filter_mask,clv_flag_and
    put clv_buffer(PageIndex,1),(X,Y),ColorGraphic,custom,@clv_filter_mask,clv_flag_or
end sub
function clv_filter_mask (SRC as uinteger, DST as uinteger, PARM as any ptr) as uinteger   
    dim as uinteger power=0
    dim as uinteger ret32=0, ret1=0
    dim as uinteger src32=0, src1=0
    dim as uinteger dst32=0, dst1=0
    dim as uinteger parm32=0, parm1=0
    dim as uinteger flag_and_32=0, flag_and_1=0
    dim as uinteger flag_or_32=0, flag_or_1=0
    flag_and_32=clv_flag_and
    flag_or_32=clv_flag_or
    src32=SRC
    dst32=DST
    parm32=cast(uinteger,PARM)
    while power<32
        src1=src32 and 1
        dst1=dst32 and 1
        parm1=parm32 and 1
        flag_and_1=flag_and_32 and 1
        flag_or_1=flag_or_32 and 1
        src32=src32 shr 1
        dst32=dst32 shr 1
        parm32=parm32 shr 1
        flag_and_32=flag_and_32 shr 1
        flag_or_32=flag_or_32 shr 1
        ret1=dst1
        if parm1=flag_and_1 then
            ret1=src1 and ret1
        endif
        if parm1=flag_or_1 then
            ret1=src1 or ret1
        endif
        ret32=ret32 shl 1
        ret32=ret32 or ret1
        power=power+1
    wend
    return ret32
end function
sub clv_draw_primitive_circle(Buffer as fb.image ptr, X1 as double, Y1 as double, X2 as double, Y2 as double, A1 as double, A2 as double, R1 as double, R2 as double, argb32 as uinteger)
    dim as double X, Y, RX, RY, CX, CY, X0, Y0, R, A
    if X1 > X2 then swap X1, X2
    if Y1 > Y2 then swap Y1, Y2
    CX = (X2 + X1) / 2
    CY = (Y2 + Y1) / 2
    RX = (X2 - X1) / 2
    RY = (Y2 - Y1) / 2
    X1=fix(CX-RX)-1
    X2=fix(CX+RX)+1
    Y1=fix(CX-RY)-1
    Y2=fix(CX+RY)+1
    if X1<0 then
        X1=0
    elseif X1>Buffer->width then
        X1=Buffer->width
    endif
    if X2<0 then
        X2=-1
    elseif X2>Buffer->width then
        X2=Buffer->width-1
    endif
    if Y1<0 then
        Y1=0
    elseif Y1>Buffer->height then
        Y1=Buffer->height
    endif
    if Y2<0 then
        Y2=-1
    elseif Y2>Buffer->height then
        Y2=Buffer->height-1
    endif
    for Y = Y1 to Y2
        for X = X1 to X2
            X0 = (X - CX) / RX
            Y0 = (Y - CY) / RY
            A = clv_math_vector2decimal(0, 0, X0, Y0)
            if (A1 < A2 and A >= A1 and A <= A2) or (A1 >= A2 and (A >= A1 or A <= A2)) then
                R = X0 * X0 + Y0 * Y0
                if R > 0 then R = sqr(R)
                if (R1 < R2 and R >= R1 and R <= R2) or (R1 >= R2 and (R >= R1 or R <= R2)) then
                    pset Buffer, (X, Y), argb32
                endif
            endif
        next
    next
end sub
function clv_math_vector2decimal (X1 as double, Y1 as double, X2 as double, Y2 as double) as double
    dim as double X3,Y3,R1a,R1b,R2a,R2b
    X3 = X2 - X1
    Y3 = Y2 - Y1
    if Y3 <> 0 then
        R1a = (X3 / Y3)
        if R1a > 0 then R1a = R1a ^ (-1)
        R1b = atn(R1a) / (clv_math_Pi / 2) * .25
        if R1b < 0 then R1b = abs(R1b) + .25
        if Y3 > 0 then R1b = R1b + .5
    endif
    select case X3
    case is < 0
        if Y3 = 0 then R1b = 0
    case 0
        select case Y3
        case is < 0
            R1b = .25
        case is > 0
            R1b = .75
        end select
    case is > 0
        if Y3 = 0 then R1b = .5
    end select
    if X3 <> 0 then
        R2a = (Y3 / X3)
        if R2a > 0 then R2a = R2a ^ (-1)
        R2b = atn(R2a) / (clv_math_Pi / 2) * .25
        select case Y3
        case is <0
            select case R2b
            case is < 0
                R2b = ABS(R2b)
            case is > 0
                R2b = R2b + .75
            end select
        case is > 0
            select case R2b
            case is < 0
                R2b = ABS(R2b) + .5
            case is > 0
                R2b = ABS(R2b) + .25
            end select
        end select
    endif
    select case X3
    case is < 0
        if Y3 = 0 then R2b = 1
    case 0
        select case Y3
        case is < 0
            R2b = .75
        case is > 0
            R2b = .25
        end select
    case is > 0
        if Y3 = 0 then R2b = .5
    end select
    R2b = 1 - R2b
    return (R1b + R2b) / 2
end function
