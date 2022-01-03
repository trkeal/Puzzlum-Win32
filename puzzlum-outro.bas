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
	
	#include once ".\inc\puzzlum-vars.bi"	
	#include once ".\inc\puzzlum-outro.bi"

sub outro()
	
	redim as names_type Map_Table( any )

	'outro_map "map", Map_Table()
	'outro_gfx "map", Map_Table()

	'flip
	
	'do while len(inkey)=0
	'loop

	redim as names_type Outro_Table( any )
	
	outro_gfx "outro", Outro_Table()
	
	flip
	
	do while len(inkey)=0
	loop
	
	end
	
end sub

sub load_outro_palette( outro_prefix as string = "outro", outro_palette( any ) as integer, Outro_Table( any ) as names_type )
	
	dim as integer index = 0

	dim as string prefix = string$( 0, 0 )	
	prefix = outro_prefix + "/palette"
	
	redim outro_palette( val( sync_names_using_default( prefix + "/start", "0", Outro_Table() ) ) to val( sync_names_using_default( prefix + "/count", "1", Outro_Table() ) ) )
	
	for index = lbound( outro_palette, 1 ) to ubound( outro_palette, 1 ) step 1
	
		prefix = outro_prefix + "/palette/" + ltrim$( str$( index ) )

		outro_palette( index ) = valint( func_outro_style_shade( sync_names_using_default( prefix, "vga/"+ltrim$(str$(index)), Outro_Table() ) ) )
		
	next index

end sub

sub custom_palette( img as fb.image ptr, outro_palette( any ) as integer )

	dim as integer x = 0, y = 0, p = 0, pal_index = 0

		for y = 0 to img -> height - 1 step 1
		for x = 0 to img -> width - 1 step 1
			
			p = point( x, y, img ) and &HFFFFFF
			
			pal_index =  lbound( outro_palette, 1 )
			
			do while pal_index <= ubound( outro_palette, 1 )
				select case p
				case VGA_Table( pal_index )
					pset img, ( x, y ), outro_palette( pal_index )
					exit do
				end select
				pal_index += 1
			loop
			
		next x
		next y
end sub

sub outro_style_shade( outro_shade as string = "vga/0" )
	select case not( 0 )
	case left$( outro_shade, 4 ) = "vga/"
		outro_shade = "&H" + hex$( VGA_Table( val( mid$( outro_shade, 5 ) ) ) )
	case left$( outro_shade, 4 ) = "hex/"
		outro_shade = "&H" + mid$( outro_shade, 5 )
	case else
		outro_shade = "&H" + hex$( VGA_Table( 13 ) )
	end select
end sub

function func_outro_style_shade( outro_shade as string = "vga/0" ) as string
	outro_style_shade outro_shade
	func_outro_style_shade = outro_shade
end function

sub outro_text_to_image( outro_style( any ) as style_type )
	
	dim as integer index = 0
	
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
	
		outro_style_shade outro_style( index ).fg
		outro_style_shade outro_style( index ).bg
	
		outro_style( index ).img = imagecreate( len( outro_style( index ).msg ) shl 3, 8, 0, 32 )
	
		select case outro_style( index ).method
		case "and"
		
			line outro_style( index ).img, ( 0, 0 )-( outro_style( index ).img -> width, outro_style( index ).img -> height ), VGA_Table( 15 ), bf
		
			draw string outro_style( index ).img, ( 0, 0 ), outro_style( index ).msg, VGA_Table( 0 )
			
		case "or"
			line outro_style( index ).img, ( 0, 0 )-( outro_style( index ).img -> width, outro_style( index ).img -> height ), VGA_Table( 0 ), bf
		
			draw string outro_style( index ).img, ( 0, 0 ), outro_style( index ).msg, val( outro_style( index ).fg )
		end select
		
	next index
	
end sub

