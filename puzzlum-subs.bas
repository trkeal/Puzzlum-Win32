#define puzzlum_subs_lib

'puzzlum-win32.bi
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

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\CLV.bi"

	#include once ".\inc\puzzlum-subs.bi"
	#include once ".\inc\puzzlum-vars.bi"

	#include once ".\inc\Central Redirect 1.bi"
	#include once ".\inc\Central Redirect 2.bi"
	
sub ln_roe()
    
	Mouse_Width=320
    Mouse_Height=240
    
	Screen_Width=320
    Screen_Height=240
    
	Display_Width=640
    Display_Height=480
    
	SCREEN 17,32,16
    width 40,30
    screenset 1,0
    setmouse Mouse_Width shr 1, Mouse_Height shr 1, 0

    sync_names("filename/input",Main_Table())

	thispath_str = ".\"
    fontpath_str = ".\gameart\fonts\"
    logopath_str = ".\gameart\logos\"
    spritepath_str = ".\gameart\sprites\"
    palpath_str = ".\gamedata\"
    mappath_str = ".\gamedata\maps\"

    thispath_str = sync_names("path/main",Main_Table())
    fontpath_str = sync_names("path/fonts",Main_Table())
    logopath_str = sync_names("path/logos",Main_Table())
    spritepath_str = sync_names("path/sprites",Main_Table())
    
	palpath_str = sync_names("path/palette",Main_Table())+sync_names("filename/palette",Main_Table())
    
	mappath_str = sync_names("path/maps",Main_Table())
    	
	'future71path_str = "future71\"
    'netplaypath_str = "netplay\"
    'netoutfile_str = "netplayo.bin"
    'netoutmode_li = 67
	
	pal_load palette_filename, pal()

    load_names_from_file ( ".\gamedata\Main Table.dat", Main_Table() )	
    load_names_from_file ( sync_names("filename/input",Main_Table()), Input_Table() )
    load_names_from_file ( sync_names("filename/levels",Main_Table()), Levels_Table() )
    load_names_from_file ( sync_names("filename/map",Main_Table()), Maps_Table() )
    load_names_from_file ( sync_names("filename/attack",Main_Table()), Attack_Table() )

    'pal_load thispath_str + palpath_str + "QBPALVGA.DAT", pal()
    
    clv_glyph_ini clv_glyph()
    
    clv_glyph_ini clv_glyph()
    clv_font_load clv_font(), clv_font_default, clv_font_flag_load, fontpath_str + "mishap22.font.png"
    clv_font_load clv_font(), 1, clv_font_flag_load, fontpath_str + "roe00.font.png"

    clv_buffer_ini clv_buffer(), Screen_Width, Screen_Height
    clv_buffer_cls clv_buffer(), clv_buffer_splash

    gtmp=png_load( ".\gameart\logos\roe.splash.png" )
    gtmpt=imagecreate(gtmp->width,gtmp->height)
    'line gtmpt,(0,0)-(gtmpt->width-1,gtmpt->height-1),rgb(0,0,0),bf
    clv_draw_image clv_buffer(),clv_buffer_splash,0, 100 - 24, gtmp, gtmpt
    png_destroy gtmp
    imagedestroy gtmpt
    
    clv_buffer_cls clv_buffer(), clv_buffer_bar
    
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_bar, clv_glyph(), (1-1) shl 3, (25-1) shl 3, "[(F1)Save|(F2)Load|(F3)Shop]"
    
    do
        restart_roe=0
        clv_buffer_focus=clv_buffer_splash
        while len(inkey)>0
            clv_buffer_stack clv_buffer()
        wend

       central "startup"
                
        while len(inkey)=0
            clv_buffer_stack clv_buffer()
        wend

        c_str=lcase("t")

        do
            if restart_roe then exit do
            if Compare_Key( c_str, "Title", Input_Table() ) OR (ym_si = 3 AND xm_si = statx_si + 5 AND Lb_si = -1) then
                clv_buffer_focus=clv_buffer_title
                central "starttitle"
            end if
            exitcommand=0
            do
                central "command"
                exitcommand3=0
                do
                    central "command3"
                    if (lcase(c_str) = "t") OR (ym_si = 3 AND xm_si = statx_si + 5 AND Lb_si = -1) then
                    exitcommand3=NOT(0)
                        exitcommand=not(0)
                    end if
                    if restart_roe then exit do
                loop while (INSTR(1, "L ||", RIGHT(" " + c_str, 1)) = 0) and not exitcommand3
                if restart_roe then exit do
            loop while INSTR(1, "L||", RIGHT(" " + c_str, 1)) > 0
            if restart_roe then exit do
            central "main"
            if restart_roe then exit do
        loop
    loop
end sub

sub ln_startup()

	wipe_table( Bundle_Table() )
	
	wipe_table( Names_Table() )
	wipe_table( Levels_Table() )
	wipe_table( Maps_Table() )
	wipe_table( Rose_Table() )

	bundle_filename = ".\gamedata\Bundle.dat"
	load_names_from_file( bundle_filename, Bundle_Table() )
	
	screenres 640,480,32,16
	screenset 1,0
	cls
	
	dim as string cis = ""
	
	print quot + sync_names( "filename/input", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "filename/input", Bundle_Table() ), Input_Table() )
    
	print quot + sync_names( "filename/help", Bundle_Table() ) + quot
	 help_filename = sync_names( "filename/help", Bundle_Table() ) 
    
	print quot + sync_names( "filename/palette", Bundle_Table() ) + quot
	palette_filename = sync_names( "filename/palette", Bundle_Table() ) 
    
	print quot + sync_names( "filename/input", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "filename/input", Bundle_Table() ), Input_Table() )
	
	print quot + sync_names( "filename/names", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "filename/names", Bundle_Table() ), Names_Table() )
		
	print quot + sync_names( "filename/levels", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "filename/levels", Bundle_Table() ), Levels_Table() )
	
	print quot + sync_names( "path/maps", Bundle_Table() ) + sync_names( "filename/map", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "path/maps", Bundle_Table() ) + sync_names( "filename/map", Bundle_Table() ), Maps_Table() )
  	
	print quot + sync_names( "filename/rose", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "filename/rose", Bundle_Table() ), Rose_Table() )
	
	flip
	
	if wait_key() = chr$( 27 ) then end
	cls
	
	'level up data
	print "level up data"
	print "count" + eq + ltrim$(str$(val( sync_names( "levels/count", Levels_Table() ) ) ) )
    FOR t_si = 0 TO val( sync_names( "levels/count", Levels_Table() ) ) step 1
		
		l_sia(t_si) = val( sync_names( "levels/" + ltrim$( str$( t_si ) ), Levels_Table() ) )
		print ltrim$(str$(t_si)) + eq +  ltrim$(str$(val( sync_names( "levels/" + ltrim$( str$( t_si ) ), Levels_Table() ) ) ) )
	
	NEXT t_si
	
	flip
	
	if wait_key() = chr$( 27 ) then end
	cls
	
	locate 1, 1

	print "Compass Rose"
	'directional axis matrix (Compass Rose)
	
	locate 2, 1
	
	print "rose/card/count" + eq + quot + sync_names("rose/card/count",Rose_Table()) + quot

	locate 2, 40
	print "rose/axis/count" + eq + quot + sync_names("rose/card/count",Rose_Table()) + quot

	dim as string thisaxis = ""

	for roseaxis=1 to val(sync_names("rose/axis/count",Rose_Table())) step 1
		
		thisaxis = sync_names( "rose/axis/"+ltrim$(str$(roseaxis)), Rose_Table() )
		
		locate ( roseaxis - 1 ) + 5, 10
		print "rose/axis/"+ltrim$(str$(roseaxis)) + eq + quot + thisaxis + quot

	for rosecard=0 to val(sync_names("rose/card/count",Rose_Table())) step 1
				
		d_sia(rosecard, roseaxis) = val(sync_names("rose/card/"+ltrim$(str$(rosecard))+"/axis/"+thisaxis,Rose_Table()))
		
		locate rosecard+20, (roseaxis-1) * 40 + 1
		print "rose/card/"+ltrim$(str$(rosecard))+"/axis/"+thisaxis + eq + quot + ltrim$( str$( d_sia(rosecard, roseaxis) ) ) + quot
		
		locate rosecard+50, (roseaxis-1) * 40 + 1		
		print ltrim$(str$(d_sia(rosecard, roseaxis)))
	
	next rosecard
	next roseaxis
	
	flip
	if wait_key() = chr$( 27 ) then end
	cls

  	'load_names_from_file( thispath_str + mappath_str + map_str, Maps_Table() )
  	load_names_from_file( mappath_str + map_str, Maps_Table() )

    'OPEN thispath_str + mappath_str + map_str FOR INPUT AS 1    
	
	'INPUT #1, 
	mapname_str = sync_names( "map/name", Maps_Table() )

	mapid_str = sync_names( "map/id", Maps_Table() )
    'INPUT #1, 
	AA_si = val( sync_names( "map/AA", Maps_Table() ) )
    'INPUT #1, 
	DD_si = val( sync_names( "map/DD", Maps_Table() ) )
	
    ex_si = fix(AA_si / 2) 'map pointer x
    dy_si = fix(DD_si / 2) 'map pointer y
    mdx_si = fix(40 / 2) 'screen cursor x
    mdy_si = fix(30 / 2) 'screen cursor y
    
    textcolor_si = .01
    textdelay_sf = 2.5: '.8 '.55
    win_si = 4

    RANDOMIZE TIMER
    RESTORE  

    FOR ttt_si = 0 TO win_si
        READ win_sia(1 + (ttt_si - 1) * 2)
        READ win_sia(2 + (ttt_si - 1) * 2)
    NEXT ttt_si
         
    
	load_names_from_file( thispath_str + lvuppath_str + lvup_str, Levels_Table() )
	'level up data
    FOR t_si = 0 TO val( sync_names( "levels/count", Levels_Table() ) )
        l_sia(t_si) = val( sync_names( "levels/" + ltrim$( str$( t_si ) ), Levels_Table() ) )
    NEXT t_si
    
    ctrl_str = "pndximp_"
    IF INT(RND(1) * 2) + 1 = 2 THEN ctrl_str = ctrl_str + "dust"
    FOR Ty_si = 1 TO DD_si
        
		bg_str = sync_names( "map/row/" + ltrim$( str$( Ty_si ) )+"/bg", Maps_Table() )
		fg_str = sync_names( "map/row/" + ltrim$( str$( Ty_si ) )+"/fg", Maps_Table() )
		rg_str = sync_names( "map/row/" + ltrim$( str$( Ty_si ) )+"/rg", Maps_Table() )
		
		'INPUT #1, 
		
		R_str = ltrim$( str$( Ty_si ) )
        
		'LINE INPUT #1, bg_str
        'LINE INPUT #1, fg_str
        'LINE INPUT #1, rg_str
        FOR Tx_si = 1 TO AA_si
            rbg_str = MID(bg_str, (Tx_si - 1) * 5 + 1, 4)
            rfg_str = MID(fg_str, (Tx_si - 1) * 5 + 1, 4)
            rid_sf = VAL(MID(rg_str, (Tx_si - 1) * 5 + 1, 4))
            e_stra(Rose_Calc( Tx_si, Ty_si ), 2) = "____" + rbg_str
            e_stra(Rose_Calc( Tx_si, Ty_si ), 3) = MKL(0) + "____" + MKL(0) 'command_str
            e_stra(Rose_Calc( Tx_si, Ty_si ), 4) = "________" 'graphicsaction_str
            select case rfg_str
            case "____"
                central "prflblnk"
                prflidty_sf = rid_sf
                central "prflset"
            case "spdr"
                central "prflblnk"
                prflidty_str = "Spider"
                prflactn_str = "movebiteweb_"
                prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                prflgpic_str = "spdr"
                prflidty_sf = rid_sf
                prflhp_sf = 10
                prflstr_sf = 20
                prflspd_sf = 1
                prflarmr_sf = 1
                prflvalu_sf = 5
                prflpirc_sf = 1
                prfllv_sf = 1
                prflhpmax_sf = 10
                prflstrmax_sf = 20
                prflessmax_sf = 380
                prflessspd_sf = 3
                SELECT CASE mapname_str
                CASE "0001"
                    IF prflidty_sf = 1 THEN
                        prflactn_str = prflactn_str + "vnom"
                        prflactnct_str = prflactnct_str+mkl(1)
                    END IF
                END SELECT
                central "prflset"
            case "wall"
                central "prflblnk"
                prflidty_str = "wall"
                prflgpic_str = "wall"
                prflidty_sf = 2
                central "prflset"
            case "web_"
                central "prflblnk"
                prflidty_str = "Web"
                prflactn_str = "spdr"
                prflactnct_str = mkl(1)
                prflgpic_str = "web_"
                prflidty_sf = rid_sf
                prflhp_sf = 40
                prflstr_sf = 50
                prflspd_sf = 1
                prflvalu_sf = 1
                prfllv_sf = 1
                prflhpmax_sf = 40
                prflstrmax_sf = 50
                prflessmax_sf = 380
                prflessspd_sf = 2
                central "prflset"
            case "grml"
                central "prflblnk"
                prflidty_str = "Gremlin"
                prflactn_str = "movebitepnch"
                prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                IF RND(1) > .2 THEN
                    prflactn_str = prflactn_str + "dggr"
                    prflactnct_str = prflactnct_str+mkl(1)
                END IF
                prflgpic_str = "grml"
                prflidty_sf = rid_sf
                prflhp_sf = 25
                prflstr_sf = 90
                prflspd_sf = 1
                prflarmr_sf = 1
                prflvalu_sf = 5
                prflpirc_sf = 2
                prfllv_sf = 1
                prflhpmax_sf = 25
                prflstrmax_sf = 90
                central "prflset"
            case "pndx"
                central "prflblnk"
                prflidty_str = "Poindexter"
                prflactn_str = "wstf"
                prflgpic_str = "pndx"
                prflidty_sf = rid_sf
                prflhp_sf = 30
                prflstr_sf = 90
                prfless_sf = 0
                prflspd_sf = 3
                prflarmr_sf = 2
                prflexp_sf = 10
                prflvalu_sf = 15
                prflpirc_sf = 2
                prfllv_sf = 1
                prflhpmax_sf = 30
                prflstrmax_sf = 90
                prflessmax_sf = 30
                prflessspd_sf = .1
                prflevad_sf = .07
                central "prflset"
            case "dtby"
                central "prflblnk"
                prflidty_str = "Dust Bunny"
                prflactn_str = "movebitekickdtbydust"
                prflgpic_str = "dtby"
                prflidty_sf = rid_sf
                prflhp_sf = 15
                prflstr_sf = 20
                prfless_sf = 5
                prflspd_sf = 1.2
                prflvalu_sf = 2
                prfllv_sf = 1
                prflhpmax_sf = 15
                prflstrmax_sf = 20
                prflessmax_sf = 280
                prflessspd_sf = 1
                central "prflset"
            case "shkt"
                central "prflblnk"
                prflidty_str = "Shiny Knight"
                prflactn_str = "movepnchdggr"
                prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                prflgpic_str = "shkt"
                prflidty_sf = rid_sf
                prflhp_sf = 45
                prflstr_sf = 110
                prflspd_sf = 1
                prflarmr_sf = 4
                prflvalu_sf = 17
                prflpirc_sf = 3
                prfllv_sf = 1
                prflhpmax_sf = 45
                prflstrmax_sf = 110
                prflessmax_sf = 12
                prflevad_sf = .12
                central "prflset"
            case "emgd"
                central "prflblnk"
                prflidty_str = "Emerald Guard"
                prflactn_str = "movepnchdggr"
                prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                rr_sf = RND(1)
                IF rr_sf > .1 AND rr_sf <= .4 THEN
                    prflactn_str = prflactn_str + "dggr"
                    prflactnct_str = prflactnct_str+mkl(1)
                END IF
                IF rr_sf > .4 AND rr_sf <= 1 THEN
                    prflactn_str = prflactn_str + "pike"
                    prflactnct_str = prflactnct_str+mkl(1)
                END IF
                prflgpic_str = "emgd"
                prflidty_sf = rid_sf
                prflhp_sf = 40
                prflstr_sf = 140
                prflspd_sf = 2
                prflarmr_sf = 5
                prflvalu_sf = 17
                prflpirc_sf = 3
                prfllv_sf = 1
                prflhpmax_sf = 40
                prflstrmax_sf = 140
                prflevad_sf = .2
                central "prflset"
            case "door"
                central "prflblnk"
                prflidty_str = "Door"
                prflgpic_str = "door"
                select case rid_sf
                case 1
                    prflactn_str = "loc1"
                    prflactnct_str = mkl(1)
                case 2
                    prflactn_str = "loc2"
                    prflactnct_str = mkl(1)
                case 3
                    prflactn_str = "loc3"
                    prflactnct_str = mkl(1)
                end select
                prflidty_sf = rid_sf
                prflhp_sf = 140
                prflstr_sf = 140
                prflarmr_sf = 5
                prflvalu_sf = 1
                prfllv_sf = 1
                prflhpmax_sf = 140
                prflstrmax_sf = 140
                central "prflset"
            case "imp_"
                central "prflblnk"
                prflidty_str = "Little Imp"
                prflactn_str = "movewingfire"
                prflactnct_str = mkl(1)+mkl(1)+mkl(1)
                IF INT(RND(1) * 2) + 1 = 2 THEN
                    prflidty_str = "Merchant"
                    prflactn_str = prflactn_str + "dggrgrplseed"
                    prflactnct_str = prflactnct_str+mkl(1)+mkl(1)+mkl(1)
                END IF
                prflgpic_str = "imp_"
                prflidty_sf = rid_sf
                prflhp_sf = 30
                prflstr_sf = 30
                prfless_sf = 30
                prflspd_sf = 5
                prflarmr_sf = 1
                prflvalu_sf = 24
                prflpirc_sf = 1
                prfllv_sf = 1
                prflhpmax_sf = 30
                prflstrmax_sf = 30
                prflessmax_sf = 90
                prflessspd_sf = 3
                prflevad_sf = .3
                central "prflset"
            case "chst"
                central "prflblnk"
                prflidty_str = "Treasure chest"
                IF INT(RND(1) * 2) = 1 THEN
                    prflactn_str = "key1"
                    prflactnct_str = mkl(1)
                ELSE
                    prflactn_str = "key2"
                    prflactnct_str = mkl(1)
                END IF
                prflgpic_str = "chst"
                prflidty_sf = rid_sf
                prflhp_sf = 100
                prfllv_sf = 1
                prflhpmax_sf = 100
                central "prflset"
            case "bldr"
                central "prflblnk"
                prflidty_str = "Big boulder"
                prflactn_str = ""
                prflgpic_str = "bldr"
                prflidty_sf = rid_sf
                prflhp_sf = 1000
                prflarmr_sf = 10
                prfllv_sf = 1
                prflhpmax_sf = 1000
                central "prflset"
            end select
        NEXT Tx_si
    NEXT Ty_si
    CLOSE 1
