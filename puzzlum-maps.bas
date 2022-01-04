#define puzzlum_maps_lib

'puzzlum-maps.bas
'Puzzlum - "Names Table" Maps loader
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

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once ".\inc\central-debug.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\CLV.bi"

	#include once ".\inc\puzzlum-subs.bi"
	#include once ".\inc\puzzlum-vars.bi"
	

	'dim shared as integer Central_Count = 0

	'redim shared debug_table( any ) as names_type

    'dir axis info '[!] um? proper documentation, please.
    
	DATA  1, 1
    DATA  1, 4
    DATA  1, 8
    DATA  1,12
    DATA  1,16

sub levels_loader( filename as string = "" )
	
	'level up data

	if len( filename ) = 0 then
		filename = sync_names_using_default( "levels/filename", ".\gamedata\Levels.dat", Bundle_Table() )
	end if

	load_names_from_file filename, Levels_Table()
	
    FOR t_si = 0 TO val( sync_names( "levels/count", Levels_Table() ) )
        l_sia(t_si) = val( sync_names( "levels/" + As_String( t_si ), Levels_Table() ) )
    NEXT t_si
    
end sub

sub win_loader( filename as string = "" )
	
	if len( filename ) = 0 then
		filename = sync_names_using_default( "win/filename", ".\gamedata\Win.dat", Bundle_Table() )
	end if
	
	erase Win_Table
	load_names_from_file filename, Win_Table()
	
	win_si = val( sync_names( "count", Win_Table() ) )

    'RANDOMIZE TIMER
    'RESTORE  

    FOR ttt_si = val( sync_names( "start", Win_Table() ) ) TO win_si
        
		win_sia(1 + (ttt_si - 1) * 2) = val( sync_names_using_default(As_String(ttt_si)+"/"+As_String(1), "0", Win_Table() ) )
		
        win_sia(1 + (ttt_si - 1) * 2) = val( sync_names_using_default(As_String(ttt_si)+"/"+As_String(2), "0", Win_Table() ) )

		'READ win_sia(1 + (ttt_si - 1) * 2)
        'READ win_sia(2 + (ttt_si - 1) * 2)
    NEXT ttt_si
	
end sub