function style_span( img_span as integer = 0, style as string = "" ) as integer
		
	dim as integer span = 0
	
	select case not( 0 )
	case right$( style, 1 ) = "%"
		
		span = ( img_span ) * val( left$( style, len( style ) - 1 ) ) \ 100
		
	case right$( style, 2 ) = "px"
		
		span = val( left$( style, len( style ) - 2 ) )
		
	case right$( style, 2 ) = "vw"
		
		span = ( Display_Width ) * val( left$( style, len( style ) - 2 ) ) \ 100
		
	case right$( style, 2 ) = "vh"
		
		span = ( Display_Height ) * val( left$( style, len( style ) - 2 ) ) \ 100
		
	case else	
		
		span = img_span
		
	end select
	
	style_span = span
	
end function

sub image_from_style( outro_style( any ) as style_type )

	dim as integer outro_w = 0
	dim as integer outro_h = 0

	dim as integer index = 0
	dim as fb.image ptr outro_stretch
	
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		
		outro_w = style_span( outro_style( index ).img -> width, outro_style( index ).w )
		outro_h = style_span( outro_style( index ).img -> height, outro_style( index ).h )
		
		dim as fb.image ptr outro_stretch = imagecreate( outro_w, outro_h, 0, 32 )
		
		stretch outro_style( index ).img, outro_stretch
		
		cls
		
		put ( ( Display_Width - outro_stretch -> width ) shr 1, ( Display_Height - outro_stretch -> height ) shr 1 ), outro_stretch

		imagedestroy outro_style( index ).img
		outro_style( index ).img = outro_stretch
		
	next index
	
end sub

