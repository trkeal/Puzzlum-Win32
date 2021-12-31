'puzzlum-outro.bi
'
'Puzzlum is Copyright (C) 1997, 2010, 2021 Timothy Robert Keal
'Released by Timothy Robert Keal under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )
'
'http://puzzlum.net/
'mailto:trkeal@gmail.com
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

'=====
	
	#ifndef puzzlum_outro_lib
	#inclib "puzzlum-outro"
	#endif

	#include once ".\inc\VGA_Table.bi"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once ".\inc\central-debug.bi"

	'redim shared as names_type CMD_Table( any )
	'debug_status CMD_Table()

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	dim shared as integer Display_Width = 640
	dim shared as integer Display_Height = 480

	type style_type
		filename as string
		img as fb.image ptr
		msg as string
		w as string
		h as string
		shade as string
		method as string
	end type

	declare sub splash()

	declare sub outro_from_bundle( outro_prefix as string = "outro", outro_style as style_type )

	declare sub outro_style_shade( outro_shade as string )

	declare sub outro_text_to_image( outro_prefix as string = "outro", outro_style as style_type )

	declare function image_from_style( outro_style as style_type ) as fb.image ptr

	declare sub outro( prefix as string = "outro" )
	
	declare sub stretch( src as fb.image ptr, dest as fb.image ptr )
	
	declare sub repeat( src as fb.image ptr, dest as fb.image ptr )
