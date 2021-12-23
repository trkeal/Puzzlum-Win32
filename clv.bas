#define clv_lib

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
	
	#include once ".\inc\clv.bi"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"
	#include once ".\inc\central-debug.bi"

	#include once ".\inc\VGA_Table.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

sub clv_buffer_ini(clv_buffer(any,any) as fb.image ptr, Screen_Width as integer, Screen_Height as integer)
    
	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "buffer_ini"
		Central_Close_Out target
	#endif

	dim as integer PageIndex
    for PageIndex = lbound(clv_buffer, 1) to ubound(clv_buffer, 1)
        clv_buffer(PageIndex, clv_buffer_and) = imagecreate(Screen_Width, Screen_Height)
        clv_buffer(PageIndex, clv_buffer_or) = imagecreate(Screen_Width, Screen_Height)
        clv_buffer_cls clv_buffer(), PageIndex
    next
	
end sub

sub clv_font_load (clv_font(any) as fb.image ptr, FontIndex as integer, Switch as integer, Filename as string)


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "font_load"
		Central_Close_Out target
	#endif

    if Switch and clv_font_flag_destroy then
		imagedestroy clv_font(FontIndex)
    end if
    if Switch and clv_font_flag_load then
        bload(Filename, clv_font(FontIndex))
    end if

end sub

sub clv_draw_text (clv_buffer(any,any) as fb.image ptr, clv_font(any) as fb.image ptr, PageIndex as integer, clv_glyph(any,any) as integer, X as integer, Y as integer, Value as string)


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "draw_text"
		Central_Close_Out target
	#endif

    dim as integer Glyph, Px, Py, Offset, Glyph_X, Glyph_Y
    dim as fb.image ptr ColorGraphic, TransparencyGraphic
    dim as ulong Pc
    ColorGraphic = imagecreate(8, 8)
    TransparencyGraphic = imagecreate(8, 8)
    line ColorGraphic, (0, 0) - (7, 7), rgb(0, 0, 0), bf
    line TransparencyGraphic, (0, 0) - (7, 7), rgb(255, 255, 255), bf
    for Offset = 0 to len(Value)-1
        Glyph = clv_glyph(asc(mid(Value, Offset + 1, 1)), 1)
        Glyph_X = (Glyph and 15) shl 3
        Glyph_Y = (Glyph shr 4) shl 3
        put ColorGraphic, (0, 0), clv_font(clv_glyph(Glyph, 0)), (Glyph_X, Glyph_Y)-(Glyph_X + 7,Glyph_Y + 7), pset
        for Py = 0 to 7
            for Px = 0 to 7
                Pc = point(Px, Py, ColorGraphic)
                if (Pc and &HFFFFFF)=0 then
                    pset TransparencyGraphic, (Px, Py), rgb(255, 255, 255)
                else
                    pset TransparencyGraphic, (Px, Py), rgb(0, 0, 0)
                end if                
            next
        next
        Px=X+(Offset shl 3)
        Py=Y
        clv_draw_image clv_buffer(), PageIndex, Px, Py, ColorGraphic, TransparencyGraphic
    next
    imagedestroy ColorGraphic
    imagedestroy TransparencyGraphic

end sub

sub clv_buffer_cls(clv_buffer(any,any) as fb.image ptr, PageIndex as integer)


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "buffer_cls"
		Central_Close_Out target
	#endif
		
    line clv_buffer(PageIndex, clv_buffer_and), (0, 0) - (clv_buffer(PageIndex, clv_buffer_and) -> width - 1, clv_buffer(PageIndex, clv_buffer_and) -> height - 1), rgb(255, 255, 255), bf
    line clv_buffer(PageIndex, clv_buffer_or), (0, 0) - (clv_buffer(PageIndex, clv_buffer_or) -> width - 1, clv_buffer(PageIndex, clv_buffer_or) -> height - 1), rgb(0, 0, 0), bf

end sub

sub clv_buffer_copy(clv_buffer(any,any) as fb.image ptr, SrcIndex as integer, DestIndex as integer)


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "buffer_copy"
		Central_Close_Out target
	#endif
	
    put clv_buffer(DestIndex, clv_buffer_and), (0, 0), clv_buffer(SrcIndex, clv_buffer_and), pset
    put clv_buffer(DestIndex, clv_buffer_or), (0, 0), clv_buffer(SrcIndex, clv_buffer_or), pset