sub outro_gfx( outro_prefix as string = "outro", Outro_Table( any ) as names_type )
	
	redim as integer outro_palette( any )
	
	dim as integer x = 0 , y = 0, p = 0, pal_index = 0

	dim as fb.image ptr backdrop
	
	backdrop = imagecreate( Display_Width, Display_Height )

	splash backdrop, 0
	
	dim as string prefix = string$( 0, 0 )
	
	if ubound( Outro_Table, 0 ) = 0 then
		erase Outro_Table
		load_names_from_file ".\gamedata\Outro.dat", Outro_Table()
	end if
	
	dim as integer index = 0
	
	redim as style_type outro_style( any )
	erase outro_style

	load_outro_palette outro_prefix, outro_palette(), Outro_Table()

	prefix = outro_prefix + "/img"
	
	redim outro_style( val( sync_names_using_default( prefix + "/start", "0", Outro_Table() ) ) to val( sync_names_using_default( prefix + "/count", "1", Outro_Table() ) ) )

	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		
		prefix = outro_prefix + "/img/" + ltrim$( str$( index ) )
		
		select case index
		case 0
			outro_style( index ).filename = sync_names_using_default( prefix + "/filename", ".\gameart\sprites\pndx____.24y.png", Outro_Table() )

			outro_style( index ).method = sync_names_using_default( prefix + "/method", "and", Outro_Table() )

		case 1
			outro_style( index ).filename = sync_names_using_default( prefix + "/filename", ".\gameart\sprites\pndx____.24x.png", Outro_Table() )

			outro_style( index ).method = sync_names_using_default( prefix + "/method", "or", Outro_Table() )
		
		end select
			
		outro_style( index ).img = png_load( outro_style( index ).filename )
		
		custom_palette outro_style( index ).img, outro_palette()
		
		'outro_style( index ).msg = sync_names_using_default( prefix + "/caption", "outro", Outro_Table() )

		outro_style( index ).w = sync_names_using_default( prefix + "/width", "65vw", Outro_Table() )

		outro_style( index ).h = sync_names_using_default( prefix + "/height", "65vh", Outro_Table() )

		outro_style( index ).fg = sync_names_using_default( prefix + "/fg", "vga/13", Outro_Table() )

		outro_style( index ).bg = sync_names_using_default( prefix + "/bg", "vga/0", Outro_Table() )
				
	next index
	
	image_from_style outro_style()
	
	dim as integer valign = 0
	dim as integer halign = 0
	
	halign = val( sync_names_using_default( prefix + "/halign", "50", Outro_Table() ) )
	valign = val( sync_names_using_default( prefix + "/valign", "50", Outro_Table() ) )

	x = 0
	y = 0
	
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		
		x = ( Display_Width * halign - outro_style( index ).img -> width * (100 - halign) ) \ 100
		
		y = ( Display_Height * valign - outro_style( index ).img -> height * (100 - valign) ) \ 100
		
		put_method backdrop, x, y, outro_style( index ).img, outro_style( index ).method
				
		put_method backdrop, ( Display_Width - outro_style( index ).img -> width ) shr 1, ( Display_Height - outro_style( index ).img -> height ) shr 1, outro_style( index ).img, outro_style( index ).method
		
		imagedestroy outro_style( index ).img
			
	next index
		
	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		
		prefix = outro_prefix + "/msg/" + ltrim$( str$( index ) )
	
		outro_style( index ).msg = sync_names_using_default( prefix + "/caption", "outro", Outro_Table() )
		
		outro_style( index ).fg = sync_names_using_default( prefix + "/fg", "vga/13", Outro_Table() )

		outro_style( index ).bg = sync_names_using_default( prefix + "/bg", "vga/0", Outro_Table() )
		
		outro_style( index ).w = sync_names_using_default( prefix + "/width", "65vw", Outro_Table() )
		
		outro_style( index ).h = sync_names_using_default( prefix + "/height", "65vh", Outro_Table() )

	next index
	
	outro_text_to_image outro_style()

	image_from_style outro_style()
		
	halign = val( sync_names_using_default( prefix + "/halign", "50", Outro_Table() ) )
	valign = val( sync_names_using_default( prefix + "/valign", "50", Outro_Table() ) )

	x = 0
	y = 0

	for index = lbound( outro_style, 1 ) to ubound( outro_style, 1 ) step 1
		
		x = ( Display_Width * halign - outro_style( index ).img -> width * (100 - halign) ) \ 100
		
		y = ( Display_Height * valign - outro_style( index ).img -> height * (100 - valign) ) \ 100
		
		put_method backdrop, x, y, outro_style( index ).img, outro_style( index ).method
		
		put_method backdrop, x, y, outro_style( index ).img, outro_style( index ).method
		
		imagedestroy outro_style( index ).img
		
	next index
	
	put ( 0, 0 ), backdrop, pset
	
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
	case "stretch"
		stretch img, target
	case "repeat"
		repeat img, target
	case else
		put target, ( x, y ), img, alpha
	end select
	
end sub

sub stretch( src as fb.image ptr, target as fb.image ptr = 0 )

	dim as integer x = 0, y = 0, xx = 0, yy = 0
	
	for y = 0 to target -> height - 1 step 1
	for x = 0 to target -> width - 1 step 1
		xx = x * src -> width \ target -> width
		yy = y * src -> height \ target -> height
		pset target, ( x, y ), point( xx, yy, src )
	next x
	next y
	
end sub

sub repeat( src as fb.image ptr, target as fb.image ptr = 0 )

	dim as integer x = 0, y = 0, xx = 0, yy = 0
	
	for y = 0 to target -> height - 1 step 1
	for x = 0 to target -> width - 1 step 1
		xx = x mod src -> width
		yy = y mod src -> height
		pset target, ( x, y ), point( xx, yy, src )
	next x
	next y
	
end sub

