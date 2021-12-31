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
	
	dim shared as integer Display_Width = 640
	dim shared as integer Display_Height = 480
	
function outro_from_bundle( outro_prefix as string = "outro", outro_msg as string = "outro", outro_width as string = "100vw", outro_height as string = "100vh", outro_shade as string = "vga/13" ) as fb.image ptr
	
	redim as names_type Outro_Table( any )
	erase Outro_Table
	
	load_names_from_file( ".\gamedata\Outro.dat", Outro_Table() )
	
	outro_msg = sync_names( outro_prefix + "/msg", Outro_Table() )
	outro_width = sync_names( outro_prefix + "/width", Outro_Table() )
	outro_height = sync_names( outro_prefix + "/height", Outro_Table() )
	outro_shade = sync_names( outro_prefix + "/shade", Outro_Table() )

	outro_from_bundle = outro_from_text( outro_msg, outro_width, outro_height, outro_shade )
	
end function

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

function outro_from_text( outro_msg as string = "outro" , outro_width as string = "100vw", outro_height as string = "100vh", outro_shade as string = "vga/13" ) as fb.image ptr

	outro_style_shade outro_shade
	
	dim as fb.image ptr outro_img = imagecreate( len( outro_msg ) shl 3, 8, 0, 32 )
	draw string outro_img, ( 0, 0 ), outro_msg, val( outro_shade )

	outro_from_text = outro_from_image_style( outro_img, outro_msg, outro_width, outro_height, outro_shade )
	
end function

function outro_from_image_style( outro_img as fb.image ptr, outro_prefix as string = "outro", outro_msg as string = "outro", outro_width as string = "100vw", outro_height as string = "100vh", outro_shade as string = "vga/13" ) as fb.image ptr
	
	dim as integer outro_w = outro_img -> width
	dim as integer outro_h = outro_img -> height
	
	select case not( 0 )
	case right$( outro_width, 1 ) = "%"
		outro_w = ( outro_img -> width ) * val( left$( outro_width, len( outro_width ) - 1 ) ) \ 100
	case right$( outro_width, 2 ) = "px"
		outro_w = val( left$( outro_width, len( outro_width ) - 2 ) )
	case right$( outro_width, 2 ) = "vw"
		outro_w = ( Display_Width ) * val( left$( outro_width, len( outro_width ) - 2 ) ) \ 100	
	case else	
		outro_w = outro_img -> width
	end select

	select case not(0)
	case right$( outro_height, 1 ) = "%"
		outro_h = ( outro_img -> height ) * val( left$( outro_height, len( outro_height ) - 1 ) ) \ 100
	case right$( outro_height, 2 ) = "px"
		outro_h = val( left$( outro_height, len( outro_height ) - 2 ) )
	case right$( outro_height, 2 ) = "vh"
		outro_h = ( Display_Height ) * val( left$( outro_height, len( outro_height ) - 2 ) ) \ 100
	case else	
		outro_h = outro_img -> height
	end select
	
	dim as fb.image ptr outro_stretch = imagecreate( outro_w, outro_h, 0, 32 )
	
	stretch outro_img, outro_stretch
	
	cls
	
	put ( ( Display_Width - outro_stretch -> width ) shr 1, ( Display_Height - outro_stretch -> height ) shr 1 ), outro_stretch
		
	'imagedestroy outro_img
	outro_from_image_style = outro_stretch
		
end function

sub outro()
	
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
	
	for index = lbound( outro_filename, 1 ) to ubound( outro_filename, 1 ) step 1
	
		outro_filename( index ) = sync_names( "outro/sprite/" + ltrim$( str$( index ) ), Outro_Table() )

		outro_method( index ) = sync_names( "outro/method/" + ltrim$( str$( index ) ), Outro_Table() )
	next index
	
	for index = lbound( outro_filename, 1 ) to ubound( outro_filename, 1 ) step 1
				
		outro_img( index ) = png_load( outro_filename( index ) )
		
		outro_img( index ) = outro_from_image_style( outro_img( index ), "outro", "outro", "100vw", "100vh", "vga/13" )
			
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