end sub

sub clv_buffer_overlay(clv_buffer(any,any) as fb.image ptr, SrcIndex as integer, DestIndex as integer)
    'transparency layer


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "buffer_overlay"
		Central_Close_Out target
	#endif
		
    put clv_buffer(DestIndex, clv_buffer_and), (0, 0), clv_buffer(SrcIndex, clv_buffer_and), custom, @clv_filter_mask,  cast( any ptr, @clv_flag_and )
    'color layer
    put clv_buffer(DestIndex, clv_buffer_or), (0, 0), clv_buffer(SrcIndex, clv_buffer_and), custom, @clv_filter_mask,  cast( any ptr, @clv_flag_and )
    put clv_buffer(DestIndex, clv_buffer_or), (0, 0), clv_buffer(SrcIndex, clv_buffer_or), custom, @clv_filter_mask,  cast( any ptr, @clv_flag_or )

end sub

sub clv_buffer_flip(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, Display_Width as integer, Display_Height as integer)


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "buffer_flip"
		Central_Close_Out target
	#endif
	
    dim as integer X, Y, Px, Py
    dim as fb.image ptr Buffer
    Buffer = imagecreate(Display_Width, clv_buffer(PageIndex, clv_buffer_or) -> height)
    for Px = 0 to Buffer -> width - 1
        X = fix(Px * clv_buffer(PageIndex, clv_buffer_and) -> width / Buffer -> width)
        put Buffer, (Px, 0), clv_buffer(PageIndex, clv_buffer_or), (X, 0) - (X, clv_buffer(PageIndex, clv_buffer_or) -> height - 1), pset
    next
    for Py = 0 to Display_height - 1
        Y = fix(Py * clv_buffer(PageIndex, clv_buffer_and) -> height / Display_Height)
        put (0, Py), Buffer, (0,Y) - (Buffer -> width - 1, Y), pset
    next
    imagedestroy Buffer

end sub

sub clv_draw_line(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, ColorMask as ulong, TransparencyMask as ulong, clv_flag_method as integer)

	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "draw_line"
		Central_Close_Out target
	#endif
		
    select case clv_flag_method
    case clv_flag_default
        line clv_buffer(PageIndex, clv_buffer_and), (X1, Y1) - (X2, Y2), TransparencyMask
        line clv_buffer(PageIndex, clv_buffer_or), (X1, Y1) - (X2, Y2), ColorMask
    case clv_flag_b
        line clv_buffer(PageIndex, clv_buffer_and), (X1, Y1) - (X2, Y2), TransparencyMask, b
        line clv_buffer(PageIndex, clv_buffer_or), (X1, Y1) - (X2, Y2), ColorMask, b
    case clv_flag_bf
        line clv_buffer(PageIndex, clv_buffer_and), (X1, Y1) - (X2, Y2), TransparencyMask, bf
        line clv_buffer(PageIndex, clv_buffer_or), (X1, Y1) - (X2, Y2), ColorMask, bf
    end select
	
end sub

sub clv_draw_circle(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, X1 as double, Y1 as double, X2 as double, Y2 as double, A1 as double, A2 as double, R1 as double, R2 as double, ColorMask_inner as ulong, ColorMask_outer as ulong, ColorMask_clockwise as ulong, ColorMask_counterclockwise as ulong, TransparencyMask as ulong)

	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "draw_circle"
		Central_Close_Out target
	#endif
	
    dim as fb.image ptr ColorGraphic, TransparencyGraphic
    ColorGraphic = imagecreate(clv_buffer(PageIndex, clv_buffer_and) -> width, clv_buffer(PageIndex, clv_buffer_and) -> height)
    TransparencyGraphic = imagecreate(clv_buffer(PageIndex, clv_buffer_or) -> width, clv_buffer(PageIndex, clv_buffer_or) -> height)
    clv_draw_primitive_circle ColorGraphic, X1, Y1, X2, Y2, A1, A2, R1, R2, ColorMask_inner, ColorMask_outer, ColorMask_clockwise, ColorMask_counterclockwise
    clv_draw_primitive_circle TransparencyGraphic, X1, Y1, X2, Y2, A1, A2, R1, R2, TransparencyMask, TransparencyMask, TransparencyMask, TransparencyMask
    clv_draw_image clv_buffer(), PageIndex, X1, Y1, ColorGraphic, TransparencyGraphic
    imagedestroy(ColorGraphic)
    imagedestroy(TransparencyGraphic)