end sub

sub ln_starttitle()
    do
        clv_buffer_focus=clv_buffer_title
        'SCREEN 14, 32, 16
        'screenset 1,0
        'WIDTH 40, 30
        'COLOR rgb(255,255,255),rgb(0,0,131)'pal(15), pal(1)
        clv_buffer_cls clv_buffer(), clv_buffer_title
        colr_si = 15
        central "title", clv_buffer(), clv_buffer_title
        colr_si = 11

        texts_str=space(1)+"Puzzlum : Realm of Existence"
        central "showtext", clv_buffer(), clv_buffer_title
        texts_Str=space(1)+"Build: puzzlum-fbc068.200908170813"
        central "showtext", clv_buffer(), clv_buffer_title
        print
        texts_str=space(1)+"Created 1989-2009 Timothy Robert Keal"
        central "showtext", clv_buffer(), clv_buffer_title
        texts_str=space(1)+"Released under Gnu Public License 2.0"
        central "showtext", clv_buffer(), clv_buffer_title
        texts_str=space(1)+"http://www.gnu.org/copyleft/gpl.html"
        print
        central "showtext", clv_buffer(), clv_buffer_title
        texts_str=space(1)+"http://puzzlum.retromachineshop.com/"
        central "showtext", clv_buffer(), clv_buffer_title
        texts_str=space(1)+"irc://chat.freenode.net/puzzlum"
        central "showtext", clv_buffer(), clv_buffer_title
        texts_str=space(1)+"mailto:jargon@juno.com"
        central "showtext", clv_buffer(), clv_buffer_title
        
        locate 17,1
        colr_si = 9
        texts_str = " (H)elp"
        central "showtext", clv_buffer(), clv_buffer_title
        PRINT
        texts_str = " (C)ontinue"
        central "showtext", clv_buffer(), clv_buffer_title
        PRINT
        texts_str = " (R)estart"
        central "showtext", clv_buffer(), clv_buffer_title
        PRINT
        texts_str = " (Q)uit"
        central "showtext", clv_buffer(), clv_buffer_title
        clv_buffer_stack clv_buffer()
        central "commandwait"
        IF Compare_Key( c_str, "Restart", Input_Table() ) OR (ym_si = 21 AND xm_si = 3 AND Lb_si = -1) THEN
            central "screenset"
            restart_roe=1 'RUN
            exit do
        END IF
        IF Compare_Key( c_str, "Quit", Input_Table() ) OR (ym_si = 23 AND xm_si = 3 AND Lb_si = -1) THEN
            central "screenset"
            END
        END IF
        IF Compare_Key( c_str, "Help", Input_Table() ) OR (ym_si = 17 AND xm_si = 3 AND Lb_si = -1) THEN
            central "starthelp"
        END IF
    loop while not ( Compare_Key( c_str, "Continue", Input_Table() ) ) AND NOT (ym_si = 19 AND xm_si = 3 AND Lb_si = -1)
end sub

sub ln_starthelp()
    dim as integer Filemode = freefile
	
	clv_buffer_focus=clv_buffer_help
    OPEN thispath_str + helppath_str + helpfilename_str FOR INPUT AS Filemode
    do while not eof(Filemode)
        LINE INPUT #Filemode, R_str
        IF R_str = "þ page start" THEN
            clv_buffer_cls clv_buffer(), clv_buffer_help
            central "title", clv_buffer(), clv_buffer_help
            R_Str=chr(0)
        END IF
        IF R_str = "þ page end" THEN
            LOCATE 22, 1
            colr_si = 9
            texts_str = " (C)ontinue"
            central "showtext", clv_buffer(), clv_buffer_help
            PRINT
            texts_str = " (T)itle"
            central "showtext", clv_buffer(), clv_buffer_help
            do
                clv_buffer_stack clv_buffer()
                central "commandwait"
                IF Compare_Key( c_str, "Title", Input_Table() ) OR (ym_si = 24 AND xm_si = 3 AND Lb_si = -1) THEN
                    CLOSE Filemode
                    exit sub
                END IF
            loop while NOT (Compare_Key( c_str, "Continue", Input_Table() )) OR (ym_si = 22 AND xm_si = 3 AND Lb_si = -1)
            R_Str=chr(0)
        end if
        IF R_str = "þ end" THEN
            CLOSE Filemode            
            R_Str=chr(0)
            exit sub
        END IF
        IF LEFT(R_str, 7) = "þ COLOR" THEN
            colr_si = VAL(RIGHT(R_str, LEN(R_str) - 7))
            R_str=chr(0)
        END IF
        texts_str = R_str
        if R_Str <> chr(0) then
            IF R_str <> space(0) THEN
                central "showtext", clv_buffer(), clv_buffer_help
            else
                PRINT
            END IF
        end if
        'clv_buffer_stack clv_buffer()
    loop
    close Filemode
    'netscreenout
    clv_buffer_stack clv_buffer()
    'COLOR rgb(255,255,255),rgb(0,0,0)'pal(15), pal(0)
    cinput
end sub

sub ln_main()
    FOR Tx_si = 1 TO AA_si
        FOR Ty_si = 1 TO DD_si
            a_si = 0
            d_si = 0
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 9) = 0 THEN
                G_dfa(Rose_Calc( Tx_si, Ty_si ), 9) = 1
                MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
                central "getaction"
                IF action_str = "zzzz" AND dis_si > 0 THEN
                    dis_si = dis_si - 1
                    central "putaction"
                END IF
                SELECT CASE CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4))
                CASE CVL("wall")
                CASE CVL("spdr")
                    central "crtnspdr"
                CASE CVL("web_")
                    central "crtnweb"
                CASE CVL("dtby")
                    central "crtndtby"
                CASE CVL("grml")
                    central "crtngrml"
                CASE CVL("shkt")
                    central "crtnshkt"
                CASE CVL("emgd")
                    central "crtnemgd"
                CASE CVL("imp_")
                    central "crtnimp"
                CASE CVL("fire")
                    central "crtnfire"
                CASE CVL("pndx")
                    central "crtnpndx"
                CASE CVL("ccts")
                    central "crtnccts"
                CASE CVL("bldr")
                    central "crtnbldr"
                CASE CVL("dust")
                    central "crtndust"
                END SELECT
            END IF
        NEXT Ty_si
    NEXT Tx_si
    FOR Tx_si = 1 TO AA_si
        FOR Ty_si = 1 TO DD_si
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 9) = 0
        NEXT Ty_si
    NEXT Tx_si
    Exit Sub
end sub

sub ln_command()
    clv_buffer_focus=clv_buffer_portal
    Tx_si = ex_si
    Ty_si = dy_si
    clv_buffer_cls clv_buffer(), clv_buffer_draw
    central "portal"
    clv_buffer_stack clv_buffer()
    central "command2"
    Exit Sub
end sub

sub ln_command2()
    clv_buffer_cls clv_buffer(), clv_buffer_menu

    frame_title 2, 24
    
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        clv_buffer_focus=clv_buffer_status
        statx_si = 24
        central "status"
    END IF
    Exit Sub
end sub

sub ln_command3()
    dim as string filename = string$( 0, 0 )
	filename = "0002"
	redim Names_Table(0 to 0):Names_Table(0).label = "":Names_Table(0).value = ""
    redim as string dump(0,0)
    dim as short X, Y, Z
    dim as string ActnNav(0 to 4)
    cinput
    IF ym_si = 2 AND xm_si >= 24 AND xm_si <= 24+7-1 THEN
        titled_si = 1
        central "command2"
    else
        titled_si = 0
        central "command2"
    END IF
    cursorput
    'netscreenout
    clv_buffer_stack clv_buffer()
    
	select case c_str
    case "&HFF3B" 'F1 (save savegame)
		savegame_save( filename, Save_Table() )

        c_str="t"
        central "starttitle"
        exitcommand3=not(0)
        Exit Sub
    case "&HFF3C" 'F2 (load savegame)
		savegame_load( filename, Save_Table() )
        c_str="t"
        central "starttitle"
        exitcommand3=not(0)
        Exit Sub
    end select
    IF am_si > 0 THEN
        statx_si = 24
        central "getaction"
        IF (Compare_Key( c_str, "Shop", Input_Table() )) OR (((ym_si = 5) AND (xm_si=26) AND (Lb_si=-1))) THEN 'F3
            c_str = "L"
            central "paylevelup"
            exitcommand3=not(0)
            Exit Sub
        END IF
        select case c_str
        case "&H20" 'Space
            d_si = 0
            dis_si = 0
            central "putaction"
            exitcommand3=not(0)
            Exit Sub
        case "&HFF48" 'Up
            d_si = 1
            dis_si = 0
            central "putaction"
            exitcommand3=not(0)
            Exit Sub
        case "&HFF4D" 'Right
            d_si = 2
            dis_si = 0
            central "putaction"
            exitcommand3=not(0)
            Exit Sub
        case "&HFF50" 'Down
            d_si = 3
            dis_si = 0
            central "putaction"
            exitcommand3=not(0)
            Exit Sub
        case "&HFF4B" 'Left
            d_si = 4
            dis_si = 0
            central "putaction"
            exitcommand3=not(0)
            Exit Sub
        end select
        IF ((ym_si=10) AND (xm_si=statx_si+1) AND (Lb_si=-1)) AND not(d_si=0) THEN
            d_si = 0
            dis_si = 0
            central "putaction"
            central "command2"
        END IF
        IF ((ym_si=9) AND (xm_si=statx_si+1) AND (Lb_si=-1)) AND not(d_si=1) THEN
            d_si = 1
            dis_si = 0
            central "putaction"
            central "command2"
        END IF
        IF ((ym_si=10) AND (xm_si=statx_si+2) AND (Lb_si=-1)) AND not(d_si=2) THEN
            d_si = 2
            dis_si = 0
            central "putaction"
            central "command2"
        END IF
        IF ((ym_si=11) AND (xm_si=statx_si+1) AND (Lb_si=-1)) AND not(d_si=3) THEN
            d_si = 3
            dis_si = 0
            central "putaction"
            central "command2"
        END IF
        IF ((ym_si = 10) AND (xm_si=statx_si) AND (Lb_si=-1)) AND not(d_si=4) THEN
            d_si = 4
            dis_si = 0
            central "putaction"
            central "command2"
        END IF
        if not ((action_str="zzzz") AND (dis_si>0)) then
            if (Lb_si=-1) then
                IF (xm_si>=statx_si) and (xm_si<=statx_si+5*3-1) and (ym_si>=14) and (ym_si<=23) THEN
                    X=fix((xm_si-statx_si)/3)
                    Y=fix((ym_si-14)/3)
                    Z=1+X+Y*5
                    if (Z>=1) and (Z<=LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1))/4) then
                        AA_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (Z*4)-3, 4)
                        IF action_str <> AA_str THEN
                            action_str = AA_str
                        ELSE
                            action_str = "____"
                        END IF
                        c_str = "||"
                        'exitcommand3=not(0)
                    END IF
                END IF
            else
                ActnNav(0)=action_str
                ActnNav(1)=mkl(0)
                ActnNav(2)=e_stra(Rose_Calc( Tx_si, Ty_si ), 1)
                ActnNav(3)=mkl(len(ActnNav(2))/4)
                if cvl(ActnNav(3))>0 then
                    for Z=1 to cvl(ActnNav(3))
                        AA_str=MID(ActnNav(2), (Z*4)-3, 4)
                        if AA_str = ActnNav(0) THEN
                            ActnNav(1)=mkl(Z)
                            Z=cvl(ActnNav(3))+1
                        end if
                    next
                    if cvl(ActnNav(1))>0 then
                        select case c_str
                        case "&HFF47" 'Home
                            ActnNav(1)=mkl(5*fix((cvl(ActnNav(1))-1)/5)+((cvl(ActnNav(1))+9-1) mod 5)+1)
                        case "&HFF4F" 'End
                            ActnNav(1)=mkl(5*fix((cvl(ActnNav(1))-1)/5)+((cvl(ActnNav(1))+9+1) mod 5)+1)
                        case "&HFF49" 'Page Up
                            ActnNav(1)=mkl(cvl(ActnNav(1))-5)
                            if cvl(ActnNav(1))<1 then
                                ActnNav(1)=mkl(cvl(ActnNav(1))+cvl(ActnNav(3)))
                            end if
                        case "&HFF51" 'Page Down
                            ActnNav(1)=mkl(cvl(ActnNav(1))+5)
                            if cvl(ActnNav(1))>cvl(ActnNav(3)) then                        
                                ActnNav(1)=mkl(cvl(ActnNav(1))-cvl(ActnNav(3)))                    
                            end if
                        end select
                        action_str=mid(ActnNav(2),cvl(ActnNav(1))*4-3,4)
                    end if
                end if
            end if
        end if
        central "putaction"
        st_sf = TIMER
    END IF
    statx_si = 24
    IF (Compare_Key( c_str, "Title", Input_Table() )) OR ((ym_si = 2) AND (xm_si>=statx_si) AND (xm_si<=statx_si+7-1) AND Lb_si = -1) THEN
        central "starttitle"
        Exit Sub
    END IF
    IF (Lb_si=-1) and (ym_si>=2) and (ym_si<=2+7*3-1) THEN
        IF (xm_si>=2) AND (xm_si<=2+7*3-1) THEN
            tempy_si=fix((ym_si-2)/3)-3+dy_si
            tempx_si=fix((xm_si-2)/3)-3+ex_si
            dy_si=tempy_si
            ex_si=tempx_si
            c_str="||"
        END IF
    END IF
    SELECT CASE ex_si
    CASE IS < 1
        ex_si = 1
    CASE IS > AA_si
        ex_si = AA_si
    END SELECT
    SELECT CASE dy_si
    CASE IS < 1
        dy_si = 1
    CASE IS > DD_si
        dy_si = DD_si
    END SELECT
    IF Rb_si = -1 THEN
        c_str = " "
    END IF