sub splash( target as fb.image ptr = 0, logo_enabled as integer = -1 )

	redim as names_type Bundle_Table( any )
	erase Bundle_Table
	load_names_from_file( ".\gamedata\Bundle.dat", Bundle_Table() )	
	
	if not( logo_enabled = 0 ) then
		logo_enabled = val( sync_names_using_default( "splash/logo/enabled", "-1", Bundle_Table() ) )
	end if
	
	dim as string logo_label = "splash/logo/filename"
	dim as string logo_filename = string$( 0, 0 )
	logo_filename = sync_names_using_default( logo_label, ".\gameart\wallpapers\backdrop.png", Bundle_Table())
	dim as fb.image ptr i_logo = png_load( logo_filename )

	dim as string backdrop_label = "splash/backdrop/filename"
	dim as string backdrop_filename = string$( 0, 0 )
	backdrop_filename = sync_names_using_default( backdrop_label, ".\gameart\wallpapers\backdrop.png", Bundle_Table() )
	dim as fb.image ptr i_backdrop = png_load( backdrop_filename )
			
	dim as fb.image ptr i_display = imagecreate( Display_Width, Display_Height )
	repeat i_backdrop, i_display
			
	dim as integer w = val( sync_names_using_default( "splash/logo/width", "640", Bundle_Table() ) )
	dim as integer h = val( sync_names_using_default( "splash/logo/height", "128", Bundle_Table() ) )
	
	dim as fb.image ptr i_container = imagecreate( w, h )

	stretch i_logo, i_container	
	
	if not( logo_enabled = 0 ) then
		put i_display, ( ( i_display -> width - i_container -> width ) shr 1, ( i_display -> Height - i_container -> height ) shr 1 ), i_container, alpha
    end if
	
	put target, ( 0, 0 ), i_display, pset
	
	png_destroy i_logo	
	png_destroy i_backdrop
	
	imagedestroy i_display
	imagedestroy i_container
	
end sub

