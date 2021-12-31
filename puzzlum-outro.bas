#define puzzlum_outro_lib

'puzzlum-outro.bas
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

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once ".\inc\central-debug.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\puzzlum-outro.bi"
		
sub outro_from_bundle( outro_prefix as string = "outro", outro_style as style_type )

	redim as names_type Outro_Table( any )
	erase Outro_Table
	load_names_from_file( ".\gamedata\Outro.dat", Outro_Table() )
	
	outro_style.img = png_load( sync_names( outro_prefix + "/img", Outro_Table() ) )
	outro_style.msg = sync_names( outro_prefix + "/msg", Outro_Table() )
	outro_style.w = sync_names( outro_prefix + "/width", Outro_Table() )
	outro_style.h = sync_names( outro_prefix + "/height", Outro_Table() )
	outro_style.shade = sync_names( outro_prefix + "/shade", Outro_Table() )
	
end sub

sub outro_style_shade( outro_shade as string )
	select case not(0)
	case left$( outro_shade, 4 ) = "vga/"
		outro_shade = "&H" + hex$( VGA_Table( val( mid$( outro_shade, 5 ) ) ) )
	case left$( outro_shade, 4 ) = "hex/"
		outro_shade = "&H" + mid$( outro_shade, 5 )
	case else
		outro_shade = "&H" + hex$( VGA_Table( 13 ) )
	end select
end sub

sub outro_text_to_image( outro_prefix as string = "outro", outro_style as style_type )

	outro_style_shade outro_style.shade
	
	outro_style.img = imagecreate( len( outro_style.msg ) shl 3, 8, 0, 32 )
	
	draw string outro_style.img, ( 0, 0 ), outro_style.msg, val( outro_style.shade )
	
end sub

function image_from_style( outro_style as style_type ) as fb.image ptr
	
	dim as integer outro_w = outro_style.img -> width
	dim as integer outro_h = outro_style.img -> height
	
	select case not( 0 )
	case right$( outro_style.w, 1 ) = "%"
		
		outro_w = ( outro_style.img -> width ) * val( left$( outro_style.w, len( outro_style.w ) - 1 ) ) \ 100
		
	case right$( outro_style.w, 2 ) = "px"
		
		outro_w = val( left$( outro_style.w, len( outro_style.w ) - 2 ) )
		
	case right$( outro_style.w, 2 ) = "vw"
		
		outro_w = ( Display_Width ) * val( left$( outro_style.w, len( outro_style.w ) - 2 ) ) \ 100
		
	case else	
		
		outro_w = outro_style.img -> width
		
	end select

	select case not( 0 )
	case right$( outro_style.h, 1 ) = "%"
		
		outro_h = ( outro_style.img -> height ) * val( left$( outro_style.h, len( outro_style.h ) - 1 ) ) \ 100
		
	case right$( outro_style.h, 2 ) = "px"
		
		outro_h = val( left$( outro_style.h, len( outro_style.h ) - 2 ) )
		
	case right$( outro_style.h, 2 ) = "vw"
		
		outro_h = ( Display_Width ) * val( left$( outro_style.h, len( outro_style.h ) - 2 ) ) \ 100
		
	case else	
		
		outro_h = outro_style.img -> height
		
	end select
	
	dim as fb.image ptr outro_stretch = imagecreate( outro_w, outro_h, 0, 32 )
	
	stretch outro_style.img, outro_stretch
	
	cls
	
	put ( ( Display_Width - outro_stretch -> width ) shr 1, ( Display_Height - outro_stretch -> height ) shr 1 ), outro_stretch
		
	'imagedestroy outro_img
	image_from_style = outro_stretch
		
end function