end sub   

sub ln_swapdata()
    FOR t_si = 0 TO 1
        SWAP e_stra(Rose_Calc( Tx_si, Ty_si ), t_si), e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, t_si)
    NEXT t_si
    temp1_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4)
    temp2_str = MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4)
    SWAP temp1_str, temp2_str
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) = temp1_str
    MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) = temp2_str
    FOR t_si = 3 TO 4
        SWAP e_stra(Rose_Calc( Tx_si, Ty_si ), t_si), e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, t_si)
    NEXT t_si
    FOR t_si = 0 TO 16
        SWAP G_dfa(Rose_Calc( Tx_si, Ty_si ), t_si), G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, t_si)
    NEXT t_si
    Exit Sub
end sub

sub ln_attack()
    
	dim as string attk = string$( 0,0 )
	
	attk = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4)
	
	select case sync_names( "attk/"+MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4)+"/valid", Attack_Table())
	case "%%"
		MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
		MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
	case else
		central "attk_table", ( attk, Attack_Table() )
	end select
	
	#ifdef __old__
	SELECT CASE CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4))
    CASE CVL("bite")
        central "attkbite"
    CASE CVL("pnch")
        central "attkpnch"
    CASE CVL("kick")
        central "attkkick"
    CASE CVL("vnom")
        central "attkvnom"
    CASE CVL("dggr")
        central "attkdggr"
    CASE CVL("pike")
        central "attkpike"
    CASE CVL("cure")
        central "usecure"
    CASE CVL("fire")
        central "attkfire"
    CASE ELSE
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
    END SELECT
	#endif
	
    Exit Sub
end sub

sub ln_battle()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) >= str_use_si AND G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= ess_use_si THEN
        IF 1 = 1 THEN
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = attk_pict_str
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = attk_name_str
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - str_use_si
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - ess_use_si
            evadeattack = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 15)
            evadeattack = evadeattack + RND(1) * (1 - evadeattack)
            attackblocked = hp_dmg_si * (evadeattack) - G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 5)
            IF attackblocked < 0 THEN attackblocked = 0
            hp_dmg_si = hp_dmg_si * (1 - evadeattack) + attackblocked
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) - hp_dmg_si
            central "battleattack"
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) <= 0 THEN
                central "victory"
            END IF
        END IF
    ELSE
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
    END IF
    Exit Sub
end sub

sub ln_attkbite()
    attk_pict_str = "bite"
    attk_name_str = "bite"
    str_use_si = 10
    ess_use_si = 0
    hp_dmg_si = 5 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    str_dmg_si = 2
    central "battle"
    Exit Sub
end sub

sub ln_attkpnch()
    attk_pict_str = "pnch"
    attk_name_str = "pnch"
    str_use_si = 12
    ess_use_si = 0
    hp_dmg_si = 3 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 6)
    str_dmg_si = 2 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 8)
    central "battle"
    Exit Sub
end sub

sub ln_attkwstf()
    attk_pict_str = "wstf"
    attk_name_str = "wstf"
    str_use_si = 20
    ess_use_si = 0
    hp_dmg_si = 5 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    str_dmg_si = 4 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 6)
    central "battle"
    Exit Sub
end sub

sub ln_attkkick()
    attk_pict_str = "kick"
    attk_name_str = "kick"
    str_use_si = 14
    ess_use_si = 0
    hp_dmg_si = 4 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 5)
    str_dmg_si = 3 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 7)
    central "battle"
    Exit Sub
end sub

sub ln_attkvnom()
    attk_pict_str = "vnom"
    attk_name_str = "vnom"
    str_use_si = 0
    ess_use_si = 15
    hp_dmg_si = 7 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    str_dmg_si = 10 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    central "battle"
    Exit Sub
end sub

sub ln_attkdggr()
    attk_pict_str = "dggr"
    attk_name_str = "dggr"
    str_use_si = 18
    ess_use_si = 0
    hp_dmg_si = 8 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    str_dmg_si = 1 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 10)
    central "battle"
    Exit Sub
end sub

sub ln_attkpike()
    attk_pict_str = "pike"
    attk_name_str = "pike"
    str_use_si = 24
    ess_use_si = 0
    hp_dmg_si = 12 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 3)
    str_dmg_si = 8 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 5)
    central "battle"
    Exit Sub
end sub

sub ln_attkburn()
    attk_pict_str = "____"
    attk_name_str = "burn"
    str_use_si = 5
    ess_use_si = 5
    hp_dmg_si = 12 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 2)
    str_dmg_si = 15 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    central "battle"
    IF MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) = "fire" THEN
        central "gone"
    END IF
    Exit Sub
end sub

sub ln_attkfire()
    attk_pict_str = "____"
    attk_name_str = "fire"
    str_use_si = 5
    ess_use_si = 20
    hp_dmg_si = 15 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 2)
    str_dmg_si = 20 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 4)
    central "battle"
    Exit Sub
end sub

sub ln_attkweb()
    attk_pict_str = "____"
    attk_name_str = "web_"
    str_use_si = 22
    ess_use_si = 0
    hp_dmg_si = 0
    str_dmg_si = 15 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 5)
    central "battle"
    Exit Sub
end sub

sub ln_attktngl()
    attk_pict_str = "____"
    attk_name_str = "tngl"
    str_use_si = 0
    ess_use_si = 0
    hp_dmg_si = 0
    str_dmg_si = 10 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 6)
    central "battle"
    Exit Sub
end sub

sub ln_attklash()    
	attk_pict_str = "____"
    attk_name_str = "lash"
    str_use_si = 0
    ess_use_si = 0
    hp_dmg_si = 5 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 5)
    str_dmg_si = 8 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 7)
    central "battle"
    Exit Sub
end sub

sub ln_attk_table( attk as string = "%%", Attack_Table( Any ) As Names_Type )
	
	dim as integer level = G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)
		
	attk_pict_str = sync_names( "attk/"+attk+"/pict", Attack_Table())
	attk_name_str = sync_names( "attk/"+attk+"/name", Attack_Table())

	hp_use_si = val(sync_names( "attk/"+attk+"/hp/use", Attack_Table()))
	str_use_si = val(sync_names( "attk/"+attk+"/str/use", Attack_Table()))
	ess_use_si = val(sync_names( "attk/"+attk+"/ess/use", Attack_Table()))
	
	hp_dmg_si = val(sync_names( "attk/"+attk+"/hp/dmg", Attack_Table()))
	str_dmg_si = val(sync_names( "attk/"+attk+"/str/dmg", Attack_Table()))
	ess_dmg_si = val(sync_names( "attk/"+attk+"/ess/dmg", Attack_Table()))

	hp_dmg_bonus_str = sync_names( "attk/"+attk+"/hp/dmg/bonus", Attack_Table())
	str_dmg_bonus_str = sync_names( "attk/"+attk+"/str/dmg/bonus", Attack_Table())
	ess_dmg_bonus_str = sync_names( "attk/"+attk+"/ess/dmg/bonus", Attack_Table())

	if left$(hp_dmg_bonus_str,len("Level/"))="Level/" then
		hp_dmg_si += level / val(mid$(hp_dmg_bonus_str,len("Level/")+1))
	else
		hp_dmg_si += 0
	end if

	if left$(str_dmg_bonus_str,len("Level/"))="Level/" then
		str_dmg_si += level / val(mid$(str_dmg_bonus_str,len("Level/")+1))
	else
		str_dmg_si += 0	
	end if

	if left$(ess_dmg_bonus_str,len("Level/"))="Level/" then
		ess_dmg_si += level / val(mid$(ess_dmg_bonus_str,len("Level/")+1))
	else
		ess_dmg_si += 0	
	end if

    central "battle"

	entity_count = val( sync_names( "attk/"+attk+"/entity/count", Attack_Table()) )

	For entity_index = 1 to entity_count step 1
		Select Case sync_names( "attk/"+attk+"/entity/"+LTrim$(Str$(entity_index))+"/is", Attack_Table())
		Case Mid$(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4)
			Select Case sync_names( "attk/"+attk+"/entity/"+LTrim$(Str$(entity_index))+"/now", Attack_Table())
			Case "gone"
				central "gone"
				Exit Sub
			End Select
		End Select
    Next entity_index
	
	Exit Sub
End Sub


sub ln_usecure()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 8 THEN
        IF 1 = 1 THEN
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "cure"
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "cure"
            AA_str = "cure"
            central "attackusing"
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 8
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) + 12 + G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) + 15 + G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) <= 0 THEN
                G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = 0
            END IF
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) <= 0 THEN
                central "victory"
            END IF
        END IF
    ELSE
        IF 1 = 1 THEN
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
        END IF
    END IF
    Exit Sub
end sub

sub ln_useslep()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 8 THEN
        IF 1 = 1 THEN
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "slep"
            AA_str = "slep"
            central "attackusing"
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 8
            MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 4), 1, 4) = "____"
            MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 4), 5, 4) = "zzzz"
            slepadd_si = INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) / 10)
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = Tx_si + d_sia(d_si, 1) * dis_si
            Ty_si = Ty_si + d_sia(d_si, 2) * dis_si
            central "tempget"
            IF tempaction_str <> "zzzz" THEN
                tempaction_str = "zzzz"
                tempdis_si = 5 + INT(RND(1) * 6) + slepadd_si
                central "tempput"
            END IF
            Tx_si = temptx_si
            Ty_si = tempty_si
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) - 15
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) <= 0 THEN
                G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = 0
            END IF
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) <= 0 THEN
                central "victory"
            END IF
        END IF
    ELSE
        IF 1 = 1 THEN
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
        END IF
    END IF
    Exit Sub
end sub

sub ln_victory()
    central "prflblnk"
    prflidty_str = "pouch"
    prflactn_str = e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    prflgpic_str = "pwch"
    prflhp_sf = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    prflstr_sf = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2)
    prfless_sf = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 3)
    prflexp_sf = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6)
    prflvalu_sf = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 7)
    prfllv_sf = 1
    prflhpmax_sf = 99999
    central "prflmake"
    Exit Sub
end sub

sub ln_pillage()
    expgain_si = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6)
    expgain_si = expgain_si + G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 7)
    G_dfa(Tx_si + (Ty_si + -1) * AA_si, 6) = G_dfa(Tx_si + (Ty_si + -1) * AA_si, 6) + expgain_si
    strgain_si = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2)
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) + strgain_si
    central "defeated"
    central "windggr"
    central "winpike"
    central "wingrpl"
    central "winseed"
    central "winkey1"
    central "winkey2"
    Exit Sub
end sub

sub ln_paylevelup()
    dim as short X1, Y1, X2, Y2, C1, C2
    dim as short Row, Col
    
    Row=4
    Col=14
    
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        
        clv_buffer_focus=clv_buffer_expshop
        clv_buffer_cls clv_buffer(), clv_buffer_expshop
        
        'central "portal"
        'PCOPY 1, 2
reshow1:
'end sub

'sub ln_reshow1()


        'PCOPY 2, 1
        X1 = Col
        X2 = X1+25
        Y1 = Row
        Y2 = Y1+20
        C1 = 4
        C2 = 12
        frame_put clv_buffer(), clv_buffer_expshop, X1, Y1, X2, Y2, C1, C2
        statx_si = 15
        central "stts", clv_buffer(), clv_buffer_expshop, Row+1, Col+1
        menu_str = ""
        menu_str = menu_str + "lvup" + MKL(l_sia(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)))
        IF MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) = "pndx" THEN
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 1 THEN
                haveit_str = "ispt"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "ispt" + MKL(0)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 1 THEN
                haveit_str = "move"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "move" + MKL(0)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 1 THEN
                haveit_str = "bite"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "bite" + MKL(2)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 1 THEN
                haveit_str = "pnch"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "pnch" + MKL(2)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 2 THEN
                haveit_str = "kick"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "kick" + MKL(10)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 3 THEN
                haveit_str = "cure"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "cure" + MKL(20)
                END IF
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 7 THEN
                haveit_str = "vnom"
                central "haveit"
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "vnom" + MKL(30)
                END IF
            END IF
        END IF
        menu_str = menu_str + "cncl" + MKL(0)
        menusize_si = LEN(menu_str) / 8
        inmenu_si = 0
        FOR menuitem_si = 1 TO menusize_si
            menuitem_str = MID(menu_str, (menuitem_si - 1) * 8 + 1, 4)
            menucost_si = CVL(MID(menu_str, (menuitem_si - 1) * 8 + 5, 4))
            R_str = menuitem_str
            central "names"
            IF menucost_si > 0 THEN
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_expshop, clv_glyph(), (X1+1-1) shl 3,(Y1+6+menuitem_si-1) shl 3,  "ú" + rr_str + " " + STRING((40 - 15) - LEN(rr_str) - 7, "-") + RIGHT("----" + STR(menucost_si) + "$", 5)
            END IF
            IF menucost_si = 0 THEN
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_expshop, clv_glyph(), (X1+1-1) shl 3, (Y1+6+menuitem_si-1) shl 3, "ú" + rr_str
            END IF
        NEXT menuitem_si
wwait0:
'sub ln_wwait0 ()
        central "buttonwait"
        menuselect_str = "____"
        menucost_si = 0
        IF Lb_si = -1 THEN
            IF xm_si = 15 THEN
                IF ym_si >= 11 AND ym_si <= 10 + menusize_si THEN
                    menuselect_si = ym_si - 10
                    menuselect_str = MID(menu_str, (menuselect_si - 1) * 8 + 1, 4)
                    menucost_si = CVL(MID(menu_str, (menuselect_si - 1) * 8 + 5, 4))
                END IF
            END IF
        END IF
        IF menuselect_str <> "lvup" AND menuselect_str <> "cncl" AND menuselect_str <> "____" THEN
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= menucost_si THEN
                c_str = "L"
                central "abilitygain"
                clv_buffer_focus=clv_buffer_expshop
                END IF
            GOTO reshow1
        END IF
        IF menuselect_str = "lvup" THEN
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= menucost_si THEN
                c_str = "L"
                central "levelup"
                clv_buffer_focus=clv_buffer_expshop
            END IF
            GOTO reshow1
        END IF
        IF menuselect_str = "cncl" THEN
            c_str = "L"
        ELSE
            GOTO wwait0
        END IF
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_merchant()
merchant1:
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        
        clv_buffer_focus=clv_buffer_merchant
        clv_buffer_cls clv_buffer(), clv_buffer_merchant

        central "portal"
        statx_si = 2
        central "status"
        viewx_si = 18
        menu_str = ""
        hasit_str = "dggr"
        central "hasit"
        IF hasit_si > 0 THEN
            menu_str = menu_str + "dggr" + MKL(5)
        END IF
        hasit_str = "pike"
        central "hasit"
        IF hasit_si > 0 THEN
            menu_str = menu_str + "pike" + MKL(20)
        END IF
        hasit_str = "grpl"
        central "hasit"
        IF hasit_si > 0 THEN
            menu_str = menu_str + "grpl" + MKL(15)
        END IF
        hasit_str = "seed"
        central "hasit"
        IF hasit_si > 0 THEN
            menu_str = menu_str + "seed" + MKL(15)
        END IF
        hasit_str = "wstf"
        central "hasit"
        IF hasit_si > 0 THEN
            menu_str = menu_str + "wstf" + MKL(10)
        END IF
        menu_str = menu_str + "cncl" + MKL(0)
        menusize_si = LEN(menu_str) / 8
        inmenu_si = 0
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (viewx_si-1) shl 3, (5-1) shl 3, "Merchant"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (viewx_si-1) shl 3, (7-1) shl 3, "Wha'du like?"
        graphicput clv_buffer(), clv_buffer_merchant, 10, viewx_si + 6, (MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) + "____.24"), spritepath_str
        FOR menuitem_si = 1 TO menusize_si
            menuitem_str = MID(menu_str, (menuitem_si - 1) * 8 + 1, 4)
            menucost_si = CVL(MID(menu_str, (menuitem_si - 1) * 8 + 5, 4))
            R_str = menuitem_str
            central "names"
            IF menucost_si > 0 THEN
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (viewx_si-1) shl 3, (12 + menuitem_si-1) shl 3, "ú" + rr_str + " " + STRING((40 - viewx_si) - LEN(rr_str) - 7, "-") + RIGHT("----" + RIGHT(STR(menucost_si), LEN(STR(menucost_si)) - 1) + "$", 5)
            END IF
            IF menucost_si = 0 THEN
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (viewx_si-1) shl 3, (12 + menuitem_si-1) shl 3, "ú" + rr_str
            END IF
        NEXT menuitem_si
