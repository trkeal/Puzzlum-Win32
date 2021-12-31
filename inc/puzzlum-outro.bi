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

declare sub splash()

declare function outro_from_bundle( outro_prefix as string = "outro", outro_msg as string = "outro", outro_width as string = "100vw", outro_height as string = "100vh", outro_shade as string = "vga/13" ) as fb.image ptr
	
	declare sub outro_style_shade( outro_shade as string )
	
	declare function outro_from_text( outro_msg as string = "outro" , outro_width as string = "100vw", outro_height as string = "100vh", outro_shade as string = "vga/13" ) as fb.image ptr
	
	declare function outro_from_image_style( outro_img as fb.image ptr, outro_prefix as string = "outro", outro_msg as string = "outro", outro_width as string = "100vw", outro_height as string = "100vh", outro_shade as string = "vga/13" ) as fb.image ptr

	declare sub outro()
	
	declare sub stretch( src as fb.image ptr, dest as fb.image ptr )
	
	declare sub repeat( src as fb.image ptr, dest as fb.image ptr )
