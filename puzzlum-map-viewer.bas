
'puzzlum-map-viewer.bi
'Puzzlum - "Map Viewer" Map Viewer
'
'Copyright (C) 2009, 2021 Timothy Robert Keal
'
'Released under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )
'
'website: http://puzzlum.com/
'mailto: trkeal@gmail.com
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

'=====

	#ifndef puzzlum_map_viewer_lib
	#inclib "puzzlum-map-viewer"
	#endif

	#inclib "puzzlum-common"
	
	#include once ".\inc\clv.bi"

	#include once ".\inc\VGA_Table.bi"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"
	#include once ".\inc\central-debug.bi"

	#include once ".\inc\VGA_Table.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\CLV.bi"

	'#include once ".\inc\puzzlum-subs.bi"
	'#include once ".\inc\puzzlum-vars.bi"
	
	#include once ".\inc\puzzlum-entity-loader.bi"

	#include once ".\inc\puzzlum-map-viewer.bi"
	
sub map_viewer ()
		
	'AA_si
	'DD_si
	
	dim as fb.image ptr map_capture = imagecreate( 24 * AA_si, 24 * DD_si )
	
	line map_capture,( 0, 0 )-( map_Capture -> Width - 1, map_Capture -> Height - 1 ), 0, bf
	            
    'ctrl_str = "pndximp_"
    
	'if dicehit( diceroll( "1d2" ), "2to2" ) then
	'	ctrl_str += "dust"
	'end if
	
	'#ifdef __clv_debug__
		dim as string target = string$( 0, 0 )
		Central_Count += 1
		target = "map" + colon + "viewer"
		central_debug target
	'#endif

	
    FOR Ty_si = 1 TO DD_si step 1
        
		FOR Tx_si = 1 TO AA_si step 1
            
			map_data Tx_si, Ty_si

			#ifdef __old_map__
			
			'rbg_str = MID(bg_str, (Tx_si - 1) * 5 + 1, 4)
            'rfg_str = MID(fg_str, (Tx_si - 1) * 5 + 1, 4)
            'rid_str = MID(rg_str, (Tx_si - 1) * 5 + 1, 4)
            'rid_sf = VAL(rid_str)
			
			rbg_str = mid$( e_stra(Rose_Calc( Tx_si, Ty_si ), 2),5,4)
            
			command_str = e_stra(Rose_Calc( Tx_si, Ty_si ), 3)
            
			graphicsaction_str = e_stra(Rose_Calc( Tx_si, Ty_si ), 4)
            
			'profile_manip "blnk"

			'prflgpic_str = "____"

			Entity_Action
			
			Entity_Loader()
			
			if rbg_str = "" then
				rbg_str = "dirt"
			end if
			
			cell = png_load( ".\gameart\sprites\" + rbg_str + "____" + ".24y.png" )
			put map_capture,(24*(Tx_si-1),24*(Ty_si-1)),cell, and
			png_destroy cell

			cell = png_load( ".\gameart\sprites\" + rbg_str + "____" + ".24x.png" )			
			put map_capture,(24*(Tx_si-1),24*(Ty_si-1)),cell, or
			png_destroy cell
			
			cell = png_load( ".\gameart\sprites\" + prflgpic_str + "____" + ".24y.png" )
			put map_capture,(24*(Tx_si-1),24*(Ty_si-1)),cell, and
			png_destroy cell
			
			cell = png_load( ".\gameart\sprites\" + prflgpic_str + "____" + ".24x.png" )
			put map_capture,(24*(Tx_si-1),24*(Ty_si-1)),cell, or
			png_destroy cell
			
			select case left$( prflgpic_str, 4 )
			case "door", "chst"
				select case left$( rid_str, 3 )
                case "loc"
					select case valint( right$( rid_str, 1 ) )
					case 1 to 3
						
						prflactn_str = rid_str
						
						cell = png_load( ".\gameart\sprites\" + prflactn_str + "____" + ".24y.png" )
						put map_capture,(24*(Tx_si-1),24*(Ty_si-1)),cell, and
						png_destroy cell
			
						cell = png_load( ".\gameart\sprites\" + prflactn_str + "____" + ".24x.png" )
						put map_capture,(24*(Tx_si-1),24*(Ty_si-1)),cell, or
						png_destroy cell
					
					end select
                end select
			end select
			
			if Debug_Enabled then
				put ( ( Display_Width - map_capture -> width ) shr 1, ( Display_Height - map_capture -> height ) shr 1 ), map_capture, alpha
    			flip
			end if
			
			#endif
		
		NEXT Tx_si
    NEXT Ty_si
	
	put ( ( Display_Width - map_capture -> width ) shr 1, ( Display_Height - map_capture -> height ) shr 1 ), map_capture, alpha
    
	flip
	
	wait_key
	
	'CLOSE 1
		
	'#ifdef __clv_debug__
		Central_Close_Out target	
	'#endif

end sub

sub map_data ( Tx_si as integer = 1, Ty_si as integer = 1 )
	
	cls
	report_caption( "map sync" )
	
	print "(" + As_String( Tx_si ) + "," + As_String( Ty_si ) + ")"

	dim t_si as integer = 0
		
	FOR t_si = 0 TO 1
		print e_stra( Rose_Calc( Tx_si, Ty_si ), t_si )
	NEXT t_si
	
	print MID( e_stra( Rose_Calc( Tx_si, Ty_si ), 2 ), 1, 4 )

	FOR t_si = 3 TO 4
		print e_stra( Rose_Calc( Tx_si, Ty_si ), t_si )
	NEXT t_si
	
	FOR t_si = 0 TO 16
		print As_String( G_dfa( Rose_Calc( Tx_si, Ty_si ), t_si ) )
	NEXT t_si
	
	flip
	wait_key
	
end sub