'end sub
wwait1:
'sub ln_wwait1()
        central "buttonwait"
        menuselect_str = "____"
        menucost_si = 0
        IF Lb_si = -1 THEN
            IF xm_si = viewx_si THEN
                IF ym_si >= 13 AND ym_si <= 12 + menusize_si THEN
                    menuselect_si = ym_si - 12
                    menuselect_str = MID(menu_str, (menuselect_si - 1) * 8 + 1, 4)
                    menucost_si = CVL(MID(menu_str, (menuselect_si - 1) * 8 + 5, 4))
                END IF
            END IF
        END IF
        IF menuselect_str <> "lvup" AND menuselect_str <> "cncl" AND menuselect_str <> "____" THEN
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= menucost_si THEN
                c_str = "L"
                central "abilitygain"
                clv_buffer_focus=clv_buffer_merchant
                hashadit_str = menuselect_str
                central "hashadit"
                G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6) + menucost_si
                GOTO merchant1
            END IF
            GOTO merchant1
        END IF
        IF menuselect_str = "lvup" THEN
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= menucost_si THEN
                c_str = "L"
                central "levelup"
                clv_buffer_focus=clv_buffer_merchant
                GOTO merchant1
            END IF
            GOTO merchant1
        END IF
        IF menuselect_str = "cncl" THEN
            c_str = "L"
        ELSE
            GOTO wwait1
        END IF
    END IF
    Exit Sub
end sub

sub ln_talk0001()
    dim as short X1, X2, Y1, Y2, C1, C2
    dim as short Row, Col
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        
        clv_buffer_focus=clv_buffer_merchant
        clv_buffer_cls clv_buffer(), clv_buffer_merchant
        
        Row=5
        Col=18
        
        'PCOPY 1, 4
        'PCOPY 2, 1
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        'PCOPY 1, 2
'end sub
'sub ln_reshow3()
        central "portal"
        statx_si = 2
        central "status"
        viewx_si = 18
        menu_str = ""
        menu_str = menu_str + "bye_" + MKL(0)
        menusize_si = LEN(menu_str) / 8
        inmenu_si = 0
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (Row-1) shl 3, "Poindexter:"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (Row+1-1) shl 3, "Hi. How are you. My"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (Row+2-1) shl 3, "name is Poindexter. I"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (Row+3-1) shl 3, "am the greatest thief"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (Row+4-1) shl 3, "in the entire world!!!"
        graphicput clv_buffer(), clv_buffer_merchant, Row+5, Col+6, (MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) + "____.24"), spritepath_str
        FOR menuitem_si = 1 TO menusize_si
            menuitem_str = MID(menu_str, (menuitem_si - 1) * 8 + 1, 4)
            menucost_si = CVL(MID(menu_str, (menuitem_si - 1) * 8 + 5, 4))
            R_str = menuitem_str
            central "names"
            IF menucost_si > 0 THEN
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (row+7+menuitem_si-1) shl 3, "ú" + rr_str + " =" + STR(menucost_si)
            END IF
            IF menucost_si = 0 THEN
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (row+7+menuitem_si-1) shl 3, "ú" + rr_str
            END IF
        NEXT menuitem_si
'end sub
wwait2:
'sub ln_wwait2()
        do
            central "buttonwait"
            menuselect_str = "____"
            menucost_si = 0
            IF Lb_si = -1 THEN
                IF xm_si = viewx_si THEN
                    IF ym_si >= 13 AND ym_si <= 12 + menusize_si THEN
                        menuselect_si = ym_si - 12
                        menuselect_str = MID(menu_str, (menuselect_si - 1) * 8 + 1, 4)
                        menucost_si = CVL(MID(menu_str, (menuselect_si - 1) * 8 + 5, 4))
                    END IF
                END IF
            END IF
        loop while menuselect_str <> "bye_"
            'GOTO wwait2
        'END IF
        IF menuselect_str = "bye_" THEN
            c_str = "L"
        ELSE
            central "merchant"
            'GOTO wwait1
        END IF
        'PCOPY 4, 1
    END IF
    Exit Sub
end sub

sub ln_abilitygain()
    e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = e_stra(Rose_Calc( Tx_si, Ty_si ), 1) + menuselect_str
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) - menucost_si
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        'LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        'PCOPY 1, 2
        central "portal"
        central "avgframe"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, "gained"
        R_str = menuselect_str
        central "names"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, rr_str
        central "okbutton"
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_levelup()
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        IF MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) <> "____" THEN
        IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= l_sia(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)) THEN
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) - l_sia(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10))
            r1_si = INT(RND(1) * 5) + 1
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 11) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 11) + r1_si
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) + r1_si
            r2_si = INT(RND(1) * 5) + 1
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 12) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 12) + r2_si
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) + r2_si
            r3_si = INT(RND(1) * 5) + 1
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 13) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 13) + r3_si
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) + r3_si
            r4_si = .2
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 4) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 4) + r4_si
            r5_si = .05
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 14) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 14) + r5_si
            am_str = ctrl_str
            central "am"
            IF am_si > 0 THEN
                LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
                PCOPY 1, 2
                central "portal"
                central "avgframe"
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, "      level up!"
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, "HPmax +"
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (9-1) shl 3, RIGHT(STRING(5, " ") + STR(r1_si), 5)
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (11-1) shl 3, "STRmax +"
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (11-1) shl 3, RIGHT(STRING(5, " ") + STR(r2_si), 5)
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (13-1) shl 3, "ESSmax +"
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (13-1) shl 3, RIGHT(STRING(5, " ") + STR(r3_si), 5)
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (15-1) shl 3, "STRspd up!"
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (16-1) shl 3, "ESSspd up!"
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) < 64 THEN
                G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) + 1
                am_str = ctrl_str
                central "am"
                IF am_si > 0 THEN
                    clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (18-1) shl 3, "reached LV!"
                    clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (37-1) shl 3, (18-1) shl 3, RIGHT(STRING(3, " ") + STR(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)), 3)
                    IF l_sia(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)) - G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) >= 0 THEN
                        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (20-1) shl 3, "next:"
                        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (34-1) shl 3, (20-1) shl 3, RIGHT(STRING(5, " ") + STR(l_sia(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)) - G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)), 5) + "$"
                    END IF
                END IF
            END IF
            am_str = ctrl_str
            central "am"
            IF am_si > 0 THEN
                central "okbutton"
                'PCOPY 2, 1
            END IF
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) >= 2 AND MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) = "spdr" THEN
                getit_str = "vnom"
                haveit_str = "vnom"
                central "haveit"
                IF haveit_si = 0 THEN
                    e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = e_stra(Rose_Calc( Tx_si, Ty_si ), 1) + getit_str
                    central "gain"
                END IF
            END IF
        END IF
    END IF
    Exit Sub
end sub

sub ln_gain()
    am_str = ctrl_str
    central "am"
    IF am_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay

        'LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        'PCOPY 1, 2
        central "portal"
        central "avgframe"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, "gained"
        R_str = getit_str
        central "names"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, rr_str
        central "okbutton"
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_getit()
    IF getit_str <> "" THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay

        e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = e_stra(Rose_Calc( Tx_si, Ty_si ), 1) + getit_str
        am_str = ctrl_str
        central "am"
        are_str = ctrl_str
        central "are"
        IF am_si > 0 OR are_si > 0 THEN
            LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
            PCOPY 1, 2
            central "portal"
            central "avgframe"
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "gained"
            R_str = getit_str
            central "names"
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, rr_str
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (8-1) shl 3, "from"
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) + "!"
            central "okbutton"
            'PCOPY 2, 1
        END IF
    END IF
    Exit Sub
end sub

sub ln_attackusing()
    am_str = ctrl_str
    central "am"
    are_str = ctrl_str
    central "are"
    IF am_si > 0 OR are_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay

        'PCOPY 1, 2
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        central "portal"
        central "avgframe"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "used"
        R_str = AA_str
        central "names"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, rr_str
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (8-1) shl 3, "on"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0)
        central "okbutton"
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_battleattack()
    am_str = ctrl_str
    central "am"
    are_str = ctrl_str
    central "are"
    IF am_si > 0 OR are_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        'PCOPY 1, 2
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        central "portal"
        central "avgframe"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "used"
        R_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4)
        central "names"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, rr_str
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (11-1) shl 3, "HP -"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (11-1) shl 3, RIGHT(STRING(5, " ") + STR(hp_dmg_si), 5)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (12-1) shl 3, "STR-"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (12-1) shl 3, RIGHT(STRING(5, " ") + STR(str_dmg_si), 5)
        central "okbutton"
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_defeated()
    am_str = ctrl_str
    central "am"
    are_str = ctrl_str
    central "are"
    IF am_si > 0 OR are_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        'PCOPY 1, 2
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        central "portal"
        central "avgframe"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "pillaged"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, "EXP+"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (34-1) shl 3, (9-1) shl 3, RIGHT(STRING(5, " ") + STR(expgain_si), 5) + "$"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (10-1) shl 3, "EXP:"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (34-1) shl 3, (10-1) shl 3, RIGHT(STRING(5, " ") + STR(G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)), 5) + "$"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (12-1) shl 3, "STR+"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (12-1) shl 3, RIGHT(STRING(5, " ") + STR(strgain_si), 5)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (13-1) shl 3, "STR:"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (13-1) shl 3, RIGHT(STRING(5, " ") + STR(G_dfa(Rose_Calc( Tx_si, Ty_si ), 2)), 5)
        central "okbutton"
        'PCOPY 2, 1
    END IF
    Exit Sub
end sub

sub ln_portal()
    dim as short Ratio1, Ratio2, X1, X2, X3, Y1, Y2, Y3
    dim as short FX1,FY1,FX2,FY2,FC1,FC2
    dim as short Row, Col
    dim as short tempt
    
    Col=2
    Row=2
   
    clv_buffer_cls clv_buffer(), clv_buffer_portal
    
    FX1 = Col
    FX2 = FX1+7*3-1
    FY1 = Row
    FY2 = FY1+7*3-1
    FC1 = 1
    FC2 = 9
    frame_put clv_buffer(), clv_buffer_portal, FX1, FY1, FX2, FY2, FC1, FC2
    
    Ratio1=fix((Ty_si-3)*7*3/DD_si)-1
    Ratio2=fix((Ty_si+3)*7*3/DD_si)
    if Ratio1<0 then Ratio1=0
    if Ratio1>7*3-1 then Ratio1=7*3-1
    if Ratio2<0 then Ratio2=0
    if Ratio2>7*3 then Ratio2=7*3
    X1=(FX2 shl 3)
    X2=(FX2 shl 3)+2
    X3=(FX2 shl 3)+1
    Y1=((FX1+Ratio1-1) shl 3)
    Y2=((FX1+Ratio2-1) shl 3)-1
    clv_draw_line clv_buffer(), clv_buffer_portal, X1, Y1, X2, Y2, rgb(192,192,192), rgb(0,0,0), clv_flag_bf
    clv_draw_line clv_buffer(), clv_buffer_portal, X3, Y1, X3, Y2, rgb(255,255,255), rgb(0,0,0), clv_flag_bf

    Ratio1=fix((Tx_si-3)*7*3/AA_si)-1
    Ratio2=fix((Tx_si+3)*7*3/AA_si)
    if Ratio1<0 then Ratio1=0
    if Ratio1>7*3-1 then Ratio1=7*3-1
    if Ratio2<0 then Ratio2=0
    if Ratio2>7*3 then Ratio2=7*3
    X1=((FY1+Ratio1-1) shl 3)
    X2=((FY1+Ratio2-1) shl 3)-1
    Y1=(FY2 shl 3)
    Y2=(FY2 shl 3)+2
    Y3=(FY2 shl 3)+1
    clv_draw_line clv_buffer(), clv_buffer_portal, X1, Y1, X2, Y2, rgb(192,192,192), rgb(0,0,0), clv_flag_bf
    clv_draw_line clv_buffer(), clv_buffer_portal, X1, Y3, X2, Y3, rgb(255,255,255), rgb(0,0,0), clv_flag_bf

    dx1_si = Tx_si - 3
    dy1_si = Ty_si - 3
    dx2_si = Tx_si + 3
    dy2_si = Ty_si + 3
    IF dx1_si < 1 THEN
        dx1_si = 1
    END IF
    IF dy1_si < 1 THEN
        dy1_si = 1
    END IF
    IF dx2_si > AA_si THEN
        dx2_si = AA_si
    END IF
    IF dy2_si > DD_si THEN
        dy2_si = DD_si
    END IF
    FOR ttx = dx1_si TO dx2_si
        FOR tty = dy1_si TO dy2_si
            graphicput clv_buffer(), clv_buffer_portal, ((tty-Ty_si+3)*3+Row), ((ttx-Tx_si+3)*3+Col), (MID(e_stra(ttx + (tty - 1) * AA_si, 2), 5, 4) + "____" + ".24"), spritepath_str
            graphicput clv_buffer(), clv_buffer_portal, ((tty-Ty_si+3)*3+Row), ((ttx-Tx_si+3)*3+Col), (MID(e_stra(ttx + (tty - 1) * AA_si, 2), 1, 4) + MID(e_stra(ttx + (tty - 1) * AA_si, 4), 1, 4) + ".24"), spritepath_str
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = ttx
            Ty_si = tty
            central "tempget"
            Tx_si = temptx_si
            Ty_si = tempty_si
            tempt=0
            for T_si=1 to fix(len(e_stra(ttx + (tty - 1) * AA_si, 1))/4)
                select case mid(e_stra(ttx + (tty - 1) * AA_si, 1),(T_si)*4-3,4)
                case "loc1"
                    tempt=1
                case "loc2"
                    tempt=1
                case "loc3"
                    tempt=1
                end select
                if tempt>0 then
                    graphicput clv_buffer(), clv_buffer_portal, ((tty-Ty_si+3)*3+Row), ((ttx-Tx_si+3)*3+Col), (mid(e_stra(ttx + (tty - 1) * AA_si, 1),(T_si)*4-3,4)+"____.24"), spritepath_str
                end if
            next
            IF tempaction_str = "zzzz" THEN
                graphicput clv_buffer(), clv_buffer_portal, ((tty-Ty_si+3)*3+Row), ((ttx-Tx_si+3)*3+Col), ("zzzz____.24"), spritepath_str
            END IF
        NEXT tty
    NEXT ttx
    FOR ttx = dx1_si TO dx2_si
        FOR tty = dy1_si TO dy2_si
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = ttx
            Ty_si = tty
            central "tempget"
            Tx_si = temptx_si
            Ty_si = tempty_si
            IF tempaction_str = "grpl" OR tempaction_str = "rapl" THEN
                IF tempdis_si > 0 THEN
                    tempy1_sf=(tty-Ty_si+3)*3+Row
                    tempx1_sf=(ttx-Tx_si+3)*3+Col
                    tempy2_sf=(tty-Ty_si+3+d_sia(tempd_si,2)*tempdis_si)*3+Row
                    tempx2_sf=(ttx-Tx_si+3+d_sia(tempd_si,1)*tempdis_si)*3+Col
                    clv_draw_line clv_buffer(), clv_buffer_portal, (tempx1_sf-1)*8+12,(tempy1_sf-1)*8+12,(tempx2_sf-1)*8+12,(tempy2_sf-1)*8+12, rgb(192,131,0), rgb(0,0,0), clv_flag_default
                    FOR t_sf = 0 TO tempdis_si STEP tempdis_si / 8
                        tempy_sf=(tty-Ty_si+3+d_sia(tempd_si,2)*t_sf)*3+2
                        tempx_sf=(ttx-Tx_si+3+d_sia(tempd_si,1)*t_sf)*3+2
                        tt_sf = t_sf
                        IF tempdis_si <= 1 THEN
                            tt_sf = t_sf
                        ELSE
                            IF t_sf < tempdis_si - 1 THEN
                                tt_sf = -1
                            ELSE
                                tt_sf = t_sf - tempdis_si + 1
                            END IF
                        END IF
                        IF tt_sf >= 0 THEN
                            clv_draw_pixel clv_buffer(), clv_buffer_portal, (tempx_sf-1)*8+12, (tempy_sf-1) * 8-tt_sf+12, rgb(192,192,192), rgb(0,0,0)
                            clv_draw_pixel clv_buffer(), clv_buffer_portal, (tempx_sf-1)*8+tt_sf+12, (tempy_sf-1)*8+12, rgb(192,192,192), rgb(0,0,0)
                            clv_draw_pixel clv_buffer(), clv_buffer_portal, (tempx_sf-1)*8+12, (tempy_sf-1)*8+tt_sf+12, rgb(192,192,192), rgb(0,0,0)
                            clv_draw_pixel clv_buffer(), clv_buffer_portal, (tempx_sf-1)*8-tt_sf+12, (tempy_sf-1)*8+12, rgb(192,192,192), rgb(0,0,0)
                        END IF
                    NEXT t_sf
                END IF
            END IF
        NEXT tty
    NEXT ttx
    Exit Sub
