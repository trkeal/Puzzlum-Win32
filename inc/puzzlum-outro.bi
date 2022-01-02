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

	#include once ".\inc\puzzlum-vars.bi"

	dim shared as integer Display_Width = 640
	dim shared as integer Display_Height = 480

	type style_type
		filename as string
		img as fb.image ptr
		msg as string
		w as string
		h as string
		fg as string
		bg as string
		method as string
	end type
	
	declare sub outro()

	declare sub load_outro_palette( outro_prefix as string = "outro", outro_palette( any ) as integer, Outro_Table( any ) as names_type )

	declare sub custom_palette( img as fb.image ptr, outro_palette( any ) as integer )

	declare sub outro_style_shade( outro_shade as string = "vga/0" )
	
	declare function func_outro_style_shade( outro_shade as string = "vga/0" ) as string

	declare sub outro_text_to_image( outro_style( any ) as style_type )
	
	declare function style_span( img_span as integer = 0, style as string = "" ) as integer

	declare sub image_from_style( outro_style( any ) as style_type )

	declare sub outro_gfx( outro_prefix as string = "outro", Outro_Table( any ) as names_type )

	declare sub put_method( target as fb.image ptr, x as integer = 0, y as integer = 0, img as fb.image ptr, method as string = "alpha" )

	declare sub stretch( src as fb.image ptr, target as fb.image ptr = 0 )

	declare sub repeat( src as fb.image ptr, target as fb.image ptr = 0 )

	declare sub splash( target as fb.image ptr = 0, logo_enabled as integer = -1 )
	
	declare sub outro_map( map_prefix as string = "map", Map_Table( any ) as names_type, AA as integer = 16, DD as integer = 16)

	declare sub entry_step( byref entry as string )
	
	declare sub progress_bar( col as integer = 0, row as integer = 0, AA as integer = 16, DD as integer = 16 )