sub outro( prefix as string = "outro" )
	
	redim as names_type	Outro_Table( any )
	erase Outro_Table
	load_names_from_file( ".\gamedata\Outro.dat", Outro_Table() )
	
	redim as fb.image ptr outro_img( any )
	redim outro_img( 0 to 1 )
	
	redim as string outro_filename( any )
	redim outro_filename( 0 to 1 )

	redim as string outro_method( any )
	redim outro_method( 0 to 1 )
	
	dim as integer index = 0

	splash
	
	'for index = lbound( outro_filename, 1 ) to ubound( outro_filename, 1 ) step 1
	'
	'	outro_filename( index ) = sync_names( prefix + "/sprite/" + ltrim$( str$( index ) ), Outro_Table() )
	'
	'	outro_method( index ) = sync_names( prefix + "/method/" + ltrim$( str$( index ) ), Outro_Table() )
	'next index
	
	dim as style_type outro_style( any )
	erase outro_style
	redim outro_style( 0 to 1 )
	
	outro_style( 0 ).filename = sync_names( prefix + "/filename/0", Outro_Table() )
	if outro_style( 0 ).filename = "%%" then
		outro_style( 0 ).filename = ".\gameart\sprites\pndx____.24.y"
	end if
	
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		
		outro_style( index ).method = sync_names( prefix + "/method/" + ltrim$( str$( index ) ), Outro_Table() )
		if outro_style( index ).method = "%%" then
			outro_style( index ).method = "pset"
		end if
		
	next index
	
	outro_style( 1 ).filename = sync_names( prefix + "/filename/0", Outro_Table() )
	if outro_style( 1 ).filename = "%%" then
		outro_style( 1 ).filename = ".\gameart\sprites\pndx____.24.x"
	end if
	
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		
		outro_style( index ).img = png_load( outro_style( index ).filename )
		
		outro_style( index ).msg = sync_names( prefix + "/msg", Outro_Table() )
		if outro_style( index ).msg = "%%" then
			outro_style( index ).msg = "outro"
		end if

		outro_style( index ).w = sync_names( prefix + "/width", Outro_Table() )
		if outro_style( index ).w = "%%" then
			outro_style( index ).w = "100vw"
		end if

		outro_style( index ).h = sync_names( prefix + "/height", Outro_Table() )
		if outro_style( index ).h = "%%" then
			outro_style( index ).h = "100vh"
		end if

		outro_style( index ).shade = sync_names( prefix + "/shade", Outro_Table() )
		if outro_style( index ).shade = "%%" then
			outro_style( index ).shade = "vga/13" 
		end if
		
		outro_style( index ).img = image_from_style( outro_style( index ) )
		
	next index
	
	splash
	
	for index = lbound( outro_filename, 1 ) to ubound( outro_filename, 1 ) step 1
		
		select case outro_method( index )
		case "and"
			put ( 0, 0 ), outro_img( index ), and
		case "or"
			put ( 0, 0 ), outro_img( index ), or
		end select
		
		imagedestroy outro_img( index )
	
	next index
	
	'get( 0, 0 )-( Display_Width - 1, Display_Height - 1), outro_img( 0 )
	'outro_img( 1 ) = outro_from_bundle( "outro" )
	
	'cls
	
	'put( 0, 0 ), outro_img( 0 ), pset
	'put( 0, 0 ), outro_img( 1 ), pset
	
	flip
	
	do while len( inkey ) = 0
	loop

	end

end sub

sub stretch( src as fb.image ptr, dest as fb.image ptr )

	dim as integer x = 0, y = 0, xx = 0, yy = 0
	
	for y = 0 to dest -> height - 1 step 1
	for x = 0 to dest -> width - 1 step 1
		xx = x * src -> width \ dest -> width
		yy = y * src -> height \ dest -> height
		pset dest, ( x, y ), point( xx, yy, src )
	next x
	next y
	
end sub

sub repeat( src as fb.image ptr, dest as fb.image ptr )

	dim as integer x = 0, y = 0, xx = 0, yy = 0
	
	for y = 0 to dest -> height - 1 step 1
	for x = 0 to dest -> width - 1 step 1
		xx = x mod src -> width
		yy = y mod src -> height
		pset dest, ( x, y ), point( xx, yy, src )
	next x
	next y
	
end sub

sub splash()
	
	redim as names_type Bundle_Table( any )
	erase Bundle_Table
	load_names_from_file( ".\gamedata\Bundle.dat", Bundle_Table() )
	
	dim as string logo_filename = sync_names("splash/logo/filename", Bundle_Table())
	
	dim as fb.image ptr i_logo = png_load( logo_filename )

	dim as string backdrop_filename = sync_names("splash/backdrop/filename", Bundle_Table())
	
	dim as fb.image ptr i_backdrop = png_load( backdrop_filename )
		
	dim as fb.image ptr i_display = imagecreate( 640, 480 )
	
	line i_display, ( 0, 0 )-( i_display -> width - 1, i_display -> height - 1 ), VGA_Table( 10 )
	
	repeat i_backdrop, i_display
	
	dim as integer w = val( sync_names( "splash/width", Bundle_Table() ) )
	dim as integer h = val( sync_names( "splash/height", Bundle_Table() ) )
	
	dim as fb.image ptr i_container = imagecreate( w, h )
	
	stretch i_logo, i_container
	
	put i_display, ( ( i_display -> width - i_container -> width ) shr 1, ( i_display -> Height - i_container -> height ) shr 1 ), i_container, alpha
    
	put ( 0, 0 ), i_display, pset
	
	'png_destroy i_logo
	png_destroy i_backdrop
	imagedestroy i_display
	'imagedestroy i_container
		
	'flip
	'wait_key
	
end sub