end sub

sub ln_title(clv_buffer() as fb.image ptr, Index as integer)
    clv_buffer_cls clv_buffer(), clv_buffer_draw
    'graphicput clv_buffer(), clv_buffer_portal1, 2, "aquagame.56", logopath_str
    colr_si = 9
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (3-1) shl 3, (2-1) shl 3, "A RetroMachineShop Featured Project!"
    LOCATE 4, 1
    Exit Sub
end sub

sub ln_status()
    clv_buffer_cls clv_buffer(), clv_buffer_status
    frame_status 4, 24
    frame_inventory 14, 24
end sub

sub ln_framstts()
    framex1_sf = statx_si
    framex2_sf = statx_si+5*3-1
    framey1_sf = 4
    framey2_sf = 12
    framec1_si = 4
    framec2_si = 12
    central "frameput", clv_buffer(), clv_buffer_status
    Exit Sub
end sub

sub ln_framsttsitms()
    framex1_sf = statx_si
    framex2_sf = statx_si+5*3-1
    framey1_sf = 14
    framey2_sf = 23
    framec1_si = 4
    framec2_si = 12
    central "frameput", clv_buffer(), clv_buffer_status
    Exit Sub
end sub
sub ln_stts(clv_buffer() as fb.image ptr, Index as integer, Row as short, Col as short)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+0-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+1-1) shl 3, "LV"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+3-1) shl 3, (Row+1-1) shl 3, RIGHT(STR(100 + G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)), 2)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+1-1) shl 3, (RIGHT("     " + STR(G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)), 5) + "$")
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+2-1) shl 3, (Row+1-1) shl 3, "ú"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+2-1) shl 3, "HP"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+4-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 1))), 4)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+2-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+11-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 11))), 4)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+3-1) shl 3, "STR"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+4-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 2))), 4)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+3-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+11-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 12))), 4)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+4-1) shl 3, "ESS"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+4-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 3))), 4)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+4-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+11-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 13))), 4)
    Exit Sub
end sub

sub ln_sttsgpic()
    'central "getaction"
    'SELECT CASE d_si
    'CASE 0
    '    graphicput clv_buffer(), clv_buffer_portal9, statx_si, "bttnself.24", spritepath_str
    'CASE 1
    '    graphicput clv_buffer(), clv_buffer_portal9, statx_si, "bttnnrth.24", spritepath_str
    'CASE 2
    '    graphicput clv_buffer(), clv_buffer_portal9, statx_si, "bttneast.24", spritepath_str
    'CASE 3
    '    graphicput clv_buffer(), clv_buffer_portal9, statx_si, "bttnsuth.24", spritepath_str
    'CASE 4
    '    graphicput clv_buffer(), clv_buffer_portal9, statx_si, "bttnwest.24", spritepath_str
    'END SELECT
    'graphicput clv_buffer(), clv_buffer_portal9, statx_si + 6, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) + "____.24"), spritepath_str
    'graphicput clv_buffer(), clv_buffer_portal9, statx_si + 3, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4) + "____.24"), spritepath_str
    'FOR t_si = 1 TO LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1)) / 4
    '    R_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si - 1) * 4 + 1, 4)
    '    central "names"
    '    IF action_str = R_str THEN
    '        clv_draw_text 12, statx_si, rr_str, 15, 1
    '    end if
    'NEXT t_si
    'Exit Sub
end sub

sub ln_sttsitms()
    'dim as short X, Y
    'central "getaction"
    'FOR t_si = 1 TO LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1)) / 4
    '    X=fix((t_si-1) mod 5)*3
    '    Y=fix((t_si-1)/5)*3
    '    R_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si - 1) * 4 + 1, 4)
    '    central "names"
    '    graphicput clv_buffer(), clv_buffer_portal14 + Y, statx_si + X, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si*4)-3, 4) + "____.24"), spritepath_str
    '    IF action_str = R_str THEN
    '        clv_draw_line clv_buffer(), page_status, (statx_si+X-1) shl 3,(14+Y-1) shl 3,((statx_si+X-1) shl 3)+23,((14+Y-1) shl 3)+23, rgb(255,255,255), rgb(0,0,0)
    '    end if
    'NEXT t_si
    'Exit Sub
end sub

sub ln_move()
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "move"
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "move"
    are_str = "____pwch"
    central "are"
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) >= 1 AND are_si > 0 THEN
        move_si = 1
        here_str = "watr"
        central "here"
        IF here_si > 0 THEN move_si = 0
        there_str = "watr"
        central "there"
        IF there_si > 0 THEN move_si = 0
        here_str = "hole"
        central "here"
        there_str = "holestpsstp2"
        central "there"
        IF here_si > 0 AND there_si <= 0 THEN move_si = 0
        IF move_si = 1 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                central "am"
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - 1
            central "swapdata"
        END IF
    END IF
    Exit Sub
end sub

sub ln_wingmove()
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "move"
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "move"
    are_str = "____pwch"
    central "are"
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) >= 3 AND are_si > 0 THEN
        move_si = 1
        IF move_si = 1 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                central "am"
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - 3
            central "swapdata"
        END IF
    END IF
    Exit Sub
end sub

sub ln_firemove()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) >= 1 THEN
        IF 1 = 1 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                central "am"
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
            MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "move"
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - 1
            central "swapdata"
        END IF
    ELSE
        central "gone"
    END IF
    Exit Sub
end sub

sub ln_webmove()
    IF Tx_si = ex_si AND Ty_si = dy_si THEN
        am_str = ctrl_str
        central "am"
        IF am_si > 0 THEN
            ex_si = Tx_si + d_sia(d_si, 1) * dis_si
            dy_si = Ty_si + d_sia(d_si, 2) * dis_si
        END IF
    END IF
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "move"
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "move"
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - 1
    central "swapdata"
    Exit Sub
end sub

sub ln_castfire()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 20 THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "fire"
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 20
        central "prflblnk"
        prflidty_str = "Flame"
        prflactn_str = "moveburn"
        prflactnct_str = mkl(1)+mkl(1)
        prflgpic_str = "fire"
        prflcmnd_str = MKL(d_si) + "move" + MKL(0)
        prflhp_sf = 120
        prflstr_sf = 10
        prfless_sf = 100
        prflspd_sf = 1
        prflvalu_sf = 1
        prflchck_sf = 1
        prfllv_sf = 1
        prflhpmax_sf = 120
        prflstrmax_sf = 50
        prflessmax_sf = 100
        prflessspd_sf = 5
        central "prflmake"
    END IF
    Exit Sub
end sub

sub ln_castdust()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 8 THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "dust"
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 8
        central "prflblnk"
        prflidty_str = "Sleepy dust"
        prflactn_str = "move"
        prflactnct_str = mkl(1)
        prflgpic_str = "dust"
        prflcmnd_str = MKL(d_si) + "move" + MKL(0)
        prflhp_sf = 120
        prflstr_sf = 10
        prfless_sf = 100
        prflspd_sf = 1
        prflvalu_sf = 1
        prflchck_sf = 1
        prfllv_sf = 1
        prflhpmax_sf = 120
        prflstrmax_sf = 50
        prflessmax_sf = 100
        prflessspd_sf = 5
        central "prflmake"
    END IF
    Exit Sub
end sub

sub ln_castweb()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 220 THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 220
        central "prflblnk"
        prflidty_str = "Web"
        prflactn_str = "spdr"
        prflactnct_str = mkl(1)
        prflgpic_str = "web_"
        prflcmnd_str = MKL(d_si) + "move" + MKL(0)
        prflidty_sf = 3
        prflhp_sf = 40
        prflstr_sf = 50
        prflspd_sf = 1
        prflvalu_sf = 1
        prflchck_sf = 1
        prfllv_sf = 1
        prflhpmax_sf = 40
        prflstrmax_sf = 50
        prflessmax_sf = 380
        prflessspd_sf = 2
        central "prflmake"
    END IF
    Exit Sub
end sub

sub ln_castspdr()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 320 THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 320
        central "prflblnk"
        prflidty_str = "Spider"
        prflactn_str = "movebiteweb_"
        prflactnct_str = mkl(1)+mkl(1)+mkl(1)
        prflgpic_str = "spdr"
        prflcmnd_str = MKL(0) + "move" + MKL(0)
        prflidty_sf = 1
        prflhp_sf = 10
        prflstr_sf = 20
        prflspd_sf = 1
        prflarmr_sf = 1
        prflvalu_sf = 5
        prflpirc_sf = 1
        prfllv_sf = 1
        prflhpmax_sf = 10
        prflstrmax_sf = 20
        prflessmax_sf = 380
        prflessspd_sf = 3
        central "prflmake"
    END IF
    Exit Sub
end sub

sub ln_castccts()
    central "prflblnk"
    prflidty_str = "Cactus"
    prflgpic_str = "ccts"
    prflidty_sf = 13
    prflhp_sf = 10
    prflstr_sf = 20
    prflspd_sf = 1
    prflarmr_sf = 1
    prflvalu_sf = 5
    prflpirc_sf = 3
    prflchck_sf = 1
    prfllv_sf = 1
    prflhpmax_sf = 10
    prflstrmax_sf = 20
    prflessmax_sf = 380
    prflessspd_sf = 3
    central "prflmake"
    Exit Sub
end sub

sub ln_castdtby()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) >= 160 THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) - 160
        central "prflblnk"
        prflidty_str = "Dust Bunny"
        prflactn_str = "bitekick"
        prflactnct_str = mkl(1)+mkl(1)
        prflgpic_str = "dtby"
        prflcmnd_str = MKL(0) + "move" + MKL(0)
        prflidty_sf = 6
        prflhp_sf = 15
        prflstr_sf = 20
        prfless_sf = 5
        prflspd_sf = 1.2
        prflvalu_sf = 2
        prflchck_sf = 1
        prfllv_sf = 1
        prflhpmax_sf = 15
        prflstrmax_sf = 20
        prflessmax_sf = 280
        prflessspd_sf = 1
        central "prflmake"
    END IF
    Exit Sub
end sub

sub ln_gone()
    central "prflblnk"
    central "prflset"
    Exit Sub
end sub

sub ln_delete2()
    central "prflblnk"
    central "prflmake"
    Exit Sub
end sub

sub ln_autolevelup()
    am_str = ctrl_str
    central "am"
    IF am_si = 0 THEN
        central "levelup"
    END IF
    Exit Sub
end sub

sub ln_statgain()
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) + G_dfa(Rose_Calc( Tx_si, Ty_si ), 4)
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) + G_dfa(Rose_Calc( Tx_si, Ty_si ), 14)
    Exit Sub
end sub

sub ln_statmax()
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) > G_dfa(Rose_Calc( Tx_si, Ty_si ), 11) THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 11)
    END IF
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) > G_dfa(Rose_Calc( Tx_si, Ty_si ), 12) THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 12)
    END IF
    IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) > G_dfa(Rose_Calc( Tx_si, Ty_si ), 13) THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 13)
    END IF
    Exit Sub
end sub

sub ln_nextaction()
    am_str = ctrl_str
    central "am"
    IF am_si = 0 THEN
        IF 1 = 1 THEN
            central "newaction"
            central "putaction"
        END IF
    ELSE
        central "getaction"
    END IF
    Exit Sub
end sub

sub ln_newaction()
    central "getaction"
    IF NOT (action_str = "zzzz" AND dis_si > 0) THEN
        d_si = INT(RND(1) * 4) + 1
        central "randomaction"
        dis_si = 0
    END IF
    Exit Sub
end sub

sub ln_randomaction()
    R_si = LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1)) / 4
    R_si = INT(RND(1) * (R_si + 1))
    IF R_si = 0 THEN
        action_str = "____"
    ELSE
        action_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (R_si - 1) * 4 + 1, 4)
    END IF
    Exit Sub
end sub

sub ln_getaction()
    d_si = CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 1, 4))
    action_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4)
    dis_si = CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 9, 4))
    Exit Sub
end sub

sub ln_putaction()
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 1, 4) = MKL(d_si)
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4) = action_str
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 9, 4) = MKL(dis_si)
    Exit Sub
end sub

sub ln_tempget()
    tempd_si = CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 1, 4))
    tempaction_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4)
    tempdis_si = CVL(MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 9, 4))
    Exit Sub
end sub

sub ln_tempput()
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 1, 4) = MKL(tempd_si)
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4) = tempaction_str
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 9, 4) = MKL(tempdis_si)
    Exit Sub
end sub

sub ln_inbounds()
    IF (Tx_si + d_sia(d_si, 1) * dis_si >= 1) AND (Tx_si + d_sia(d_si, 1) * dis_si <= AA_si) AND (Ty_si + d_sia(d_si, 2) * dis_si >= 1) AND (Ty_si + d_sia(d_si, 2) * dis_si <= DD_si) THEN
        inbounds_si = 1
    ELSE
        inbounds_si = 0
    END IF
    Exit Sub
end sub

sub ln_haveit()
    haveit_si = 0
    t_str = e_stra(Rose_Calc( Tx_si, Ty_si ), 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = haveit_str THEN
            haveit_si = haveit_si + 1
        END IF
    NEXT tt_si
    Exit Sub
end sub

sub ln_hasit()
    hasit_si = 0
    t_str = e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = hasit_str THEN
            hasit_si = hasit_si + 1
        END IF
    NEXT tt_si
    Exit Sub
end sub

sub ln_havehadit()
    t_str = e_stra(Rose_Calc( Tx_si, Ty_si ), 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = havehadit_str THEN
            t_str = LEFT(t_str, (tt_si - 1) * 4) + RIGHT(t_str, t_si * 4 + 1 - tt_si * 4 - 1)
            tt_si = t_si
        END IF
    NEXT tt_si
    e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = t_str
    Exit Sub
end sub

sub ln_hashadit()
    t_str = e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = hashadit_str THEN
            t_str = LEFT(t_str, (tt_si - 1) * 4) + RIGHT(t_str, t_si * 4 + 1 - tt_si * 4 - 1)
            tt_si = t_si
        END IF
    NEXT tt_si
    e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = t_str
    Exit Sub
end sub

sub ln_havegotit()
    t_str = e_stra(Rose_Calc( Tx_si, Ty_si ), 1)
    e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = t_str + havegotit_str
    Exit Sub
end sub

sub ln_hasgotit()
    t_str = e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = t_str + hasgotit_str
    Exit Sub
end sub

sub ln_winexp()
    getit_si = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6)
    IF getit_si > 0 THEN
        getit_str = STR(getit_si) + " EXP"
        getit_str = RIGHT(getit_str, LEN(getit_str) - 1)
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) + getit_si
        central "getit"
        G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6) = 0
    END IF
    Exit Sub