sub outro_map( map_prefix as string = "map", Map_Table( any ) as names_type, AA as integer = 16, DD as integer = 16)
	
	erase Map_Table
	
	dim as integer col = 0, row = 0, map_index = 0
	dim as string prefix = string$( 0, 0 )
	
	redim as string suffix(any)
	erase suffix
	redim suffix( 0 to 1 )
	
	dim as string entry = "-1"
	
	col = 1
	row = 1
		
	cls
	progress_bar col, row, AA, DD
	flip
	do while len(inkey)=0:loop
	
	for row = 1 to DD step 1
	for col = 1 to AA step 1
		
		progress_bar col, row, AA, DD
		flip
		
		entry_step entry
			
			map_index = ( row - 1 ) * AA + col

			prefix = map_prefix + "/img/"
			
			push_names prefix + entry + "/width", "24px", Map_Table()
			push_names prefix + entry + "/height", "24px", Map_Table()
			push_names prefix + entry + "/filename", ".\gameart\sprites\dirt____.24y.png", Map_Table()
			push_names prefix + entry + "/halign", ltrim$( str$( ( col - 1 ) * 24 ) ) + "px", Map_Table()
			push_names prefix + entry + "/valign", ltrim$( str$( ( row - 1 ) * 24 ) ) + "px", Map_Table()
			push_names prefix + entry + "/method", "and", Map_Table()
			push_names prefix + entry + "/fg", "vga/13", Map_Table()
			push_names prefix + entry + "/bg", "vga/0", Map_Table()

			entry_step entry

			push_names prefix + entry + "/width", "24px", Map_Table()
			push_names prefix + entry + "/height", "24px", Map_Table()
			push_names prefix + entry + "/filename", ".\gameart\sprites\dirt____.24x.png", Map_Table()  			
			push_names prefix + entry + "/halign", ltrim$( str$( ( col - 1 ) * 24 ) ) + "px", Map_Table()
			push_names prefix + entry + "/valign", ltrim$( str$( ( row - 1 ) * 24 ) ) + "px", Map_Table()
			push_names prefix + entry + "/method", "or", Map_Table()
			push_names prefix + entry + "/fg", "vga/13", Map_Table()
			push_names prefix + entry + "/bg", "vga/0", Map_Table()

			entry_step entry

			push_names prefix + entry + "/width", "24px", Map_Table()
			push_names prefix + entry + "/height", "24px", Map_Table()
			push_names prefix + entry + "/filename", ".\gameart\sprites\pndx____.24y.png", Map_Table()  			
			push_names prefix + entry + "/halign", ltrim$( str$( ( col - 1 ) * 24 ) ) + "px", Map_Table()
			push_names prefix + entry + "/valign", ltrim$( str$( ( row - 1 ) * 24 ) ) + "px", Map_Table()
			push_names prefix + entry + "/method", "and", Map_Table()
			push_names prefix + entry + "/fg", "vga/13", Map_Table()
			push_names prefix + entry + "/bg", "vga/0", Map_Table()

			entry_step entry

			push_names prefix + entry + "/width", "24px", Map_Table()
			push_names prefix + entry + "/height", "24px", Map_Table()
			push_names prefix + entry + "/filename", ".\gameart\sprites\pndx____.24x.png", Map_Table()  			
			push_names prefix + entry + "/halign", ltrim$( str$( ( col - 1 ) * 24 ) ) + "px", Map_Table()
			push_names prefix + entry + "/valign", ltrim$( str$( ( row - 1 ) * 24 ) ) + "px", Map_Table()
			push_names prefix + entry + "/method", "or", Map_Table()
			push_names prefix + entry + "/fg", "vga/13", Map_Table()
			push_names prefix + entry + "/bg", "vga/0", Map_Table()

		#ifdef __stack__
			
			select case left$(prflgpic_str,4)
			case "door", "chst"
				select case left$(prflactn_str,3)
                case "loc"
					select case val(right$(prflactn_str,1))
					case 1 to 3
						
						cell = png_load( ".\gameart\sprites\" + prflactn_str + "____" + ".24y.png" )
						put map_capture,(24*(Tx_si-1),24*(Ty_si-1)),cell, and
						png_destroy cell
			
						cell = png_load( ".\gameart\sprites\" + prflactn_str + "____" + ".24x.png" )
						put map_capture,(24*(Tx_si-1),24*(Ty_si-1)),cell, or
						png_destroy cell
					
					end select
                end select
			end select
			
		#endif
		
	next col
	next row
	
	push_names prefix + "start", "0", Map_Table()
	push_names prefix + "count", entry, Map_Table()
	
	save_names_to_file ".\gamedata\Map.dat", Map_Table()
	
end sub

sub entry_step( byref entry as string )
	entry_step entry
end sub

sub progress_bar( col as integer = 1, row as integer = 1, AA as integer = 16, DD as integer = 16 )
	
	dim as fb.image ptr img
	dim as fb.image ptr scaled
	
	dim as integer done = 0
	dim as string percentile = string$( 0, 0 )
	
	img = imagecreate( ( 32 * Display_Width ) \ 100, ( 10 * Display_Height ) \ 100 )
	
	'for row = 1 to DD step 1
	'for col = 1 to AA step 1

	done = 100 * ( ( ( row - 1 ) * AA ) + col) \ ( AA * DD )
	percentile = ltrim$( str$( done ) ) + "%"
	
	line img, ( 0, 0 )-( img -> width - 1, img -> height - 1 ), VGA_Table( 8 ), bf
	
	line img, ( 0, 0 )-( ( img -> width * done \ 100 ) - 1, img -> height - 1 ), VGA_Table( 10 ), bf
	
	line img, ( 0, 0 )-( img -> width - 1, img -> height - 1 ), VGA_Table(7), b

	draw string img, ( ( img -> width - 8 * len( percentile ) ) shr 1, ( img -> height - 4 ) shr 1 ), percentile, VGA_Table( 15 )

	scaled = imagecreate( ( 40 * Display_Width ) \ 100, ( 15*Display_Height ) \ 100 )
	
	stretch img, scaled
	
	put ( ( Display_Width - scaled -> width ) shr 1, ( Display_Height - scaled -> height ) shr 1 ), scaled, pset
	
	flip
	'do while len(inkey)=0:loop
		
	'next col
	'next row
	
	imagedestroy scaled
	imagedestroy img

end sub