end sub

sub clv_draw_pixel(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorMask as ulong, TransparencyMask as ulong)


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "draw_pixel"
		Central_Close_Out target
	#endif
	
    pset clv_buffer(PageIndex, clv_buffer_and), (X, Y), TransparencyMask
    pset clv_buffer(PageIndex, clv_buffer_or), (X, Y), ColorMask
	
end sub

sub clv_draw_image(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, X as integer, Y as integer, ColorGraphic as fb.image ptr, TransparencyGraphic as fb.image ptr)


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "draw_image"
		Central_Close_Out target
	#endif
	
    'transparency layer
    put clv_buffer(PageIndex, clv_buffer_and), (X, Y), TransparencyGraphic, custom, @clv_filter_mask,  cast( any ptr, @clv_flag_and )
    'color layer
    put clv_buffer(PageIndex, clv_buffer_or), (X, Y), TransparencyGraphic, custom, @clv_filter_mask, cast( any ptr, @clv_flag_and )
    put clv_buffer(PageIndex, clv_buffer_or), (X, Y), ColorGraphic, custom, @clv_filter_mask, cast( any ptr, @clv_flag_or )
	
end sub

function clv_filter_mask( byval SRC as ulong, byval DST as ulong, byval PARM as any ptr) as ulong   


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "filter_mask"
		Central_Close_Out target
	#endif
	
	dim as ulong ptr parm32 = cast(ulong ptr, PARM)
    select case parm32
	case clv_flag_and
		clv_filter_mask = SRC and DST
	case clv_flag_or
		clv_filter_mask = SRC or DST
	end select
	
end function