end sub

sub ln_windggr()
    winit_str = "dggr"
    central "winit"
end sub

sub ln_winpike()
    winit_str = "pike"
    central "winit"
end sub

sub ln_wingrpl()
    winit_str = "grpl"
    central "winit"
end sub

sub ln_winseed()
    winit_str = "seed"
    central "winit"
end sub

sub ln_winkey1()
    winit_str = "key1"
    central "winit"
end sub

sub ln_winkey2()
    winit_str = "key2"
    central "winit"
end sub

sub ln_winit()
    getit_str = winit_str
    hasit_str = winit_str
    central "hasit"
    IF hasit_si = 0 THEN Exit Sub
    haveit_str = winit_str
    central "haveit"
    IF haveit_si > 0 THEN Exit Sub
    central "getit"
    hashadit_str = winit_str
    central "hashadit"
    Exit Sub
end sub

sub ln_am()
    am_si = 0
    FOR t_si = 1 TO LEN(am_str) / 4
        IF MID(am_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) THEN
            am_si = am_si + 1
        END IF
    NEXT t_si
    Exit Sub
end sub

sub ln_are()
    are_si = 0
    FOR t_si = 1 TO LEN(are_str) / 4
        IF MID(are_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) THEN
            are_si = are_si + 1
        END IF
    NEXT t_si
    Exit Sub
end sub

sub ln_here()
    here_si = 0
    FOR t_si = 1 TO LEN(here_str) / 4
        IF MID(here_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) THEN
            here_si = here_si + 1
        END IF
    NEXT t_si
    Exit Sub
end sub

sub ln_there()
    there_si = 0
    FOR t_si = 1 TO LEN(there_str) / 4
        IF MID(there_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 5, 4) THEN
            there_si = there_si + 1
        END IF
    NEXT t_si
    Exit Sub
end sub

sub ln_blankcheck()
    are_str = blankcheck_str
    central "inbounds"
    IF inbounds_si = 1 THEN
        central "are"
    ELSE
        are_si = -1
    END IF
    blankcheck_si = are_si
    Exit Sub
end sub

sub ln_okbutton()
    'clv_buffer_focus=clv_buffer_menu
    clv_buffer_cls clv_buffer(), clv_buffer_menu
    
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_menu, clv_glyph(), (25-1) shl 3,(23-1) shl 3, "úOk"
    central "wwait"

    clv_buffer_cls clv_buffer(), clv_buffer_menu
end sub

sub ln_wwait()
    do
        central "buttonwait"
    loop while not(((c_str = "&H0D") OR (ym_si = 23 AND xm_si = 25 AND Lb_si = -1)))
    c_str = "L"
end sub

sub ln_buttonwait()
    cinput
    cursorput
    'netscreenout
    clv_buffer_stack clv_buffer()
end sub

sub ln_commandwait()
    c_str = "%%"
    Lb_si = 0
    WHILE c_str = "%%" AND Lb_si = 0
        cinput
        cursorput
        'netscreenout
        clv_buffer_stack clv_buffer()
    WEND
end sub

sub ln_frameput()
    pset ((framex1_sf-1)*8, (framey1_sf-1)*8), rgb(0,0,0) 'pal(0)
    line  -((framex2_sf-0)*8-1, (framey2_sf-0)*8-1), rgb(0,0,0), bf 'pal(0)
    
    pset ((framex1_sf-1)*8-1, (framey1_sf-1)*8-3), rgb(0,0,0) 'pal(0)
    line -((framex2_sf-0)*8+1-1, (framey2_sf-0)*8+3-1), rgb(131,131,131), b 'pal(framec1_si), B
    pset ((framex1_sf-1)*8-3, (framey1_sf-1)*8-1), rgb(0,0,0) 'pal(0)
    line -((framex2_sf-0)*8+3-1, (framey2_sf-0)*8+1-1), rgb(131,131,131), b 'pal(framec1_si), B
    
    pset ((framex1_sf-1)*8-2, (framey1_sf-1)*8-2), rgb(0,0,0) 'pal(0)
    line -((framex2_sf-0)*8+2-1, (framey2_sf-0)*8+2-1), rgb(192,192,192), b 'pal(framec2_si), B
    
    PSET ((framex1_sf-1)*8-2, (framey1_sf-1)*8-2), rgb(131,131,131) 'pal(framec1_si)
    PSET ((framex2_sf-0)*8+2-1, (framey2_sf-0)*8+2-1), rgb(131,131,131) 'pal(framec1_si)
    PSET ((framex1_sf-1)*8-2, (framey2_sf-1)*8+2-1), rgb(131,131,131) 'pal(framec1_si)
    PSET ((framex2_sf-0)*8+2-1, (framey1_sf-0)*8-2), rgb(131,131,131) 'pal(framec1_si)
    Exit Sub
end sub

sub ln_avgframe()
    dim as short X1, X2, Y1, Y2, C1, C2
    dim as short Row, Col
    
    Row=4
    Col=25
    
    X1 = Col
    X2 = Col+15
    Y2 = Row
    Y2 = Row+20
    C1 = 4
    C2 = 12
    frame_put clv_buffer(), clv_buffer_menu, X1, Y2, X2, Y2, C1, C2
    Exit Sub
end sub

sub ln_screenset()
    clv_buffer_stack clv_buffer()
end sub

sub ln_findcrsr()
    crsry_si = CSRLIN
    crsrx_si = POS(0)
end sub

sub ln_showtext(clv_buffer() as fb.image ptr, Index as integer)
    central "findcrsr"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (crsrx_si-1) shl 3, (crsry_si-1) shl 3, texts_str
    LOCATE crsry_si + 1, 1
end sub

sub ln_prflblnk()
    prflidty_str = ""
    prflactn_str = ""
    prflactnct_str=""
    prflgpic_str = "____"
    prflcmnd_str = MKL(0) + "____" + MKL(0)
    prflgpicactn_str = "____" + "____"
    prflidty_sf = 0
    prflhp_sf = 0
    prflstr_sf = 0
    prfless_sf = 0
    prflspd_sf = 0
    prflarmr_sf = 0
    prflexp_sf = 0
    prflvalu_sf = 0
    prflpirc_sf = 0
    prflchck_sf = 0
    prfllv_sf = 0
    prflhpmax_sf = 0
    prflstrmax_sf = 0
    prflessmax_sf = 0
    prflessspd_sf = 0
    prflevad_sf = 0
    prflblnk_sf = 0
    Exit Sub
end sub

sub ln_prflset()
    e_stra(Rose_Calc( Tx_si, Ty_si ), 0) = prflidty_str
    e_stra(Rose_Calc( Tx_si, Ty_si ), 1) = prflactn_str
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) = prflgpic_str
    e_stra(Rose_Calc( Tx_si, Ty_si ), 3) = prflcmnd_str
    e_stra(Rose_Calc( Tx_si, Ty_si ), 4) = prflgpicactn_str
    e_stra(Rose_Calc( Tx_si, Ty_si ), 5) = prflactnct_str
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 0) = prflidty_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) = prflhp_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = prflstr_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = prfless_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 4) = prflspd_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 5) = prflarmr_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 6) = prflexp_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 7) = prflvalu_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 8) = prflpirc_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 9) = prflchck_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 10) = prfllv_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 11) = prflhpmax_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 12) = prflstrmax_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 13) = prflessmax_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 14) = prflessspd_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 15) = prflevad_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 16) = prflblnk_sf
    Exit Sub
end sub

sub ln_prflmake()
    e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) = prflidty_str
    e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = prflactn_str
    MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) = prflgpic_str
    e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 3) = prflcmnd_str
    e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 4) = prflgpicactn_str
    e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 5) = prflactnct_str
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) = prflidty_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = prflhp_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = prflstr_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 3) = prfless_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 4) = prflspd_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 5) = prflarmr_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6) = prflexp_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 7) = prflvalu_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 8) = prflpirc_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 9) = prflchck_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 10) = prfllv_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 11) = prflhpmax_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 12) = prflstrmax_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 13) = prflessmax_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 14) = prflessspd_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 15) = prflevad_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 16) = prflblnk_sf
    Exit Sub
end sub

sub ln_actncure()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = "pndxspdrgrmldtbyemgdshktimp_"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "usecure"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnbite()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkbite"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnpnch()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkpnch"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnkick()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkkick"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actndggr()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkdggr"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnpike()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkpike"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnvnom()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN Exit Sub
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkvnom"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnfire()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castfire"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkfire"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actndust()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castdust"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "useslep"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnweb()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castweb"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkweb"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnspdr()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castspdr"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnccts()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castccts"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actndtby()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "castdtby"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnmove()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    central "move"
    Exit Sub
end sub

sub ln_actnwing()
    dis_si = 1
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    central "wingmove"
    Exit Sub
end sub

sub ln_actnwstf()
    dis_si = 1
    blankcheck_str = "bldr"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        dis_si = 2
        blankcheck_str = "____pwch"
        central "blankcheck"
        IF blankcheck_si > 0 THEN
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = Tx_si + d_sia(d_si, 1)
            Ty_si = Ty_si + d_sia(d_si, 2)
            dis_si = 1
            central "swapdata"
            Tx_si = temptx_si
            Ty_si = tempty_si
            Exit Sub
        END IF
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkwstf"
    END IF
    Exit Sub
end sub

sub ln_actnkey1()
    dis_si = 1
    blankcheck_str = "door"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        hasit_str = "loc1"
        central "hasit"
        IF hasit_si > 0 THEN
            hashadit_str = "loc1"
            central "hashadit"
            havehadit_str = "key1"
            central "havehadit"
            central "delete2"
        END IF
    END IF
    Exit Sub
end sub

sub ln_actnkey2()
    dis_si = 1
    blankcheck_str = "door"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        hasit_str = "loc2"
        central "hasit"
        IF hasit_si > 0 THEN
            hashadit_str = "loc2"
            central "hashadit"
            havehadit_str = "key2"
            central "havehadit"
            central "delete2"
        END IF
    END IF
    Exit Sub
end sub

sub ln_actnispt()
    dim as short tempt
    dis_si = 1
    central "putaction"
    blankcheck_str = "____"
    central "blankcheck"
    IF blankcheck_si = -1 OR blankcheck_si > 0 THEN Exit Sub
    IF e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) = "Merchant" THEN
        central "merchant"
        Exit Sub
    END IF
    IF e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) = "Poindexter" THEN
        central "talk0001"
        Exit Sub
    END IF
    blankcheck_str = "pwchchst"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "pillage"
        blankcheck_str = "pwch"
        IF blankcheck_si > 0 THEN
            central "delete2"
        END IF
        Exit Sub
    END IF
    blankcheck_str = "door"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        tempt=0
        for T_si=1 to fix(len(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1))/4)
            select case mid(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1),T_si*4-3,4)
            case "loc1"
                tempt=1
            case "loc2"
                tempt=1
            case "loc3"
                tempt=1
            end select
        next
        if tempt=0 then
            central "delete2"
        END IF
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnfiremove()
    dis_si = 1
    blankcheck_str = "____pwch"
    central "blankcheck"
    IF blankcheck_si = -1 THEN
        central "gone"
        Exit Sub
    END IF
    IF blankcheck_si > 0 THEN
        central "firemove"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attkburn"
        central "gone"
        Exit Sub
    END IF
    central "gone"
    Exit Sub
end sub

sub ln_actndustmove()
    dis_si = 1
    blankcheck_str = "____pwch"
    central "blankcheck"
    IF blankcheck_si = -1 THEN
        central "gone"
    Exit Sub
    END IF
    IF blankcheck_si > 0 THEN
        central "firemove"
    Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "useslep"
        central "gone"
        Exit Sub
    END IF
    central "gone"
    Exit Sub
end sub

sub ln_actnwebmove()
    dis_si = 1
    blankcheck_str = "____pwch"
    central "blankcheck"
    IF blankcheck_si = -1 THEN Exit Sub
    IF blankcheck_si > 0 THEN
        central "webmove"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attktngl"
        central "gone"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actngrpl()
    IF dis_si = 3 THEN
        action_str = "rapl"
        central "putaction"
        central "actnrapl"
        Exit Sub
    END IF
    IF dis_si = 0 AND G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) < 10 THEN
        action_str = "____pwch"
        central "putaction"
        Exit Sub
    END IF
    IF dis_si = 0 THEN
        G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) - 10
    END IF
    IF dis_si < 3 THEN
        dis_si = dis_si + 1
    END IF
        blankcheck_str = "____pwch"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "pnch"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "grpl"
        central "blankcheck"
        IF blankcheck_si = -1 THEN
            dis_si = dis_si - 1
        Exit Sub
    END IF
    IF blankcheck_si > 0 THEN
        central "putaction"
        Exit Sub
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "putaction"
        action_str = "rapl"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "pnch"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "grpl"
        central "putaction"
        central "attklash"
        Exit Sub
    END IF
    blankcheck_str = "bldrchst"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        action_str = "rapl"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "pnch"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "grpl"
        central "putaction"
        Exit Sub
    END IF
    Exit Sub
end sub

sub ln_actnrapl()
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "pnch"
    MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "grpl"
    IF dis_si = 1 THEN
        action_str = "____pwch"
        dis_si = 0
        central "putaction"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 5, 4) = "____"
        Exit Sub
    END IF
    blankcheck_str = "____pwch"
    central "blankcheck"
    IF blankcheck_si = -1 THEN
        IF dis_si > 1 THEN
            dis_si = dis_si - 1
            central "putaction"
        END IF
        Exit Sub
    END IF
    IF blankcheck_si > 0 THEN
        IF dis_si > 1 THEN
            dis_si = dis_si - 1
            central "putaction"
        END IF
    END IF
    blankcheck_str = attackthem_str
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        central "attklash"
        dis_si = dis_si - 1
        central "putaction"
        Exit Sub
    END IF
    blankcheck_str = "bldrchst"
    central "blankcheck"
    IF blankcheck_si > 0 THEN
        dis_si = 1
        blankcheck_str = "____pwch"
        central "blankcheck"
        IF blankcheck_si = 0 THEN
            dis_si = dis_si - 1
            central "putaction"
            Exit Sub
        END IF
        IF blankcheck_si > 0 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                central "am"
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            central "swapdata"
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = Tx_si + d_sia(d_si, 1)
            Ty_si = Ty_si + d_sia(d_si, 2)
            central "getaction"
            dis_si = dis_si - 1
            central "putaction"
            Tx_si = temptx_si
            Ty_si = tempty_si
            Exit Sub
        END IF
    END IF
    Exit Sub
end sub

sub ln_crtnimp()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxgrmlspdrdtbyweb_emgdshkt"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actnmove"
    CASE CVL("fire")
        central "actnfire"
    CASE CVL("ispt")
        central "actnispt"
    CASE CVL("wing")
        central "actnwing"
    END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnfire()
    central "statgain"
    central "statmax"
    central "getaction"
    attackthem_str = "pndxgrmlspdrdtbyweb_shktemgd"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actnfiremove"
    END SELECT
    Exit Sub
end sub

sub ln_crtndust()
    central "statgain"
    central "statmax"
    central "getaction"
    attackthem_str = "pndxgrmlspdrshktemgdimp_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actndustmove"
    END SELECT
    Exit Sub
end sub

