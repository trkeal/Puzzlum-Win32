#define puzzlum_main_lib

'puzzlum-main.bas
'
'Puzzlum is Copyright (C) 1997, 2010, 2021, 2022 Timothy Robert Keal
'Released by Timothy Robert Keal under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )
'
'http://puzzlum.net/
'mailto:trkeal@gmail.com
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

'=====
	#inclib "puzzlum-common"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once ".\inc\central-debug.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\puzzlum-outro.bi"

	#include once ".\inc\CLV.bi"

	#include once ".\inc\puzzlum-subs.bi"
	#include once ".\inc\puzzlum-vars.bi"
	#include once ".\inc\puzzlum-maps.bi"

	#include once ".\inc\puzzlum-test.bi"

	#include once ".\inc\puzzlum-map-viewer.bi"
	#include once ".\inc\puzzlum-profile-manip.bi"

sub ln_roe()

	wipe_table Bundle_Table()
	
	load_names_from_file( ".\gamedata\Bundle.dat", Bundle_Table() )

	loader
	splash
		
    clv_glyph_ini clv_glyph()

	font_loader
    
	clv_buffer_ini clv_buffer(), Screen_Width, Screen_Height
    
	clv_buffer_cls clv_buffer(), clv_buffer_splash

	central_loader "splash"
			
	locate ( Display_Height shr 3 ) + 1, 1
	print make_keys()
	
    clv_buffer_cls clv_buffer(), clv_buffer_bar
    	
	c_str = wait_key()
    
    do
        restart_roe=0
		
		central_loader "splash"
        
		central_call "startup"
                
        c_str = lcase("t")

        do
			
			central_loader "splash"
			
			locate ( Display_Height shr 3 ) + 1, 1
			print make_keys()
			
			flip
			
			c_str = wait_key()
			
			if restart_roe then exit do

			if Compare_Key( c_str, "Title", Input_Table() ) OR (ym_si = 3 AND xm_si = statx_si + 5 AND Lb_si = -1) then
                'clv_buffer_focus=clv_buffer_title
                central "starttitle"
            end if
            
			exitcommand=0
            do
                central "command"
                
				exitcommand3=0
                do
                    central "command3"
                    
					if Compare_Key( c_str, "Title", Input_Table() ) OR (ym_si = 3 AND xm_si = statx_si + 5 AND Lb_si = -1) then
                    
						exitcommand3 = NOT( 0 )
                        exitcommand = not( 0 )
						
                    end if
                    
					if restart_roe then exit do
                
				loop while (INSTR(1, "L ||", RIGHT(" " + c_str, 1)) = 0) and not( exitcommand3 )
				
                if restart_roe then exit do
				
            loop while ( INSTR(1, "L||", RIGHT(" " + c_str, 1)) > 0 ) and not( restart_roe )
			
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

	load_names_from_file( ".\gamedata\Bundle.dat", Bundle_Table() )

	cls
	
	dim as string cis = ""
	
	'loader

  	'load_names_from_file( thispath_str + mappath_str + map_str, Maps_Table() )
  	'''load_names_from_file( mappath_str + map_str, Maps_Table() )

    'OPEN thispath_str + mappath_str + map_str FOR INPUT AS 1    
	
	seed_loader sync_names( "seed/filename", Bundle_Table() )

	levels_loader sync_names( "levels/filename", Bundle_Table() )
	win_loader sync_names( "win/filename", Bundle_Table() )
	
	map_loader sync_names( "maps/path", Bundle_Table() ) + sync_names( "map/filename", Bundle_Table() )
	
	map_viewer
	
end sub

sub ln_starttitle()

	wipe_table Bundle_Table()
	
	load_names_from_file( ".\gamedata\Bundle.dat", Bundle_Table() )
    
		
		clv_buffer_focus=clv_buffer_title
        'SCREEN 14, 32, 16
        'screenset 1,0
        'WIDTH 40, 30
        'COLOR rgb(255,255,255),rgb(0,0,131)'pal(15), pal(1)
		
		clv_buffer_cls clv_buffer(), clv_buffer_title
        colr_si = 15
        central "title", clv_buffer(), clv_buffer_title
        colr_si = 11

        cls

		color &HFFFFFF

        text_out space( 1 ) + sync_names("title", Bundle_Table() )
        
		'central "showtext", clv_buffer(), clv_buffer_splash
        
		text_out space( 1 ) + sync_names("copyright", Bundle_Table() )
		
        'central "showtext", clv_buffer(), clv_buffer_splash
		
        text_out space( 1 ) + sync_names("website", Bundle_Table() ) + string$( 1, 32 ) + sync_names("email", Bundle_Table() )
		
        'central "showtext", clv_buffer(), clv_buffer_splash
        
		text_out space( 1 ) + sync_names("license/intro", Bundle_Table() ) + string$( 1 , 32 )
        
		'central "showtext", clv_buffer(), clv_buffer_splash
        
		text_out space( 1 ) + sync_names("license", Bundle_Table() )
        
		'central "showtext", clv_buffer(), clv_buffer_splash
        
		text_out space( 1 ) + sync_names("license/ammendment", Bundle_Table() )

        'central "showtext", clv_buffer(), clv_buffer_splash
		
        text_out space( 1 ) + sync_names("license/website", Bundle_Table() )
        
		'central "showtext", clv_buffer(), clv_buffer_splash
        print
        
        locate 17,1
        colr_si = 9
        text_out space( 1 ) + "(H)elp"
        
		'central "showtext", clv_buffer(), clv_buffer_title
        PRINT
        text_out space( 1 ) + "(C)ontinue"
        
		'central "showtext", clv_buffer(), clv_buffer_title
        PRINT
        text_out space( 1 ) + "(R)estart"
        
		'central "showtext", clv_buffer(), clv_buffer_title
        PRINT
        text_out space( 1 ) + "(Q)uit"
        
		'central "showtext", clv_buffer(), clv_buffer_title
        PRINT
        text_out space( 1 ) + "(D)ebug"

		'central "showtext", clv_buffer(), clv_buffer_title
        
		'ScreenCopy 1, 0
		flip
	do
		
		c_str = wait_key()
		
		clv_buffer_stack clv_buffer()
        
		central_call "commandwait"
        
		IF Compare_Key( c_str, "Restart", Input_Table() ) OR (ym_si = 21 AND xm_si = 3 AND Lb_si = -1) THEN
            central "screenset"
            restart_roe=1 'RUN
            exit do
        END IF
        IF Compare_Key( c_str, "Quit", Input_Table() ) OR (ym_si = 23 AND xm_si = 3 AND Lb_si = -1) THEN
            central "screenset"
            outro
        END IF
        IF Compare_Key( c_str, "Help", Input_Table() ) OR (ym_si = 17 AND xm_si = 3 AND Lb_si = -1) THEN
            central "starthelp"
        END IF
        IF Compare_Key( c_str, "Debug", Input_Table() ) OR (ym_si = 25 AND xm_si = 3 AND Lb_si = -1) THEN
            Debug_Enabled = not( Debug_Enabled <> 0 )
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
            text_out " (C)ontinue"
            central "showtext", clv_buffer(), clv_buffer_help
            PRINT
            text_out " (T)itle"
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
        text_out R_str
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
    
	dim as string Afflictions = string$( 0, 0 )
	dim as names_type Afflictions_Table( any )
	dim as integer act_index = 0, act_count = 0, act_dist = 0
	dim as string act_this = string$( 0, 0 )
	FOR Tx_si = 1 TO AA_si
        FOR Ty_si = 1 TO DD_si
            a_si = 0
            d_si = 0
            IF G_dfa(Rose_Calc( Tx_si, Ty_si ), 9) = 0 THEN
                G_dfa(Rose_Calc( Tx_si, Ty_si ), 9) = 1
                MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 4), 1, 4) = "____"
                central "getaction"
				
				load_names_from_file( ".\gamedata\Dynamic\Afflictions.dat", Afflictions_table() )
				
				act_index=valint( sync_names_using_default( "start", "", Afflictions_Table() ) )
				act_count=valint( sync_names_using_default( "count", "", Afflictions_Table() ) )
				do while act_index <= act_count
					act_this=sync_names_using_default( "a/" + As_String( act_index ) + "/name", "", Afflictions_Table() )
					act_dist = valint( sync_names_using_default( "a/" + As_String( act_index ) + "/dist", "", Afflictions_Table() ) )
					if ( action_str = act_this ) and ( dis_si > act_dist ) then
						dis_si = dis_si - 1
						central "putaction"
						exit do
					END IF
					act_index += 1
                loop
				
				central_call "crtn" + cleantag( MID(e_stra(Rose_Calc( Tx_si, Ty_si ), 2), 1, 4) )
				
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
