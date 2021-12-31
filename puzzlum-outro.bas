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

sub outro()
	splash
	flip
	do while len(inkey)=0
	loop
	outro_gfx "outro"
	flip
	do while len(inkey)=0
	loop
	end
	
end sub
		
sub outro_from_bundle( outro_prefix as string = "outro", outro_style( any ) as style_type )

	
	dim as integer index = 0
	
	redim as names_type Outro_Table( any )
	erase Outro_Table
	load_names_from_file( ".\gamedata\Outro.dat", Outro_Table() )
	
	dim as string prefix = string$( 0, 0 )
	prefix = outro_prefix + "/" + ltrim$( str$( index ) )
	
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		outro_style( index ).img = png_load( sync_names( prefix + "/img", Outro_Table() ) )
		outro_style( index ).msg = sync_names( prefix + "/msg", Outro_Table() )
		outro_style( index ).w = sync_names( prefix  + "/width", Outro_Table() )
		outro_style( index ).h = sync_names( prefix  + "/height", Outro_Table() )
		outro_style( index ).shade = sync_names( prefix + "/shade", Outro_Table() )
	next index
	
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

sub outro_text_to_image( outro_style( any ) as style_type )
	
	dim as integer index = 0
	
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
	
		outro_style_shade outro_style( index ).shade
	
		outro_style( index ).img = imagecreate( len( outro_style( index ).msg ) shl 3, 8, 0, 32 )
	
		draw string outro_style( index ).img, ( 0, 0 ), outro_style( index ).msg, val( outro_style( index ).shade )
		
	next index
	
end sub

sub image_from_style( outro_style( any ) as style_type )

	dim as integer outro_w = 0
	dim as integer outro_h = 0

	dim as integer index = 0
	dim as fb.image ptr outro_stretch
	
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		
		outro_w = outro_style( index ).img -> width
		outro_h = outro_style( index ).img -> height
	
		select case not( 0 )
		case right$( outro_style( index ).w, 1 ) = "%"
			
			outro_w = ( outro_style( index ).img -> width ) * val( left$( outro_style( index ).w, len( outro_style( index ).w ) - 1 ) ) \ 100
			
		case right$( outro_style( index ).w, 2 ) = "px"
			
			outro_w = val( left$( outro_style( index ).w, len( outro_style( index ).w ) - 2 ) )
			
		case right$( outro_style( index ).w, 2 ) = "vw"
			
			outro_w = ( Display_Width ) * val( left$( outro_style( index ).w, len( outro_style( index ).w ) - 2 ) ) \ 100
			
		case else	
			
			outro_w = outro_style( index ).img -> width
			
		end select
	
		select case not( 0 )
		case right$( outro_style( index ).h, 1 ) = "%"
			
			outro_h = ( outro_style( index ).img -> height ) * val( left$( outro_style( index ).h, len( outro_style( index ).h ) - 1 ) ) \ 100
			
		case right$( outro_style( index ).h, 2 ) = "px"
			
			outro_h = val( left$( outro_style( index ).h, len( outro_style( index ).h ) - 2 ) )
			
		case right$( outro_style( index ).h, 2 ) = "vw"
			
			outro_h = ( Display_Width ) * val( left$( outro_style( index ).h, len( outro_style( index ).h ) - 2 ) ) \ 100
			
		case else	
			
			outro_h = outro_style( index ).img -> height
			
		end select
		
		dim as fb.image ptr outro_stretch = imagecreate( outro_w, outro_h, 0, 32 )
		
		stretch outro_style( index ).img, outro_stretch
		
		cls
		
		put ( ( Display_Width - outro_stretch -> width ) shr 1, ( Display_Height - outro_stretch -> height ) shr 1 ), outro_stretch
		
	next index
	
	imagedestroy outro_style( index ).img
	outro_style( index ).img = outro_stretch
		
end sub

sub outro_gfx( outro_prefix as string = "outro" )
	
	dim as string prefix = string$( 0, 0 )
	
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
		
	redim as style_type outro_style( any )
	erase outro_style
	redim outro_style( 0 to val( sync_names_using_default( outro_prefix + "/count", "1", Outro_Table() ) ) )
	
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		
		prefix = outro_prefix + ltrim$( str$( index ) )
		
		select case index
		case 0
			outro_style( index ).filename = sync_names_using_default( prefix + "/filename", ".\gameart\sprites\pndx____.24x.png", Outro_Table() )
		case 1
			outro_style( index ).filename = sync_names_using_default( prefix + "/filename", ".\gameart\sprites\pndx____.24y.png", Outro_Table() )
		end select
		
		outro_style( index ).method = sync_names_using_default( prefix + "/method", "alpha", Outro_Table() )
			
		outro_style( index ).img = png_load( outro_style( index ).filename )
		
		outro_style( index ).msg = sync_names_using_default( prefix + "/msg", "outro", Outro_Table() )

		outro_style( index ).w = sync_names_using_default( prefix + "/width", "100vw", Outro_Table() )

		outro_style( index ).h = sync_names_using_default( prefix + "/height", "100vh", Outro_Table() )

		outro_style( index ).shade = sync_names_using_default( prefix + "/shade", "vga/13", Outro_Table() )
				
	next index
	
	image_from_style outro_style()

	splash
	
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		
		put_method 0, 0, 0, outro_style( index ).img, outro_style( index ).method		
		imagedestroy outro_style( index ).img

		locate index * 3 + 1, 20
		print quot + outro_style( index ).msg + quot
	
	next index
		
	flip
	
	do while len( inkey ) = 0
	loop

	end

end sub

sub put_method( target as fb.image ptr, x as integer = 0, y as integer = 0, img as fb.image ptr, method as string = "alpha" )
	
	select case method
	case "and"
		put target, ( x, y ), img, and
	case "or"
		put target, ( x, y ), img, or
	case "pset"
		put target, ( x, y ), img, pset
	case "xor"
		put target, ( x, y ), img, xor
	case "alpha"
		put target, ( x, y ), img, alpha
	case "preset"
		put target, ( x, y ), img, preset
	case else
		put target, ( x, y ), img, alpha
	end select
	
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