sub ln_crtnshkt()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxgrmlspdrdtbyweb_imp_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actnmove"
    CASE CVL("fire")
        central "actnfire"
    CASE CVL("bite")
        central "actnbite"
    CASE CVL("pnch")
        central "actnpnch"
    CASE CVL("kick")
        central "actnkick"
    CASE CVL("dggr")
        central "actndggr"
    CASE CVL("pike")
        central "actnpike"
    END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnemgd()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxgrmlspdrdtbyweb_imp_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actnmove"
    CASE CVL("fire")
        central "actnfire"
    CASE CVL("bite")
        central "actnbite"
    CASE CVL("pnch")
        central "actnpnch"
    CASE CVL("kick")
        central "actnkick"
    CASE CVL("dggr")
        central "actndggr"
    CASE CVL("pike")
        central "actnpike"
    END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnspdr()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxdtbyspdrimp_emgdshktgrml"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actnmove"
    CASE CVL("web_")
        central "actnweb"
    CASE CVL("bite")
        central "actnbite"
    CASE CVL("vnom")
        central "actnkick"
    END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnweb()
    central "statgain"
    central "statmax"
    central "getaction"
    IF action_str <> "move" THEN
        central "nextaction"
    END IF
    attackthem_str = "pndxgrmldtbyweb_shktemgdimp_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actnwebmove"
    CASE CVL("spdr")
        central "actnspdr"
    END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtndtby()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxgrmlspdrimp_emgdshkt"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actnmove"
    CASE CVL("fire")
        central "actnfire"
    CASE CVL("dtby")
        central "actndtby"
    CASE CVL("bite")
        central "actnbite"
    CASE CVL("kick")
        central "actnkick"
    CASE CVL("dust")
        central "actndust"
    END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtngrml()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxdtbyspdrimp_emgdshktweb_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actnmove"
    CASE CVL("fire")
        central "actnfire"
    CASE CVL("bite")
        central "actnbite"
    CASE CVL("pnch")
        central "actnpnch"
    CASE CVL("kick")
        central "actnkick"
    CASE CVL("dggr")
        central "actndggr"
    CASE CVL("pike")
        central "actnpike"
    END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnpndx()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = "pndxdtbyspdrimp_emgdshktweb_grmlccts"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        central "actnmove"
    CASE CVL("fire")
        central "actnfire"
    CASE CVL("bite")
        central "actnbite"
    CASE CVL("pnch")
        central "actnpnch"
    CASE CVL("kick")
        central "actnkick"
    CASE CVL("dggr")
        central "actndggr"
    CASE CVL("pike")
        central "actnpike"
    CASE CVL("spdr")
        central "actnspdr"
    CASE CVL("web_")
        central "actnweb"
    CASE CVL("vnom")
        central "actnvnom"
    CASE CVL("cure")
        central "actncure"
    CASE CVL("ispt")
        central "actnispt"
    CASE CVL("grpl")
        central "actngrpl"
    CASE CVL("rapl")
        central "actnrapl"
    CASE CVL("seed")
        central "actnccts"
    CASE CVL("wstf")
        central "actnwstf"
    CASE CVL("wing")
        central "actnwing"
    CASE CVL("key1")
        central "actnkey1"
    CASE CVL("key2")
        central "actnkey2"
    END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnccts()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = ""
    here_str = "watr"
    central "here"
    IF here_si > 0 THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "hole"
    END IF
    here_str = "stpw"
    central "here"
    IF here_si > 0 THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "stps"
    END IF
    SELECT CASE CVL(action_str)
    CASE CVL("seed")
        central "actnccts"
    END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub ln_crtnbldr()
    central "statgain"
    central "statmax"
    central "nextaction"
    attackthem_str = ""
    IF MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "hole" THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "dirt"
        central "gone"
        Exit Sub
    END IF
    IF MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "watr" THEN
        MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 5, 4) = "stpw"
        central "gone"
        Exit Sub
    END IF
    'SELECT CASE CVL(action_str)
    'END SELECT
    central "autolevelup"
    Exit Sub
end sub

sub cinput ()
    XXmouse_si = XMouse_si
    YYmouse_si = Ymouse_si
    l1b_si = Lb_si
    r1b_si = Rb_si
    'sub cinput
    XXmouse_si = XMouse_si
    YYmouse_si = Ymouse_si
    l1b_si = Lb_si
    r1b_si = Rb_si
    c_str = INKEY: IF c_str = "" THEN c_str = "%%"
    if left(c_str,1)=chr(255) and len(c_str)=2 then
        c_str="&HFF"+right(string(2,"0")+hex(asc(right(c_str,1))),2)
    end if
    if len(c_str)=1 and asc(c_str)<33 then
        c_str="&H"+right(string(2,"0")+hex(asc(right(c_str,1))),2)
    end if
    'STICKS joy0_si, joy1_si, joy2_si, joy3_si, but0_si, but1_si, but2_si, but3_si, but4_si, but5_si, but6_si, but7_si
    'PENS tip0_si, tip1_si, tip2_si, tip3_si, tip4_si, tip5_si, tip6_si, tip7_si, tip8_si, tip9_si
    MouseStatus Lb_si, Rb_si, XMouse_si, Ymouse_si
    'XMouse_si = XMouse_si / 2
    ym_si = INT(Ymouse_si / 8) + 1
    xm_si = INT(XMouse_si / 8) + 1
    jsx_si = 0 'joy0_si - 100
    jsy_si = 0 'joy1_si - 100
    jsa_si = 0 'but0_si
    jsb_si = 0 'but1_si
    IF llb_si <> Lb_si OR (llb_si = 0 AND Lb_si = 0) THEN
        llb_si = Lb_si
        l1b_si = Lb_si
    ELSE
        Lb_si = 0
    END IF
    IF rrb_si <> Rb_si OR (rrb_si = 0 AND Rb_si = 0) THEN
        rrb_si = Rb_si: r1b_si = Rb_si
    ELSE
        Rb_si = 0
    END IF
END SUB

sub cursorput
    if c_str<>string(2,"%") then
        clast_str=c_str
    end if
    clv_buffer_cls clv_buffer(), clv_buffer_cursor
    clv_draw_line clv_buffer(), clv_buffer_cursor, XMouse_si - 2, Ymouse_si - 2, XMouse_si + 2, Ymouse_si + 2, rgb(255,255,255), rgb(0,0,0), clv_flag_default
    clv_draw_line clv_buffer(), clv_buffer_cursor, XMouse_si + 2, Ymouse_si - 2, XMouse_si - 2, Ymouse_si + 2, rgb(255,255,255), rgb(0,0,0), clv_flag_default
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_cursor, clv_glyph(), (1-1) shl 3, (1-1) shl 3, str(XMouse_si)+","+trimint(YMouse_si)+","+clast_str
END SUB

sub progress_put (clv_buffer() as fb.image ptr, Index as integer, Caption as string, _
        byref Cur as integer, Max as integer, _
        X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, _
        Switch as integer, ARGB as uinteger, Increment as integer, Progress as string, _
        byref LastSec as double, DelaySec as double)
    dim as integer X3, Y3
    dim as short X1_si, Y1_si, X2_si, Y2_si
    dim as string Progress_Old=Progress
    dim as double Sec=timer
    Cur=Cur+Increment
    Progress=str(fix(Cur*10000/Max))
    if len(Progress)-2<=0 then
        Progress="0"+right(string(2,"0")+right(Progress,2),2)+"%"
    else
        Progress=mid(Progress,1,len(Progress)-2)+"."+right(string(2,"0")+right(Progress,2),2)+"%"
    end if
    
	#ifdef __Keal_Demux__
		if Sec-LastSec>=DelaySec then
			LastSec=Sec-KealDemux_m(DelaySec-KealDemux_m(Sec-LastSec,DelaySec),DelaySec)
		else
	#endif
			Exit Sub
	#ifdef __Keal_Demux__
		end if	
	#endif
	
    if Switch and 1 then
        clv_buffer_cls clv_buffer(), Index
    end if
    X1_si=X1
    Y1_si=Y1
    X2_si=X2
    Y2_si=Y2
    X3=((X1-1) shl 3)+(((X2-X1-1) shl 3)+7)*Cur/Max
    frame_put clv_buffer(), Index, X1_si, Y1_si, X2_si, Y2_si, 0, 0
    clv_draw_line clv_buffer(), Index, (X1-1) shl 3, (Y1-1) shl 3, X3, ((Y2-1) shl 3)+7, ARGB, rgb(0,0,0), clv_flag_bf
    X3=((X1-1) shl 3)+(((X2-X1-1) shl 3)+7)/2-((len(Caption)-1) shl 3)/2
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), X3, (Y1-1) shl 3, Caption
    
    X3=((X1-1) shl 3)+(((X2-X1-1) shl 3)+7)/2-((len(Progress)-1) shl 3)/2
    Y3=((Y1-1) shl 3)+(((Y2-Y1-1) shl 3)+7)/2
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), X3, Y3, progress
    
    cinput
    clv_buffer_stack clv_buffer()
end sub

sub graphicput (clv_buffer() as fb.image ptr, Index as integer, byref yy1_si as short, byref xx1_si as short, ss1_str as string, dpath_str as string)
    dim as string ss2_str, ss3_str
    dim as fb.image ptr ColorGraphic, TransparencyGraphic
    IF LEN(ss1_str) = 11 AND ss1_str <> "________.24" THEN
        ss2_str = ss1_str + "y"
        TransparencyGraphic=png_load(thispath_str + dpath_str + ss2_str + ".png")
        'PUT ((xx1_si - 1) * 8, (yy1_si - 1) * 8), gtmp, AND
        ss3_str = ss1_str + "x"
        ColorGraphic=png_load(thispath_str + dpath_str + ss3_str + ".png")
        'PUT ((xx1_si - 1) * 8, (yy1_si - 1) * 8), gtmp, OR
        clv_draw_image clv_buffer(), Index, (xx1_si - 1) * 8, (yy1_si - 1) * 8, ColorGraphic, TransparencyGraphic
        png_destroy ColorGraphic
        png_destroy TransparencyGraphic
    END IF
    IF LEN(ss1_str) <> 11 THEN
        LOCATE yy1_si + 1, xx1_si + 1: PRINT ".";
    END IF
END SUB

sub suspend (byref start_sf as single, byref delay as short)
    DO
        'commands to do while suspended
        cinput
        cursorput
        clv_buffer_stack clv_buffer()
        'netscreenout
    LOOP UNTIL (TIMER < start_sf) OR (TIMER >= start_sf + delay) 'check before ending loop
END SUB

sub cls2
    line(0,0)-(319,239), rgb(0,0,0), bf'pal(0), bf
end sub

sub file_put_contents(filename as string, dat as string)
    dim as integer mode
    mode=freefile
    Open filename For Binary Access write As mode
    put #mode,,dat
    close mode
end sub

function file_get_contents(filename as string) as string
    dim as string ret
    dim as integer mode
    mode=freefile
    Open filename For Binary Access read As mode
    ret=space(lof(mode))
    if not(eof(mode)) and (lof(mode)>0) then
        seek #mode,1
        get #mode,seek(mode),ret
    end if
    close mode
    file_get_contents=ret
end function

sub pal_load(filepath as string, pal() as uinteger)
    dim as string Tmp
    dim as integer Index
    Tmp=file_get_contents(filepath)
    for Index=&H00 to &HFF
        pal(Index)=rgb(asc(mid(Tmp,(Index shl 2)+2,1)),asc(mid(Tmp,(Index shl 2)+3,1)),asc(mid(Tmp,(Index shl 2)+4,1)))
    next
end sub

sub MouseStatus (byref LBi AS short, byref RBi AS short, byref Mouse_X AS short, byref Mouse_Y AS short)
    'Ax = 3
    'Mouse_Driver Ax, Bx, Cx, Dx
    dim as integer Ax_li, Bx_li, Cx_li, Dx_li, Mouse_X_li, Mouse_Y_li
    Ax_li=Ax
    Bx_li=Bx
    Cx_li=Cx
    Dx_li=Dx
    GETMOUSE Cx_li,Dx_li,,Bx_li
    Ax=Ax_li
    Bx=Bx_li
    Cx=Cx_li
    Dx=Dx_li
    
    LBi = ((Bx AND 1) <> 0)
    RBi = ((Bx AND 2) <> 0)
    
    Mouse_X_li = ((Cx_li)*Mouse_Width/Display_Width)
    Mouse_Y_li = ((Dx_li)*Mouse_Height/Display_Height)
    Mouse_X=Mouse_X_li
    Mouse_Y=Mouse_Y_li
END SUB

sub clv_buffer_stack (clv_buffer() as fb.image ptr)

    cursorput
    
    clv_buffer_cls clv_buffer(), clv_buffer_draw

    clv_buffer_overlay clv_buffer(), clv_buffer_splash, clv_buffer_draw
    
    select case clv_buffer_focus
    case clv_buffer_title
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
    case clv_buffer_help
        clv_buffer_overlay clv_buffer(), clv_buffer_help, clv_buffer_draw
    case clv_buffer_portal
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_portal, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_menu, clv_buffer_draw
    case clv_buffer_status
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_portal, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_status, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_menu, clv_buffer_draw
    case clv_buffer_expshop
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_portal, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_expshop, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_menu, clv_buffer_draw
    case clv_buffer_merchant
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_portal, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_merchant, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_menu, clv_buffer_draw
    case clv_buffer_playbyplay
        clv_buffer_overlay clv_buffer(), clv_buffer_title, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_portal, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_playbyplay, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_menu, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_bar, clv_buffer_draw
    end select
    if not (clv_buffer_focus=clv_buffer_splash) then
        clv_buffer_overlay clv_buffer(), clv_buffer_bar, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_progress, clv_buffer_draw
        clv_buffer_overlay clv_buffer(), clv_buffer_cursor, clv_buffer_draw
    end if
    line (0,0)-(Display_Width-1,Display_Height-1),rgb(0,0,0),bf
    clv_buffer_flip clv_buffer(), clv_buffer_draw, Display_Width, Display_Height
    screensync
    screencopy 1,0
end sub

sub frame_status(Row as short, Col as short)
    dim as short X1, Y1, X2, Y2, C1, C2
    X1 = Col
    X2 = X1+5*3+1-1
    Y1 = Row
    Y2 = Y1+5+3+1-1
    C1 = 4
    C2 = 12
    frame_put clv_buffer(), clv_buffer_status, X1, Y1, X2, Y2, C1, C2
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row-1) shl 3, e_stra(Rose_Calc( Tx_si, Ty_si ), 0)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (col-1) shl 3, (Row+1-1) shl 3, "LV"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+3-1) shl 3, (Row+1-1) shl 3, RIGHT(STR(100 + G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)), 2)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (col+9-1) shl 3, (Row+1-1) shl 3, (RIGHT("     " + STR(G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)), 5) + "$")
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+2-1) shl 3, (Row+1-1) shl 3, "ú"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+2-1) shl 3, "HP"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+4-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 1))), 4)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+9-1) shl 3, (Row+2-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+11-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 11))), 4)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+3-1) shl 3, "STR"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+4-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 2))), 4)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+9-1) shl 3, (Row+3-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+11-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 12))), 4)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+4-1) shl 3, "ESS"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+4-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 3))), 4)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+9-1) shl 3, (Row+4-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+11-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Rose_Calc( Tx_si, Ty_si ), 13))), 4)
    central "getaction"
    SELECT CASE d_si
    CASE 0
        graphicput clv_buffer(), clv_buffer_status, Row+5, Col, "bttnself.24", spritepath_str
    CASE 1
        graphicput clv_buffer(), clv_buffer_status, Row+5, Col, "bttnnrth.24", spritepath_str
    CASE 2
        graphicput clv_buffer(), clv_buffer_status, Row+5, Col, "bttneast.24", spritepath_str
    CASE 3
        graphicput clv_buffer(), clv_buffer_status, Row+5, Col, "bttnsuth.24", spritepath_str
    CASE 4
        graphicput clv_buffer(), clv_buffer_status, Row+5, Col, "bttnwest.24", spritepath_str
    END SELECT
    graphicput clv_buffer(), clv_buffer_status, Row+5, Col+6, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) + MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4) +  ".24"), spritepath_str
    'graphicput clv_buffer(), clv_buffer_status, Row+5, Col+3, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 3), 5, 4) + "____.24"), spritepath_str
    FOR t_si = 1 TO LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1)) / 4
        R_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si - 1) * 4 + 1, 4)
        central "names"
        IF action_str = R_str THEN
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+8-1) shl 3, rr_str
        end if
    NEXT t_si
end sub