sub map_loader ( map_filename as string = "%%" )
	dim as names_type Entity_Table( any )
	dim as integer count = 0, index = 0
	
	dim as fb.image ptr cell
	dim as fb.image ptr map_capture

	splash
	
	'#ifdef __clv_debug__
		dim as string target = string$( 0, 0 )
		Central_Count += 1
		target = "map" + colon + "loader" + string$( 1, 32 ) + quot + map_filename + quot
		central_debug target
	'#endif

  	load_names_from_file( map_filename, Maps_Table() )
  	'''load_names_from_file( mappath_str + map_str, Maps_Table() )

    'OPEN thispath_str + mappath_str + map_str FOR INPUT AS 1    
	
	'INPUT #1, 
	mapname_str = sync_names( "map/name", Maps_Table() )

	mapid_str = sync_names( "map/id", Maps_Table() )
    'INPUT #1, 
	AA_si = val( sync_names( "map/AA", Maps_Table() ) )
    'INPUT #1, 
	DD_si = val( sync_names( "map/DD", Maps_Table() ) )
	
	map_capture = imagecreate( 24 * AA_si, 24 * DD_si )
	line map_capture,( 0, 0 )-( map_Capture -> Width - 1, map_Capture -> Height - 1 ), 0, bf
	
    ex_si = fix(AA_si / 2) 'map pointer x
    dy_si = fix(DD_si / 2) 'map pointer y
    mdx_si = fix(40 / 2) 'screen cursor x
    mdy_si = fix(30 / 2) 'screen cursor y
    
    textcolor_si = .01
    textdelay_sf = 2.5: '.8 '.55
        
    ctrl_str = "pndximp_"
    IF INT(RND(1) * 2) + 1 = 2 THEN ctrl_str = ctrl_str + "dust"
    FOR Ty_si = 1 TO DD_si step 1
        
		bg_str = sync_names( "map/row/" + As_String( Ty_si )+"/bg", Maps_Table() )
		fg_str = sync_names( "map/row/" + As_String( Ty_si )+"/fg", Maps_Table() )
		rg_str = sync_names( "map/row/" + As_String( Ty_si )+"/rg", Maps_Table() )
		
		'INPUT #1, 
		
		R_str = As_String( Ty_si )
        
		'LINE INPUT #1, bg_str
        'LINE INPUT #1, fg_str
        'LINE INPUT #1, rg_str
        
		FOR Tx_si = 1 TO AA_si step 1
            			
			rbg_str = MID(bg_str, (Tx_si - 1) * 5 + 1, 4)
            rfg_str = MID(fg_str, (Tx_si - 1) * 5 + 1, 4)
            rid_str = MID(rg_str, (Tx_si - 1) * 5 + 1, 4)
            rid_sf = VAL(rid_str)

			'locate Ty_si,(Tx_si-1)*5+1
            'print rbg_str
			
			e_stra(Rose_Calc( Tx_si, Ty_si ), 2) = "____" + rbg_str
            
			e_stra(Rose_Calc( Tx_si, Ty_si ), 3) = MKL(0) + "____" + MKL(0) 'command_str
            
			e_stra(Rose_Calc( Tx_si, Ty_si ), 4) = "________" 'graphicsaction_str
            
			central_call "prflblnk"

			prflgpic_str = "____"

			Entity_Action
			
			select case rfg_str
            case "____"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_sf = rid_sf
				
                central_call "prflset"
            case "spdr"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Spider"
				
				'prflactn_str = "movebiteweb_"
                'prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                
				'prflgpic_str = "spdr"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 10
                'prflstrcur_sf = 20
                'prflstrspd_sf = 1
                'prflarmr_sf = 1
                'prflvalu_sf = 5
                'prflpirc_sf = 1
                'prfllv_sf = 1
                'prflhpmax_sf = 10
                'prflstrmax_sf = 20
                'prflessmax_sf = 380
                'prflessspd_sf = 3
				
                SELECT CASE mapname_str
                CASE "0001"
                    IF prflidty_sf = 1 THEN
                        prflactn_str = prflactn_str + "vnom"
                        prflactnct_str = prflactnct_str+mkl(1)
                    END IF
                END SELECT
				
                central_call "prflset"
            case "wall"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "wall"
                'prflgpic_str = "wall"
                'prflidty_sf = 2
				
                central_call "prflset"
            case "web_"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Web"
                
				'prflactn_str = "spdr"
                'prflactnct_str = mkl(1)
                
				
				'prflgpic_str = "web_"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 40
                'prflstrcur_sf = 50
                'prflstrspd_sf = 1
                'prflvalu_sf = 1
                'prfllv_sf = 1
                'prflhpmax_sf = 40
                'prflstrmax_sf = 50
                'prflessmax_sf = 380
                'prflessspd_sf = 2
                
				central_call "prflset"
            case "grml"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Gremlin"
                
				'prflactn_str = "movebitepnch"
                'prflactnct_str = mkl(1)+mkl(1)+mkl(1)

				IF RND(1) > .2 THEN
                    prflactn_str = prflactn_str + "dggr"
                    prflactnct_str = prflactnct_str+mkl(1)
                END IF
                'prflgpic_str = "grml"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 25
                'prflstrcur_sf = 90
                'prflstrspd_sf = 1
                'prflarmr_sf = 1
                'prflvalu_sf = 5
                'prflpirc_sf = 2
                'prfllv_sf = 1
                'prflhpmax_sf = 25
                'prflstrmax_sf = 90
				
                central_call "prflset"
            case "pndx"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Poindexter"
                'prflactn_str = "wstf"
                'prflgpic_str = "pndx"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 30
                'prflstrcur_sf = 90
                'prflesscur_sf = 0
                'prflstrspd_sf = 3
                'prflarmr_sf = 2
                'prflexp_sf = 10
                'prflvalu_sf = 15
                'prflpirc_sf = 2
                'prfllv_sf = 1
                'prflhpmax_sf = 30
                'prflstrmax_sf = 90
                'prflessmax_sf = 30
                'prflessspd_sf = .1
                'prflevad_sf = .07
                
				central_call "prflset"
            case "dtby"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Dust Bunny"

                'prflactn_str = "movebitekickdtbydust"
                
				'prflgpic_str = "dtby"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 15
                'prflstrcur_sf = 20
                'prflesscur_sf = 5
                'prflstrspd_sf = 1.2
                'prflvalu_sf = 2
                'prfllv_sf = 1
                'prflhpmax_sf = 15
                'prflstrmax_sf = 20
                'prflessmax_sf = 280
                'prflessspd_sf = 1
                
				central_call "prflset"
            case "shkt"
                central_call "prflblnk"
                
				Entity_Action
				
				'prflidty_str = "Shiny Knight"
                
				'prflactn_str = "movepnchdggr"
                'prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                
				'prflgpic_str = "shkt"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 45
                'prflstrcur_sf = 110
                'prflstrspd_sf = 1
                'prflarmr_sf = 4
                'prflvalu_sf = 17
                'prflpirc_sf = 3
                'prfllv_sf = 1
                'prflhpmax_sf = 45
                'prflstrmax_sf = 110
                'prflessmax_sf = 12
                'prflevad_sf = .12
				
                central_call "prflset"
            case "emgd"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Emerald Guard"
                
				'prflactn_str = "movepnchdggr"
                'prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                
				rr_sf = RND(1)
                IF rr_sf > .1 AND rr_sf <= .4 THEN
                    prflactn_str = prflactn_str + "dggr"
                    prflactnct_str = prflactnct_str+mkl(1)
                END IF
                IF rr_sf > .4 AND rr_sf <= 1 THEN
                    prflactn_str = prflactn_str + "pike"
                    prflactnct_str = prflactnct_str+mkl(1)
                END IF
                
				'prflgpic_str = "emgd"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 40
                'prflstrcur_sf = 140
                'prflstrspd_sf = 2
                'prflarmr_sf = 5
                'prflvalu_sf = 17
                'prflpirc_sf = 3
                'prfllv_sf = 1
                'prflhpmax_sf = 40
                'prflstrmax_sf = 140
                'prflevad_sf = .2
                
				central_call "prflset"
            case "door"
                central_call "prflblnk"

				Entity_Action

                'prflidty_str = "Wooden Door"
                'prflgpic_str = "door"
                
                select case left$(rid_str,3)
                case "loc"
					select case val( right$( rid_str, 1 ) )
					case 1 to 3
						prflactn_str = rid_str
						prflactnct_str = mkl(1)
					end select
                end select

                'prflidty_sf = rid_sf
                'prflhpcur_sf = 140
                'prflstrcur_sf = 140
                'prflarmr_sf = 5
                'prflvalu_sf = 1
                'prfllv_sf = 1
                'prflhpmax_sf = 140
                'prflstrmax_sf = 140
                
				central_call "prflset"
            case "chst"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Treasure Chest"
                'prflgpic_str = "chst"
                
				select case left$(rid_str,3)
                case "loc"
					select case val( right$( rid_str, 1 ) )
					case 1 to 3
						prflactn_str = rid_str
						prflactnct_str = mkl(1)
					end select
                end select
                
				'prflidty_sf = rid_sf
                'prflhpcur_sf = 140
                'prflstrcur_sf = 140
                'prflarmr_sf = 5
                'prflvalu_sf = 1
                'prfllv_sf = 1
                'prflhpmax_sf = 140
                'prflstrmax_sf = 140
                
				central_call "prflset"
            case "imp_"
                central_call "prflblnk"

				Entity_Action

                'prflidty_str = "Little Imp"
                
				'prflactn_str = "movewingfire"
                'prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                
				IF INT(RND(1) * 2) + 1 = 2 THEN
                    prflidty_str = "Merchant"
                    prflactn_str = prflactn_str + "dggrgrplseed"
                    prflactnct_str = prflactnct_str+mkl(1)+mkl(1)+mkl(1)
                END IF
                
				'prflgpic_str = "imp_"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 30
                'prflstrcur_sf = 30
                'prflesscur_sf = 30
                'prflstrspd_sf = 5
                'prflarmr_sf = 1
                'prflvalu_sf = 24
                'prflpirc_sf = 1
                'prfllv_sf = 1
                'prflhpmax_sf = 30
                'prflstrmax_sf = 30
                'prflessmax_sf = 90
                'prflessspd_sf = 3
                'prflevad_sf = .3
                
				central_call "prflset"
            case "chst"
                central_call "prflblnk"
                
				Entity_Action

				'prflidty_str = "Treasure chest"
                
				IF INT(RND(1) * 2) = 1 THEN
                    prflactn_str = "key1"
                    prflactnct_str = mkl(1)
                ELSE
                    prflactn_str = "key2"
                    prflactnct_str = mkl(1)
                END IF
				
                'prflgpic_str = "chst"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 100
                'prfllv_sf = 1
                'prflhpmax_sf = 100
                
				central_call "prflset"
            case "bldr"
				central_call "prflblnk"
                
				Entity_Action
                
				'prflidty_str = "Big boulder"
                'prflactn_str = ""
                'prflgpic_str = "bldr"
                'prflidty_sf = rid_sf
                'prflhpcur_sf = 1000
                'prflarmr_sf = 10
                'prfllv_sf = 1
                'prflhpmax_sf = 1000
                
				central_call "prflset"
			end select
			
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
			
			if Debug_Enabled then
				put ( ( Display_Width - map_capture -> width ) shr 1, ( Display_Height - map_capture -> height ) shr 1 ), map_capture, alpha
    			flip
			end if
			
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

sub Entity_Action
	
	dim as string target = string$( 0, 0 )
	Central_Count += 1
	target = "map" + colon + "Entity_Action" + string$( 1, 32 ) + quot + Entity_Shortname( rfg_str ) + quot
	central_debug target
	
	redim as names_type Entity_Table( any )
	dim as integer count = 0, index = 0
	
	load_names_from_file( ".\gamelogic\prfl\actn\" + Entity_Shortname( rfg_str ) + ".dat", Entity_Table() )
	
	select case sync_names( "case/" + Entity_Shortname( rfg_str ), Entity_Table() )
	case "ok"
	case else
		Central_Close_Out target	
		exit sub
	end select
	
	dim as string profile_actions = string$( 0, 0 ), profile_counts = string$( 0, 0 )
	
	profile_actions = sync_names_using_default("prfl/actn_str", "", Entity_Table() )
	profile_counts = sync_names_using_default("prflactnct_str", "", Entity_Table() )
	
	count = ( len( profile_actions ) + 1 ) \ 5
	
	prflactn_str = string$( 0, 0 )
	prflactnct_str = string$( 0, 0 )
	
	select case profile_actions
	case "%%"
	case else
		for index = 1 to count step 1
			
			prflactn_str += mid$( profile_actions, ( index + 4 ) / 5, 4 )
			
			select case profile_counts
			case "%%"
				prflactnct_str += mkl( 0 )
			case else
				prflactnct_str += mkl( val( mid$( profile_counts, ( index + 4 ) / 5, 4 ) ) )
			end select
			
		next
	end select
	
	sync_entity Entity_Table()

	#ifdef __old_sync_entity__
	prflidty_sf = rid_sf
	
	prflidty_str = sync_names_using_default("prfl/idty_str", Entity_Shortname(), Entity_Table() )
	prflactn_str = sync_names_using_default("prfl/actn_str", Entity_Shortname(), Entity_Table() )'
	prflgpic_str = sync_names_using_default("prfl/gpic_str", Entity_Shortname(), Entity_Table() )
	
	prflidty_sf = val( sync_names_using_default("prfl/idty_sf", "0", Entity_Table() ) )'
	
	prflhpcur_sf = val( sync_names_using_default("prfl/hp/cur_sf", "0", Entity_Table() ) )
	prflstrcur_sf = val( sync_names_using_default("prfl/str/cur_sf", "0", Entity_Table() ) )
	prflesscur_sf = val( sync_names_using_default("prfl/ess/cur_sf", "0", Entity_Table() ) )

	prflhpmax_sf = val( sync_names_using_default("prfl/hp/max_sf", "0", Entity_Table() ) )
	prflstrmax_sf = val( sync_names_using_default("prfl/str/max_sf", "0", Entity_Table() ) )
	prflessmax_sf = val( sync_names_using_default("prfl/ess/max_sf", "0", Entity_Table() ) )
	
	prflhpspd_sf = val( sync_names_using_default("prfl/hp/spd_sf", "0", Entity_Table() ) )
	prflstrspd_sf = val( sync_names_using_default("prfl/str/spd_sf", "0", Entity_Table() ) )
	prflessspd_sf = val( sync_names_using_default("prfl/ess/spd_sf", "0", Entity_Table() ) )
	
	prflarmr_sf = val( sync_names_using_default("prfl/armr_sf", "0", Entity_Table() ) )
	prflpirc_sf = val( sync_names_using_default("prfl/pirc_sf", "0", Entity_Table() ) )
	prflevad_sf = val( sync_names_using_default("prfl/evad_sf", "0", Entity_Table() ) )
		
	prfllv_sf = val( sync_names_using_default("prfl/lv_sf", "0", Entity_Table() ) )
	prflexp_sf = val( sync_names_using_default("prfl/exp_sf", "0", Entity_Table() ) )
	prflvalu_sf = val( sync_names_using_default("prfl/valu_sf", "0", Entity_Table() ) )
	
	#endif
	
	Central_Close_Out target	

end sub

sub sync_entity( Entity_Table( any ) as names_type )	

	prflidty_sf = rid_sf
	
	prflidty_str = sync_names_using_default("prfl/idty_str", Entity_Shortname(), Entity_Table() )
	prflactn_str = sync_names_using_default("prfl/actn_str", Entity_Shortname(), Entity_Table() )'
	prflgpic_str = sync_names_using_default("prfl/gpic_str", Entity_Shortname(), Entity_Table() )
	
	prflidty_sf = val( sync_names_using_default("prfl/idty_sf", "0", Entity_Table() ) )'
	
	prflhpcur_sf = val( sync_names_using_default("prfl/hp/cur_sf", "0", Entity_Table() ) )
	prflstrcur_sf = val( sync_names_using_default("prfl/str/cur_sf", "0", Entity_Table() ) )
	prflesscur_sf = val( sync_names_using_default("prfl/ess/cur_sf", "0", Entity_Table() ) )
		
	prflhpmax_sf = val( sync_names_using_default("prfl/hp/max_sf", "0", Entity_Table() ) )
	prflstrmax_sf = val( sync_names_using_default("prfl/str/max_sf", "0", Entity_Table() ) )
	prflessmax_sf = val( sync_names_using_default("prfl/ess/max_sf", "0", Entity_Table() ) )
	
	prflstrspd_sf = val( sync_names_using_default("prfl/str/spd_sf", "0", Entity_Table() ) )
	prflessspd_sf = val( sync_names_using_default("prfl/ess/spd_sf", "0", Entity_Table() ) )
	
	prflarmr_sf = val( sync_names_using_default("prfl/armr_sf", "0", Entity_Table() ) )
	prflpirc_sf = val( sync_names_using_default("prfl/pirc_sf", "0", Entity_Table() ) )
	prflevad_sf = val( sync_names_using_default("prfl/evad_sf", "0", Entity_Table() ) )

	prfllv_sf = val( sync_names_using_default("prfl/lv_sf", "0", Entity_Table() ) )
	prflexp_sf = val( sync_names_using_default("prfl/exp_sf", "0", Entity_Table() ) )
	prflvalu_sf = val( sync_names_using_default("prfl/valu_sf", "0", Entity_Table() ) )
	
end sub

sub push_entity( Entity_Table( any ) as names_type )	
	
	prflidty_sf = rid_sf
	
	push_names "prfl/idty_str", prflidty_str, Entity_Table()
	push_names "prfl/actn_str", prflactn_str, Entity_Table()
	push_names "prfl/gpic_str", prflgpic_str, Entity_Table()
	
	push_names "prfl/idty_sf", As_String( prflidty_sf ), Entity_Table()
	
	push_names "prfl/hp/cur_sf", As_String( prflhpcur_sf ), Entity_Table()
	push_names "prfl/str/cur_sf", As_String( prflstrcur_sf ), Entity_Table()
	push_names "prfl/ess/cur_sf", As_String( prflesscur_sf ), Entity_Table()
	
	push_names "prfl/hp/spd_sf", As_String( prflhpspd_sf ), Entity_Table()
	push_names "prfl/str/spd_sf", As_String( prflstrspd_sf ), Entity_Table()
	push_names "prfl/ess/spd_sf", As_String( prflessspd_sf ), Entity_Table()

	push_names "prfl/hp/max_sf", As_String( prflhpmax_sf ), Entity_Table()
	push_names "prfl/str/max_sf", As_String( prflstrmax_sf ), Entity_Table()
	push_names "prfl/ess/max_sf", As_String( prflessmax_sf ), Entity_Table()
	
	push_names "prfl/armr_sf", As_String( prflarmr_sf ), Entity_Table()
	push_names "prfl/pirc_sf", As_String( prflpirc_sf ), Entity_Table()
	push_names "prfl/evad_sf", As_String( prflevad_sf ), Entity_Table()

	push_names "prfl/lv_sf", As_String( prfllv_sf ), Entity_Table()
	push_names "prfl/exp_sf", As_String( prflexp_sf ), Entity_Table()
	push_names "prfl/valu_sf", As_String( prflvalu_sf ), Entity_Table()
	
end sub
