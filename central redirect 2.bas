
'Central Overload 2.bas
'Central Redirect Module ( 2 of 2 )
'
'Created 2021 by T.R.Keal
'Released under the Gnu Public License "2.2"
'( Attribution, Education / Charity )
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#define central_override_2_lib

sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer)
	select case target
	case "title"
		ln_title clv_buffer(), Index
	case "showtext"
		ln_showtext clv_buffer(), Index
	end select
end sub

sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer, Row as short, Col as short)
	select case target
	case "stts"
		ln_stts clv_buffer(), Index, Row, Col
	end select
end sub

sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer, Caption as string, _
        byref Cur as integer, Max as integer, _
        X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, _
        Switch as integer, ARGB as uinteger, Increment as integer, Progress as string, _
        byref LastSec as double, DelaySec as double)
	select case target
	case "progress_put"
		progress_put clv_buffer(), Index, Caption, _
			Cur, Max, _
			X1, Y1, X2, Y2, _
			Switch, ARGB, Increment, Progress, _
			LastSec, DelaySec
	end select
end sub

sub central overload ( target as string = "", clv_buffer() as fb.image ptr)
	select case target
	case "clv_buffer_stack"
		clv_buffer_stack clv_buffer()
	end select
end sub

sub central overload ( target as string = "", Row as short, Col as short)
	select case target
	case "frame_inventory"
		frame_inventory Row, Col
	case "frame_title"
		frame_title Row, Col
	end select
end sub

sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer, X1 as short, Y1 as short, X2 as short, Y2 as short, C1 as short,C2 as short)
	select case target
	case "frame_put"
		frame_put clv_buffer(), Index, X1, Y1, X2, Y2, C1, C2
	end select
end sub

sub central overload ( target as string = "", clv_glyph() as integer)
	select case target
	case "clv_glyph_ini"
		clv_glyph_ini clv_glyph()
	end select
end sub

sub central overload ( target as string = "", Index as integer, Src as integer, Row as short, Col as short, W as short, H as short, byref Text_str as string)
	select case target
	case "input_text"
		input_text Index, Src, Row, Col, W, H, Text_str
	end select
end sub

sub central overload ( target as string = "", db_names() as names_type)
	select case target
	case "Map_Load"
		Map_Load db_names()
	case "Map_Save"
		Map_Save db_names()
	end select
end sub
