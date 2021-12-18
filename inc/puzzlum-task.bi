
'Line_Handle.bas
'Puzzlum Task Manager
'
'Puzzlum is Copyright (C) 1997, 2010, 2021 Timothy Robert Keal
'Released under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )
'
'http://puzzlum.com/
'mailto:trkeal@gmail.com
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

'=====
	
	#inclib "puzzlum-task"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\puzzlum-vars.bi"
	#include once ".\inc\puzzlum-subs.bi"
	
declare sub LnCall overload( Line_Handle As String = "%%" )    

declare sub LnCall overload( Line_Handle as string = "%%", clv_buffer( any ) as fb.image ptr, Index as integer = 0, Row as integer = 0, Col as integer = 0)

declare sub LnCall overload( Line_Handle as string = "%%", filename as string = "", Save_Table( any ) as names_type )

declare function LnCall overload( Line_Handle as string = "%%",  KeyPress as string = "", Comparison as string = "", Input_Table( any ) as names_type ) as integer

declare function LnCall overload( Line_Handle as string = "%%",  Tx_si as integer = 0, Ty_si as integer = 0 ) as integer
