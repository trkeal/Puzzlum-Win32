
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
	
	#ifndef puzzlum_subs_lib
	#inclib "puzzlum-subs"
	#endif

	#include once ".\inc\VGA_Table.bi"

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
	#include once ".\inc\puzzlum-maps.bi"

	'#include once ".\puzzlum-vars.bi"

	declare sub outro()

    declare sub clv_glyph_ini (clv_glyph() as integer)
    declare sub input_text (Index as integer, Src as integer, _
        Row as short, Col as short, W as short, H as short, byref Text_str as string)

    declare SUB suspend (byref start_sf as single, byref delay as short)
    declare SUB graphicput (clv_buffer() as fb.image ptr, Index as integer, _
        byref yy1_si as short, byref xx1_si as short, ss1_str as string, dpath_str as string)
    DECLARE SUB MouseDriver (ax_si as short, bx_si as short, CX_si as short, dx_si as short)
    declare SUB MouseStatus (byref LBi AS short, byref RBi AS short, byref Mouse_X AS short, byref Mouse_Y AS short)
    declare sub progress_put (clv_buffer() as fb.image ptr, Index as integer, Caption as string, _
        byref Cur as integer, Max as integer, _
        X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, _
        Switch as integer, ARGB as uinteger, Increment as integer, Progress as string, _
        byref LastSec as double, DelaySec as double)
    DECLARE SUB cursorput ()
    DECLARE SUB cinput ()
    declare sub cls2
    declare sub file_put_contents(filename as string, dat as string)
    declare function file_get_contents(filename as string) as string
    declare sub pal_load( filepath as string, pal( any ) as uinteger )
    declare sub frame_status(Row as short, Col as short)
    declare sub frame_inventory (Row as short, Col as short)
    declare sub frame_title (Row as short, Col as short)
    declare sub frame_put (clv_buffer() as fb.image ptr, Index as integer, _
        X1 as short, Y1 as short, X2 as short, Y2 as short, C1 as short,C2 as short)
    declare sub clv_buffer_stack (clv_buffer() as fb.image ptr)

	declare sub bootstrap()  
	declare sub ln_roe ()
	declare sub ln_startup ()
    
	declare sub ln_starttitle ()
    declare sub ln_starthelp ()
    declare sub ln_main ()
    
	declare sub ln_command ()
    declare sub ln_command2 ()
    declare sub ln_command3 ()
    declare sub ln_swapdata ()
    
	declare sub ln_attack ()
    declare sub ln_battle ()
    
	declare sub ln_attkbite ()
    declare sub ln_attkpnch ()
    declare sub ln_attkwstf ()
    declare sub ln_attkkick ()
    declare sub ln_attkvnom ()
    declare sub ln_attkdggr ()
    declare sub ln_attkpike ()
    declare sub ln_attkburn ()
    declare sub ln_attkfire ()
    declare sub ln_attkweb ()
    declare sub ln_attktngl ()
    declare sub ln_attklash ()
    
	declare sub ln_attk_table( attk as string = "%%" )
	
	declare sub ln_usecure ()
    declare sub ln_attkslep ()
    declare sub ln_victory ()
    declare sub ln_pillage ()
    declare sub ln_paylevelup ()
    'declare sub ln_reshow1 ()
    'declare sub ln_wwait0 ()
    declare sub ln_merchant ()
    'declare sub ln_wwait1 ()
    declare sub ln_talk0001 ()
    'declare sub ln_reshow3 ()
    'declare sub ln_wwait2 ()
    declare sub ln_abilitygain ()
    declare sub ln_levelup ()
    declare sub ln_gain ()
    declare sub ln_getit ()
    declare sub ln_attackusing ()
    declare sub ln_battleattack ()
    declare sub ln_defeated ()
    declare sub ln_portal ()
    declare sub ln_title (clv_buffer() as fb.image ptr, Index as integer)
    declare sub ln_status ()
    declare sub ln_framstts ()
    declare sub ln_framsttsitms ()
    declare sub ln_stts (clv_buffer() as fb.image ptr, Index as integer, Row as short, Col as short)
    declare sub ln_sttsgpic ()
    declare sub ln_sttsitms ()
    declare sub ln_names ()
    declare sub ln_move ()
    declare sub ln_wingmove ()
    declare sub ln_firemove ()
    declare sub ln_webmove ()
    declare sub ln_castfire ()
    declare sub ln_castdust ()
    declare sub ln_castweb ()
    declare sub ln_castspdr ()
    declare sub ln_castccts ()
    declare sub ln_castdtby ()
    declare sub ln_gone ()
    declare sub ln_delete2 ()
    declare sub ln_autolevelup ()
    declare sub ln_statgain ()
    declare sub ln_statmax ()
    declare sub ln_nextaction ()
    declare sub ln_newaction ()
    declare sub ln_randomaction ()
    declare sub ln_getaction ()
    declare sub ln_putaction ()
    declare sub ln_tempget ()
    declare sub ln_tempput ()
    declare sub ln_inbounds ()
    declare sub ln_haveit ()
    declare sub ln_hasit ()
    declare sub ln_havehadit ()
    declare sub ln_hashadit ()
    declare sub ln_havegotit ()
    declare sub ln_hasgotit ()
    declare sub ln_winexp ()
    declare sub ln_windggr ()
    declare sub ln_winpike ()
    declare sub ln_wingrpl ()
    declare sub ln_winseed ()
    declare sub ln_winkey1 ()
    declare sub ln_winkey2 ()
    declare sub ln_winit ()
    declare sub ln_am ()
    declare sub ln_are ()
    declare sub ln_here ()
    declare sub ln_there ()
    declare sub ln_blankcheck ()
    declare sub ln_okbutton ()
    declare sub ln_wwait ()
    declare sub ln_buttonwait ()
    declare sub ln_commandwait ()
    declare sub ln_frameput ()
    declare sub ln_avgframe ()
    declare sub ln_screenset ()
    declare sub ln_findcrsr ()
    declare sub ln_showtext (clv_buffer() as fb.image ptr, Index as integer)
    declare sub ln_prflblnk ()
    declare sub ln_prflset ()
    declare sub ln_prflmake ()
    
	declare sub ln_actncure ()
    declare sub ln_actnbite ()
    declare sub ln_actnpnch ()
    declare sub ln_actnkick ()
    declare sub ln_actndggr ()
    declare sub ln_actnpike ()
    declare sub ln_actnvnom ()
    declare sub ln_actnfire ()
    declare sub ln_actndust ()
    declare sub ln_actnweb ()
    declare sub ln_actnspdr ()
    declare sub ln_actnccts ()
    declare sub ln_actndtby ()
    declare sub ln_actnmove ()
    declare sub ln_actnwing ()
    declare sub ln_actnwstf ()
    declare sub ln_actnkey1 ()
    declare sub ln_actnkey2 ()
    declare sub ln_actnispt ()

    declare sub ln_actnfiremove ()
    declare sub ln_actndustmove ()
    declare sub ln_actnwebmove ()

    declare sub ln_actngrpl ()
    declare sub ln_actnrapl ()
    
	declare sub ln_crtnimp ()
    declare sub ln_crtnfire ()
    declare sub ln_crtndust ()
    declare sub ln_crtnshkt ()
    declare sub ln_crtnemgd ()
    declare sub ln_crtnspdr ()
    declare sub ln_crtnweb ()
    declare sub ln_crtndtby ()
    declare sub ln_crtngrml ()
    declare sub ln_crtnpndx ()
    declare sub ln_crtnccts ()
    declare sub ln_crtnbldr ()

	declare sub Map_Save ( Save_Table( any ) as names_type)

	declare sub Map_Load ( Save_Table( any ) as names_type )
    
	declare sub savegame_save( filename as string = "" )
	
	declare sub savegame_load( filename as string = "" )
	
