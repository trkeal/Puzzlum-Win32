
'Central Redirect 2.bi
'Central Redirect Module ( 2 of 2 )
'
'Created 2021 by T.R.Keal
'Released under the Gnu Public License "2.2"
'( Attribution, Education / Charity )
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

declare sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer)

declare sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer, Row as short, Col as short)

declare sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer, Caption as string, _
        byref Cur as integer, Max as integer, _
        X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, _
        Switch as integer, ARGB as uinteger, Increment as integer, Progress as string, _
        byref LastSec as double, DelaySec as double)

declare sub central overload ( target as string = "", clv_buffer() as fb.image ptr)

declare sub central overload ( target as string = "", Row as short, Col as short)

declare sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer, X1 as short, Y1 as short, X2 as short, Y2 as short, C1 as short,C2 as short)

declare sub central overload ( target as string = "", clv_glyph() as integer)

declare sub central overload ( target as string = "", Index as integer, Src as integer, Row as short, Col as short, W as short, H as short, byref Text_str as string)

declare sub central overload ( target as string = "", db_names() as names_type)

declare sub central overload ( target as string = "", attk as string = "%%", Attack_Table( Any ) As Names_Type )