sub clv_draw_primitive_circle(Buffer as fb.image ptr, X1 as double, Y1 as double, X2 as double, Y2 as double, A1 as double, A2 as double, R1 as double, R2 as double, argb32_inner as ulong, argb32_outer as ulong, argb32_clockwise as ulong, argb32_counterclockwise as ulong)


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "draw_primitive_circle"
		Central_Close_Out target
	#endif
	
    dim as ulong argb32(0 to 7), argb32mix(0 to 1)
    dim as double weight(0 to 7), weightmix(0 to 1)    
    dim as double X, Y, RX, RY, CX, CY, X0, Y0, R, A
    argb32(0) = argb32_inner
    argb32(1) = argb32_outer
    argb32(2) = argb32_clockwise
    argb32(3) = argb32_counterclockwise
    if X1 > X2 then swap X1, X2
    if Y1 > Y2 then swap Y1, Y2
    CX = (X2 + X1) / 2
    CY = (Y2 + Y1) / 2
    RX = (X2 - X1) / 2
    RY = (Y2 - Y1) / 2
    X1 = fix(CX - RX) - 1
    X2 = fix(CX + RX) + 1
    Y1 = fix(CX - RY) - 1
    Y2 = fix(CX + RY) + 1
    if X1 < 0 then
        X1 = 0
    elseif X1 > Buffer -> width then
        X1 = Buffer -> width
    endif
    if X2 < 0 then
        X2 = -1
    elseif X2 > Buffer -> width then
        X2 = Buffer -> width - 1
    endif
    if Y1 < 0 then
        Y1 = 0
    elseif Y1 > Buffer -> height then
        Y1 = Buffer -> height
    endif
    if Y2<0 then
        Y2 = -1
    elseif Y2 > Buffer -> height then
        Y2 = Buffer -> height - 1
    endif
    for Y = Y1 to Y2
        for X = X1 to X2
            X0 = (X - CX) / RX
            Y0 = (Y - CY) / RY
            A = clv_math_vector2decimal(0, 0, X0, Y0)
            if (A1 < A2 and A >= A1 and A <= A2) or (A1 >= A2 and (A >= A1 or A <= A2)) then
                if abs(A2 - A1) > 0 then
                    if (A1 < A2 and A >= A1 and A <= A2) then
                        weight(0) = abs(A2 - A) / abs(A2 - A1)
                        weight(1) = abs(A - A1) / abs(A2 - A1)
                    elseif(A1 >= A2 and (A >= A1 or A <= A2)) then
                        weight(0) = abs(A1 - A) / abs(A1 - A2)
                        weight(1) = abs(A - A2) / abs(A1 - A2)
                    endif
                else
                    weight(0) = 1
                    weight(1) = 1
                endif
                R = X0 * X0 + Y0 * Y0
                if R > 0 then R = sqr(R)
                if (R1 < R2 and R >= R1 and R <= R2) or (R1 >= R2 and (R >= R1 or R <= R2)) then
                    if abs(R2 - R1) > 0 then
                        if (R1 < R2 and R >= R1 and R <= R2) then
                            weight(2) = abs(R2 - R) / abs(R2 - R1)
                            weight(3) = abs(R - R1) / abs(R2 - R1)
                        elseif(R1 >= R2 and (R >= R1 or R <= R2)) then
                            weight(2) = abs(R1 - R) / abs(R1 - R2)
                            weight(3) = abs(R - R2) / abs(R1 - R2)
                        endif
                    else
                        weight(2) = 1
                        weight(3) = 1
                    endif
                    argb32mix(0)=argb32(0)
                    argb32mix(1)=argb32(1)
                    weightmix(0)=weight(0)
                    weightmix(1)=weight(1)
                    argb32(4)=clv_argb32_mix(argb32mix(), weightmix())
                    argb32mix(0)=argb32(2)
                    argb32mix(1)=argb32(3)
                    weightmix(0)=weight(2)
                    weightmix(1)=weight(3)
                    argb32(5)=clv_argb32_mix(argb32mix(), weightmix())
                    argb32mix(0)=argb32(4)
                    argb32mix(1)=argb32(5)
                    weightmix(0)=.5
                    weightmix(1)=.5
                    argb32(6)=clv_argb32_mix(argb32mix(), weightmix())
                    pset Buffer, (X, Y), argb32(6)
                endif
            endif
        next
    next
	
end sub

sub clv_draw_primitive_triangle(clv_buffer(any,any) as fb.image ptr, PageIndex as integer, X1 as double, Y1 as double, X2 as double, Y2 as double, X3 as double, Y3 as double, ColorMask as ulong, TransparencyMask as ulong, Center_X as double, Center_Y as double)


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "draw_primitive_triangle"
		Central_Close_Out target
	#endif

	dim as double Triv(0 to 3,0 to 1)
    Triv(0,0)=X1
    Triv(0,1)=Y1
    Triv(1,0)=X2
    Triv(1,1)=Y2
    Triv(2,0)=X3
    Triv(2,1)=Y3    
    dim as ulong temp=0 
    dim as ulong TrivCt=0
	dim as ulong Triv1=0
	dim as ulong Triv2=0
	dim as ulong Triv3=0
	dim as double TrivX1=0.0
	dim as double TrivY1=0.0
	dim as double TrivX2=0.0
	dim as double TrivY2=0.0
	dim as double TriX=0.0
	dim as double TriY=0.0
	dim as double TrivX=0.0
	dim as double TrivY=0.0
	dim as double TriX1=0.0
	dim as double TriY1=0.0
	dim as double TriX2=0.0
	dim as double TriY2=0.0
    for TrivCt=0 to 2
		Triv1=TrivCt
		Triv2=(Triv1+1) mod 3
		Triv3=(Triv2+1) mod 3
		if((Triv(Triv1,1)<=Triv(Triv2,1)) and (Triv(Triv1,1)<=Triv(Triv3,1))) then
            if(Triv(Triv2,1)>Triv(Triv3,1)) then
				swap Triv2,Triv3
			endif
            if(Triv(Triv2,1)>Triv(Triv1,1)) then
				TrivX1=Triv(Triv2,1)-Triv(Triv1,1)
				TrivY1=Triv(Triv2,0)-Triv(Triv1,0)
				TrivX2=Triv(Triv3,1)-Triv(Triv1,1)
				TrivY2=Triv(Triv3,0)-Triv(Triv1,0)
				for TriY=Triv(Triv1,1) to Triv(Triv2,1)
					TriX1=TrivY1/TrivX1*(TriY-Triv(Triv1,1))+Triv(Triv1,0)
					TriX2=TrivY2/Trivx2*(TriY-Triv(Triv1,1))+Triv(Triv1,0)
                    clv_draw_line clv_buffer(), PageIndex,Center_X+TriX1,Center_Y+TriY,Center_X+Trix2,Center_Y+TriY, ColorMask, TransparencyMask, clv_flag_bf
				next
            endif
			if(Triv(Triv3,1)>Triv(Triv2,1)) then
				TrivX1=Triv(Triv2,1)-Triv(Triv3,1)
				TrivY1=Triv(Triv2,0)-Triv(Triv3,0)
				TrivX2=Triv(Triv3,1)-Triv(Triv1,1)
				TrivY2=Triv(Triv3,0)-Triv(Triv1,0)
				for TriY=Triv(Triv2,1) to Triv(Triv3,1)
					TriX1=TrivY1/TrivX1*(TriY-Triv(Triv2,1))+Triv(Triv2,0)
					TriX2=TrivY2/Trivx2*(TriY-Triv(Triv1,1))+Triv(Triv1,0)
                    clv_draw_line clv_buffer(), PageIndex,Center_X+TriX1,Center_Y+TriY,Center_X+Trix2,Center_Y+TriY, ColorMask, TransparencyMask, clv_flag_bf
                next
            endif
		endif
    next
	
