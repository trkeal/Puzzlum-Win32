
'Ln.bi
'Puzzlum Task Manager
'
'Puzzlum is Copyright (C) 1997, 2010, 2021, 2022 Timothy Robert Keal
'Released under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )
'
'http://puzzlum.com/
'mailto:trkeal@gmail.com
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

'=====

#inclib "puzzlum-common"

#inclib "Const"
#inclib "Names"
#ifndef Ln_lib
#inclib "Ln"
#endif
#inclib "puzzlum-win32"

declare sub LnCall overload( Ln As String = "%%" )    

declare sub LnCall overload( Ln as string = "%%", clv_buffer as fb.image ptr, Index as integer = 0, Row as integer = 0, Col as integer = 0)

declare function LnCall overload( Ln as string = "%%",  KeyPress as string = "", Comparison as string = "", Input_Table( any ) as names_type ) as integer

declare function LnCall overload( Ln as string = "%%",  Tx_si as integer = 0, Ty_si as integer = 0 ) as integer