declare function Compare_Key( KeyPress as string = "", Comparison as string = "", Input_Table( any ) as names_type ) as integer

declare function Rose_Calc( Tx_si as integer = 0, Ty_si as integer = 0 ) as integer

declare function Rose_Direct( byref X as integer = 0, byref Y as integer = 0, Card as integer = 0, Range as integer = 0 ) as integer
	
declare function wait_key() as string

declare sub central_call overload( target as string = "" )

declare sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer)

declare sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer, Row as short, Col as short)

declare sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer, Caption as string, _
        byref Cur as integer, Max as integer, _
        X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, _
        Switch as integer, ARGB as uinteger, Increment as integer, Progress as string, _
        byref LastSec as double, DelaySec as double)

declare sub central overload ( target as string = "", clv_buffer() as fb.image ptr)

declare sub central overload ( target as string = "", Row as short, Col as short)

declare sub central overload ( target as string = "", clv_buffer() as fb.image ptr, Index as integer, X1 as short, Y1 as short, X2 as short, Y2 as short, C1 as short,C2 as short)

declare sub central overload ( target as string = "", clv_glyph() as integer)

declare sub central overload ( target as string = "", Index as integer, Src as integer, Row as short, Col as short, W as short, H as short, byref Text_str as string)

declare sub central overload ( target as string = "", db_names() as names_type)

declare sub central overload ( target as string = "", attk as string = "%%" )

declare sub load_bundle()

declare sub load_levels()

declare sub load_rose()

declare sub report_caption( caption as string = "%%" )

declare function vga_test_1() as fb.image ptr

declare sub vga_test_2()

declare sub font_loader()

declare sub splash()

declare sub central_loader( target as string = "" )

declare sub loader()

declare sub load_display()

declare sub load_art()

declare sub load_data()

declare sub load_input()

declare sub stretch( src as fb.image ptr, dest as fb.image ptr )
declare sub repeat( src as fb.image ptr, dest as fb.image ptr )

declare sub text_out( subject as string = "" )

declare function make_keys() as string

declare function cleantag( tag as string = "____" ) as string

declare sub battle()