end sub

function clv_math_vector2decimal (X1 as double, Y1 as double, X2 as double, Y2 as double) as double


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "math_vector2decimal"
		Central_Close_Out target
	#endif

    dim as double X3, Y3, R1a, R1b, R2a, R2b
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

function clv_argb32_mix(argb32(any) as ulong, weight(any) as double) as ulong


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "argb32_mix"
		Central_Close_Out target
	#endif
		

    dim as ulong ret
    dim as double channel(0 to 1, 0 to 7)
    dim as integer n=0, c=0
    for n = lbound(argb32, 1) to ubound(argb32, 1)
        if n >= lbound(weight, 1) and n <= ubound(weight, 1) then
            channel(0, 4) = abs(weight(n))
            channel(1, 4) = channel(1, 4) + abs(weight(n))
        endif
        for c = 1 to 3
            channel(0, c) = (channel(0, c) + (argb32(n) shr (c shl 3)) and &hff) * channel(0, 4)
        next
    next    
    if channel(1, 4) > 0 then
        for c = 1 to 3
            channel(1, c) = channel(0, c) / channel(1, 4)
        next
    endif
    for c = 1 to 3
        ret = ret or ((channel(1, c) and &hff) shl (c shl 3))
    next

    return ret

end function

sub clv_buffer_ini_all( clv_buffer(any,any) as fb.image ptr)


	#ifdef __clv_debug__
		Central_Count += 1
		central_debug "clv" + colon + "buffer_ini_all"
		Central_Close_Out target
	#endif
		
	
	dim as long w = 0, h = 0, depth = 0, bpp = 0, pitch = 0, rate = 0
	dim as string driver = string$( 0, 0 )
	
	Screeninfo ( w, h, depth, bpp, pitch, rate, driver )
	
	dim as integer index = 0
	for index = lbound( clv_buffer, 1 ) to ubound( clv_buffer, 1 ) step 1
		clv_buffer(index,0)=imagecreate( w, h, 0, depth )
		clv_buffer(index,1)=imagecreate( w, h, 0, depth )
	next index

end sub

clv_buffer_ini_all( clv_buffer() )

function clv_VGA( index as integer = 0 ) as integer
	
	select case not( 0 )
	case index >= lbound( VGA_Table, 1 ) and index <= ubound( VGA_Table, 1 )
		clv_VGA = VGA_Table( index )
	case else
		clv_VGA = 0
	end select
	
end function