sub frame_inventory (Row as short, Col as short)
    dim as short X1, Y1, X2, Y2, C1, C2
    dim as short X, Y
    X1 = Col
    X2 = X1+5*3+1-1
    Y1 = Row
    Y2 = Y1+3*3-1
    C1 = 4
    C2 = 12
    frame_put clv_buffer(), clv_buffer_status, X1, Y1, X2, Y2, C1, C2
    central "getaction"
    FOR t_si = 1 TO LEN(e_stra(Rose_Calc( Tx_si, Ty_si ), 1)) / 4
        X=fix((t_si-1) mod 5)*3
        Y=fix((t_si-1)/5)*3
        R_str = MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si - 1) * 4 + 1, 4)
        central "names"
        graphicput clv_buffer(), clv_buffer_status, Row + Y, Col + X, (MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 1), (t_si*4)-3, 4) + "____.24"), spritepath_str
        IF action_str = R_str THEN
            clv_draw_line clv_buffer(), clv_buffer_status, (statx_si+X-1) shl 3,(14+Y-1) shl 3,((statx_si+X-1) shl 3)+23,((14+Y-1) shl 3)+23, rgb(255,255,255), rgb(0,0,0), clv_flag_b
        end if
    NEXT t_si
end sub

sub frame_title (Row as short, Col as short)
    dim as short X1, Y1, X2, Y2, C1, C2

    clv_buffer_cls clv_buffer(), clv_buffer_title
    
    X1 = Col
    X2 = X1+6
    Y1 = 2
    Y2 = Y1
    C1 = 6
    C2 = 0

    frame_put clv_buffer(), clv_buffer_title, X1, Y1, X2, Y2, C1, C2

    SELECT CASE titled_si
    CASE 0
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_title, clv_glyph(), (statx_si-1) shl 3, (2-1) shl 3, "Puzzlum"
    CASE 1
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_title, clv_glyph(), (statx_si-1) shl 3, (2-1) shl 3, "(T)itle"
    END SELECT

end sub

sub frame_put (clv_buffer() as fb.image ptr, Index as integer, X1 as short, Y1 as short, X2 as short, Y2 as short, C1 as short,C2 as short)
    dim as integer A(1 to 2,1 to 2), X=1, Y=2

    A(X,1)=((X1-1) shl 3)-1
    A(X,2)=(X2 shl 3)
    A(Y,1)=((Y1-1) shl 3)-1
    A(Y,2)=(Y2 shl 3)
    
    clv_draw_line clv_buffer(), Index, A(X,1), A(Y,1), A(X,2), A(Y,2), rgb(0,0,0), rgb(0,0,0), clv_flag_bf
    clv_draw_line clv_buffer(), Index, A(X,1), A(Y,1)-2, A(X,2), A(Y,2)+2, rgb(131,131,131), rgb(0,0,0), clv_flag_b
    clv_draw_line clv_buffer(), Index, A(X,1)-2, A(Y,1), A(X,2)+2, A(Y,2), rgb(131,131,131), rgb(0,0,0), clv_flag_b
    clv_draw_line clv_buffer(), Index, A(X,1)-1, A(Y,1)-1,A(X,2)+1,A(Y,2)+1, rgb(192,192,192), rgb(0,0,0), clv_flag_b
    clv_draw_pixel clv_buffer(), Index, A(X,1)-1, A(Y,1)-1, rgb(131,131,131), rgb(0,0,0)
    clv_draw_pixel clv_buffer(), Index, A(X,2)+1, A(Y,2)+1, rgb(131,131,131), rgb(0,0,0)
    clv_draw_pixel clv_buffer(), Index, A(X,1)-1, A(Y,2)+1, rgb(131,131,131), rgb(0,0,0)
    clv_draw_pixel clv_buffer(), Index, A(X,2)+1, A(Y,1)-1, rgb(131,131,131), rgb(0,0,0)
end sub

sub clv_glyph_ini  (clv_glyph() as integer)
    dim Glyph as integer
    for Glyph=lbound(clv_glyph,1) to ubound(clv_glyph,1)
        if (((Glyph>=32) and (Glyph<=126)) or Glyph=250 or Glyph=254) and not(((Glyph>=65) and (Glyph<=90)) or ((Glyph>=97) and (Glyph<=122))) then
            clv_glyph(Glyph,0)=1
        end if
        'if Glyph>=97 and Glyph<=122 then
        '    clv_glyph(Glyph,1)=Glyph-32
        'else
            clv_glyph(Glyph,1)=Glyph
        'end if
    next
end sub

sub input_text (Index as integer, Src as integer, Row as short, Col as short, W as short, H as short, byref Text_str as string)
    do
        clv_buffer_copy clv_buffer(), Src, Index
        frame_put clv_buffer(), Index,Row,Col,Row,Col,7,15
        cinput
        clv_buffer_stack clv_buffer()
        select case c_str
        case "&HFF0D"
            exit do
        end select
    loop
end sub

sub Map_Load (map_names() as names_type)
	
    dim as integer X,Y, X1=5, Y1=10, X2=35, Y2=15, Cur=0, Max=161, Index2=clv_buffer_progress, Index = 0
    dim as double DelaySec=progress_delay, LastSec=timer-DelaySec
    dim as string Caption="Loading Map", progress=space(0)
    dim as uinteger ARGB, Switch=1
    
    dim as string label=space(0),value=space(0),ret=space(0),mapname=space(0)
    
    ARGB=rgb(96,32,255)
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 0, progress, LastSec, DelaySec

    'map name
    mapname= sync_names( "mapname_str", Save_Table() )
    Caption=Caption+" "+chr(34)+mapname_str+chr(34)
    'map dimensions width
    AA_si= val( sync_names( "AA_si", Save_Table() ) )
    'map dimensions height
    DD_si= val( sync_names( "DD_si", Save_Table() ) )
    Max=Max+AA_si*DD_si*23
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 3, progress, LastSec, DelaySec

    'directional axis matrix
    for X=0 to 4
        for Y=1 to 2
            d_sia(X,Y)= val( sync_names( "d_sia["+trimint(X)+"]["+trimint(Y)+"]", Save_Table() ) )
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec

    'map pointer x
    ex_si= val( sync_names( "ex_si", Save_Table() ) )
    'map pointer y
    dy_si= val( sync_names( "dy_si", Save_Table() ) )
    'screen cursor x
    mdx_si= val( sync_names( "mdx_si", Save_Table() ) )
    'screen cursor y
    mdy_si= val( sync_names( "mdy_si", Save_Table() ) )
        
    'text color
    textcolor_si= val( sync_names( "textcolor_si", Save_Table() ) )
    'text delay
    textdelay_sf= val( sync_names( "textdelay_sf", Save_Table() ) )
    
    'current window
    win_si= val( sync_names( "win_si", Save_Table() ) )
    '[!!!]'progress_put clv_buffer(), Index, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 7, progress, LastSec, DelaySec

    for Y=0 to 4
        for X=1 to 2
            d_sia(Y,X)= val( sync_names( "d_sia["+trimint(Y)+"]["+trimint(X)+"]", Save_Table() ) )
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec

    FOR X = 0 TO win_si
        for Y=1 to 2
            win_sia(Y + (X - 1) * 2)= val( sync_names( "win_sia["+trimint(X)+"]["+trimint(Y)+"]", Save_Table() ) )
        next
    NEXT
    Max=Max+(win_si+1)*2
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, (win_si+1)*2, progress, LastSec, DelaySec

    'level up data
    FOR t_si = 0 TO 64
        for X=1 to 2
            l_sia(t_si)= val( sync_names( "l_sia["+trimint(t_si)+"]", Save_Table() ) )
        next
    NEXT

    ctrl_str= sync_names( "ctrl_str", Save_Table() )
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 131, progress, LastSec, DelaySec
        
    FOR Ty_si = 1 TO DD_si
        FOR Tx_si = 1 TO AA_si
            e_stra(Rose_Calc( Tx_si, Ty_si ), 0)= sync_names( "prflidty_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            e_stra(Rose_Calc( Tx_si, Ty_si ), 1)= sync_names( "prflactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            mid(e_stra(Rose_Calc( Tx_si, Ty_si ), 2),1,4)= sync_names( "prflgpic_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            e_stra(Rose_Calc( Tx_si, Ty_si ), 3)= sync_names( "prflcmnd_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            e_stra(Rose_Calc( Tx_si, Ty_si ), 4)= sync_names( "prflgpicactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            e_stra(Rose_Calc( Tx_si, Ty_si ), 5)= sync_names( "prflactnct_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() )
            progress_put clv_buffer(), Index, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 6, progress, LastSec, DelaySec

            G_dfa(Rose_Calc( Tx_si, Ty_si ), 0)= val( sync_names( "prflidty_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 1)= val( sync_names( "prflhp_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 2)= val( sync_names( "prflstr_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 3)= val( sync_names( "prfless_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 4)= val( sync_names( "prflspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 5)= val( sync_names( "prflarmr_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)= val( sync_names( "prflexp_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 7)= val( sync_names( "prflvalu_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 8)= val( sync_names( "prflpirc_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 9)= val( sync_names( "prflchck_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)= val( sync_names( "prfllv_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 11)= val( sync_names( "prflhpmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 12)= val( sync_names( "prflstrmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 13)= val( sync_names( "prflessmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 14)= val( sync_names( "prflessspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 15)= val( sync_names( "prflevad_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            G_dfa(Rose_Calc( Tx_si, Ty_si ), 16)= val( sync_names( "prflblnk_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Save_Table() ) )
            progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 17, progress, LastSec, DelaySec
        NEXT
    NEXT
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 0, progress, LastSec, 0.0
    sleep 1
    clv_buffer_cls clv_buffer(), Index2
end sub

sub Map_Save ( DB(any) as names_type)
    dim as integer X,Y, X1=5, Y1=10, X2=35, Y2=15, Cur=0, Max=161, Index2=clv_buffer_progress
    dim as double DelaySec=progress_delay, LastSec=timer-DelaySec
    dim as integer queue_max=0
    dim as string Caption="Saving Map "+chr(34)+mapname_str+chr(34), progress=space(0)
    dim as uinteger ARGB, Switch=1
    ARGB=rgb(96,32,255)
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 0, progress, LastSec, DelaySec
    
    wipe_table( queue_table() )
    
    dim as uinteger fail=0,index=0,octet=0,biet=0
    dim as string ret=space(0)
    
    names_push( "mapname_str", mapname_str,Names_Table() ) 'map name
    names_push( "AA_si", trimint(AA_si), Names_Table() ) 'map dimensions width
    names_push( "DD_si", trimint(DD_si), Names_Table() ) 'map dimensions height
    Max=Max+AA_si*DD_si*23
    
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 3, progress, LastSec, DelaySec

    'directional axis matrix
    for X=0 to 4
        for Y=1 to 2
            names_push("d_sia["+trimint(X)+"]["+trimint(Y)+"]",trimint(d_sia(X,Y)),Names_Table())
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec

    names_push("ex_si",trimint(ex_si),Names_Table()) 'map pointer x
    names_push("dy_si",trimint(dy_si),Names_Table()) 'map pointer y
    names_push("mdx_si",trimint(mdx_si),Names_Table()) 'screen cursor x
    names_push("mdy_si",trimint(mdy_si),Names_Table()) 'screen cursor y
        
    names_push("textcolor_si",trimint(textcolor_si),Names_Table()) 'screen cursor y
    names_push("textdelay_sf",trimint(textdelay_sf),Names_Table()) 'screen cursor y
    
    names_push("win_si",trimint(win_si),Names_Table()) 'screen cursor y
    Max=Max+(Win_si+1)*2
    queue_max=Max
    redim preserve queue(0 to queue_max) as names_type
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 7, progress, LastSec, DelaySec

    for Y=0 to 4
        for X=1 to 2
            names_push("d_sia["+trimint(Y)+"]["+trimint(X)+"]",trimint(d_sia(Y,X)),Names_Table())
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec
    
    FOR X = 0 TO win_si
        for Y=1 to 2
            names_push("win_sia["+trimint(X)+"]["+trimint(Y)+"]",trimint(win_sia(Y + (X - 1) * 2)),Names_Table())
        next
    NEXT
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, (win_si+1)*2, progress, LastSec, DelaySec

    'level up data
    FOR t_si = 0 TO 64
        for X=1 to 2
            names_push("l_sia["+trimint(t_si)+"]",trimint(l_sia(t_si)),Names_Table())
        next
    NEXT
    
    names_push("ctrl_str", ctrl_str,Names_Table())
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 131, progress, LastSec, DelaySec

    FOR Ty_si = 1 TO DD_si
        FOR Tx_si = 1 TO AA_si
            names_push("prflidty_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Rose_Calc( Tx_si, Ty_si ), 0),Names_Table())
            names_push("prflactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Rose_Calc( Tx_si, Ty_si ), 1),Names_Table())
            names_push("prflgpic_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",mid(e_stra(Rose_Calc( Tx_si, Ty_si ), 2),1,4),Names_Table())
            names_push("prflcmnd_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Rose_Calc( Tx_si, Ty_si ), 3),Names_Table())
            names_push("prflgpicactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Rose_Calc( Tx_si, Ty_si ), 4),Names_Table())
            names_push("prflactnct_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Rose_Calc( Tx_si, Ty_si ), 5),Names_Table())
            progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 6, progress, LastSec, DelaySec

            names_push("prflidty_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 0)),Names_Table())
            names_push("prflhp_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 1)),Names_Table())
            names_push("prflstr_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 2)),Names_Table())
            names_push("prfless_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 3)),Names_Table())
            names_push("prflspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 4)),Names_Table())
            names_push("prflarmr_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 5)),Names_Table())
            names_push("prflexp_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 6)),Names_Table())
            names_push("prflvalu_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 7)),Names_Table())
            names_push("prflpirc_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 8)),Names_Table())
            names_push("prflchck_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 9)),Names_Table())
            names_push("prfllv_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 10)),Names_Table())
            names_push("prflhpmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 11)),Names_Table())
            names_push("prflstrmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 12)),Names_Table())
            names_push("prflessmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 13)),Names_Table())
            names_push("prflessspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 14)),Names_Table())
            names_push("prflevad_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 15)),Names_Table())
            names_push("prflblnk_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Rose_Calc( Tx_si, Ty_si ), 16)),Names_Table())
            progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 17, progress, LastSec, DelaySec
        NEXT
    NEXT
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 0, progress, LastSec, 0.0
	'[..]'merge_names( Names_Table(), names_table() )
    sleep 1
    clv_buffer_cls clv_buffer(), Index2
end sub


sub ln_savegame_save( filename as string = "", Save_Table( any ) as names_type )
'case "&HFF3B" 'F1 (save savegame)
    	    	
    Map_Save( Save_Table() )
    
	save_names( ".\save\" + filename + ".dat", Save_Table() )

end sub

sub ln_savegame_load( filename as string = "", Save_Table( any ) as names_type )
'case "&HFF3C" 'F2 (load savegame)

	load_names_from_file( ".\save\" + filename + ".dat", Save_Table() )
    
	Map_Load( Save_Table() )

end sub

function Compare_Key( KeyPress as string = "", Comparison as string = "", Input_Table( any ) as names_type ) as integer
	
	if cvl( KeyPress ) = 27 then end
	
	dim as string SyncKeyStr = string$( 0, 0 )
	dim as long SyncKeyVal = 0
	
	SyncKeyStr = sync_names( Comparison, Input_Table() )
	select case left$( SyncKeyStr, len( quot ) ) = quot and right$( SyncKeyStr, len( quot ) ) = quot
	case 0 = 0
		SyncKeyVal = val( mid$( SyncKeyStr, len( quot ) + 1, len(sync_names( Comparison, Input_Table() ) ) - len( quot ) * 2 ) )
	case else
		SyncKeyVal = val( SyncKeyStr )
	end select
		
	locate 1,1
	color 15,1
	
	print quot + hex( cvl( KeyPress ) ) + quot + eq + quot + hex( SyncKeyVal ) + quot
	flip
	
	select case 0 = 0
	case SyncKeyVal = cvl( KeyPress )
		Compare_Key = 0 = 0
	case else
		Compare_Key = 0
	end select
	
end function

function Rose_Calc( Tx_si as integer = 0, Ty_si as integer = 0 ) as integer
	Rose_Calc = Tx_si + (Ty_si - 1) * AA_si
end function

function wait_key() as string

	dim as string cis = ""
	
	while len( cis ) = 0
		cis = inkey
	wend

	wait_key = cis

	if cis = chr$( 27 ) then end
	
end function