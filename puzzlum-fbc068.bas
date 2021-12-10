'"Puzzlum : Realm of Existence"
'Build: puzzlum-fbc068.200908170813

'Puzzlum is Copyright (C) 1989-2021 Timothy Robert Keal alias jargon
'Puzzlum is released by Timothy Robert Keal under the Lesser Gnu Public License "2.2" (Attribution, Education / Charity)
'http://puzzlum.net/
'mailto:trkeal@gmail.com

'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#include once ".\inc\const.bi"
#include once ".\inc\names.bi"

#include once "fbgfx.bi"
#include once ".\inc\fbpng.bi"
#include once ".\inc\png_image.bi"
'#include once ".\inc\KealDemux.bi" '[!!]'junk
#include once ".\inc\names.bi"
'#include once ".\inc\Timothy.bi" '[!!]'junk
#include once ".\inc\clv002.bi"
'#include once ".\inc\Names.bi"

	redim shared as names_type DB_Names(any), DB_Input( any ), DB_Map( any ), DB_Queue( any ), Names_Buffer( any ), Data_Table( any ), Queue_Table( any ), map_buffer( any )
    
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
    declare sub pal_load(filepath as string, pal() as uinteger)
    declare sub frame_status(Row as short, Col as short)
    declare sub frame_inventory (Row as short, Col as short)
    declare sub frame_title (Row as short, Col as short)
    declare sub frame_put (clv_buffer() as fb.image ptr, Index as integer, _
        X1 as short, Y1 as short, X2 as short, Y2 as short, C1 as short,C2 as short)
    declare sub clv_buffer_stack (clv_buffer() as fb.image ptr)

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
    
	declare sub savegame_save( filename as string = "", map_buffer( any ) as names_type )
	declare sub savegame_load( filename as string = "", map_buffer( any ) as names_type )

    COMMON SHARED as short win_si
    COMMON SHARED as string mappath_str, map_str, lvuppath_str, lvup_str
    COMMON SHARED as string thispath_str, fontpath_str, logopath_str, spritepath_str, palpath_str, helppath_str, helpfilename_str
    
    dim shared as double progress_delay=0.2
    
    DIM SHARED as string e_stra(256 * 256, 8) 'grid identity_str
    DIM SHARED as double G_dfa(256 * 256, 16) 'grid statistics
    DIM SHARED as short d_sia(4, 2) 'direction (n,e,s,w)
    DIM SHARED as short t_sia(64 * 64 + 8) 'clv_text image
    DIM SHARED as short l_sia(64) 'level up
    DIM SHARED as short win_sia(-win_si TO 2 * win_si)
    redim shared as fb.image ptr fontsheets(&H00 to &HFF)
    dim shared as uinteger pal(&H00 to &HFF)
    dim shared as fb.image ptr pages(0 to 15,0 to 1)
    
    dim shared as fb.image ptr gtmp, gtmpt
    DIM SHARED as string mouse_str
    dim shared as short ex_si, dy_si, mdx_si, mdy_si
    dim shared as single textdelay_sf
    dim shared as short textcolor_si
    dim shared as string c_str, clast_str, texts_str, temp1_str, temp2_str, rr_str
    dim shared as short I_si
    dim shared as string a_str, H_str
    dim shared as short ttt_si 
    dim shared as short MS_si
    dim shared as short t_si
    dim shared as string ctrl_str
    dim shared as short Ty_si, DD_si, Tx_si, AA_si
    dim shared as string R_str, bg_str, fg_str, rg_str
    dim shared as string rbg_str, rfg_str
    dim shared as single rid_sf
    dim shared as string prflidty_str, prflactn_str, prflactnct_str, prflgpic_str, prflcmnd_str, prflgpicactn_str
    dim shared as single prflidty_sf, prflhp_sf, prflstr_sf, prfless_sf
    dim shared as single prflspd_sf, prflarmr_sf, prflexp_sf, prflvalu_sf, prflpirc_sf, prflchck_sf
    dim shared as single prfllv_sf, prflhpmax_sf, prflstrmax_sf, prflessmax_sf
    dim shared as single prflessspd_sf, prflevad_sf, prflblnk_sf
    dim shared as string mapname_str
    dim shared as single rr_sf
    dim shared as short colr_si
    dim shared as string text_str
    dim shared as short a_si, d_si, dis_si
    dim shared as short statx_si, viewx_si, framec1_si, framec2_si
    dim shared as single framex1_sf, framex2_sf, framey1_sf, framey2_sf
    dim shared as short titled_si
    dim shared as string am_str
    dim shared as short am, xm_si, ym_si
    dim shared as short Mouse_Width, Mouse_Height, Screen_Width, Screen_Height, Display_Width, Display_Height
    dim shared as short Ax, Bx, Cx, Dx
    dim shared as short XXmouse_si, YYmouse_si, Lb_si, Rb_si, XMouse_si, Ymouse_si
    dim shared as short jsx_si, jsy_si, jsa_si, jsb_si
    dim shared as short llb_si, rrb_si, l1b_si, r1b_si
    dim shared as string action_str, AA_str
    dim shared as single st_sf
    dim shared as short tempx_si, tempy_si
    dim shared as short struse, essuse, evadeattack, attackblocked, attackdamage
    dim shared as string attackpic_str, attackname_str
    dim shared as short temptx_si, tempty_si, tempdis_si, slepadd_si
    dim shared as short lvgain_si, valugain_si, expgain_si, strgain_si, essgain_si
    dim shared as short menuitem_si, menuselect_si
    dim shared as string menu_str, haveit_str
    dim shared as short menusize_si, inmenu_si, menucost_si
    dim shared as string menuitem_str, menuselect_str
    dim shared as string hashadit_str
    dim shared as string getit_str
    dim shared as short am_si, are_si
    dim shared as string are_str
    dim shared as short dx1_si, dy1_si, dx2_si, dy2_si
    dim shared as short ttx, tty
    dim shared as single tt_sf, tempx_sf, tempy_sf
    dim shared as short tempd_si
    dim shared as string there_str
    dim shared as short there_si
    dim shared as short move_si
    dim shared as string tempaction_str
    dim shared as short inbounds_si
    dim shared as short haveit_si
    dim shared as string t_str, tt_str
    dim shared as string havegotit_str
    dim shared as short getit_si
    dim shared as string winit_str
    dim shared as string hasit_str
    dim shared as short hasit_si
    dim shared as short here_si
    dim shared as string blankcheck_str
    dim shared as short blankcheck_si
    dim shared as short crsrx_si, crsry_si
    dim shared as string attackthem_str
    dim shared as string havehadit_str
    dim shared as short struse_si, essse_si, strdamage_si
    dim shared as short r1_si, r2_si, r3_si, r4_si, r5_si
    dim shared as integer exitcommand3, exitcommand2, exitcommand, restart_roe
    dim shared as single tempx1_sf, tempy1_sf, tempx2_sf, tempy2_sf
    dim shared as short t_sf, R_si, tt_si
    dim shared as string here_str, hasgotit_str

    dim shared as integer clv_buffer_portal=2, clv_buffer_status=3, clv_buffer_playbyplay=4
    dim shared as integer clv_buffer_expshop=5, clv_buffer_merchant=6, clv_buffer_menu=7
    dim shared as integer clv_buffer_title=8, clv_buffer_help=9, clv_buffer_cursor=10
    dim shared as integer clv_buffer_splash=11, clv_buffer_bar=12, clv_buffer_progress=13
    
    clv_buffer_focus=clv_buffer_visible

    'dir axis info '[!] um? proper documentation, please.
    DATA  1, 1
    DATA  1, 4
    DATA  1, 8
    DATA  1,12
    DATA  1,16

ln_roe
end

sub ln_roe ()
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

    thispath_str = ".\"
    fontpath_str = "fonts\"
    logopath_str = "logos\"
    spritepath_str = "sprites\"
    palpath_str = "pal\"
    mappath_str = "maps\"
    'future71path_str = "future71\"
    'netplaypath_str = "netplay\"
    'netoutfile_str = "netplayo.bin"
    'netoutmode_li = 67
    helppath_str="help\"
    helpfilename_str = "roe4help.hlp"
    map_str = "demo.vds"
    lvuppath_str = "lvup\"
    lvup_str = "roe_lvup.dat"
    	
	wipe_table( DB_Input() )
    
    load_names_from_file ( ".\dict\input.txt", DB_Queue() )
	
	'Timothy_memory_queue_load queue(), ".\dict\input.txt", 'Timothy_Write, Timothy_Write
    'Timothy_memory_queue_exec DB_Input(),queue(),Timothy_Write
    'DB_Load_Text DB_Input(), ".\dict\input.txt"
    
    pal_load thispath_str + palpath_str + "QBPALVGA.DAT", pal()
    
    clv_glyph_ini clv_glyph()
    
    clv_glyph_ini clv_glyph()
    clv_font_load clv_font(), clv_font_default, clv_font_flag_load, ".\fonts\mishap22.font.png"
    clv_font_load clv_font(), 1, clv_font_flag_load, ".\fonts\roe00.font.png"

    clv_buffer_ini clv_buffer(), Screen_Width, Screen_Height
    clv_buffer_cls clv_buffer(), clv_buffer_splash

    gtmp=png_load(thispath_str + logopath_str + "roe.splash.png")
    gtmpt=imagecreate(gtmp->width,gtmp->height)
    'line gtmpt,(0,0)-(gtmpt->width-1,gtmpt->height-1),rgb(0,0,0),bf
    clv_draw_image clv_buffer(),clv_buffer_splash,0, 100 - 24, gtmp, gtmpt
    png_destroy gtmp
    imagedestroy gtmpt
    
    clv_buffer_cls clv_buffer(), clv_buffer_bar
    
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_bar, clv_glyph(), (1-1) shl 3, (25-1) shl 3, "[F1 Save|F2 Load|F3 Shop]"
    
    do
        restart_roe=0
        clv_buffer_focus=clv_buffer_splash
        while len(inkey)>0
            clv_buffer_stack clv_buffer()
        wend

       ln_startup
                
        while len(inkey)=0
            clv_buffer_stack clv_buffer()
        wend

        c_str=lcase("t")

        do
            if restart_roe then exit do
            if (lcase(c_str)="t") OR (ym_si = 3 AND xm_si = statx_si + 5 AND Lb_si = -1) then
                clv_buffer_focus=clv_buffer_title
                ln_starttitle
            end if
            exitcommand=0
            do
                ln_command
                exitcommand3=0
                do
                    ln_command3
                    if (lcase(c_str) = "t") OR (ym_si = 3 AND xm_si = statx_si + 5 AND Lb_si = -1) then
                    exitcommand3=NOT(0)
                        exitcommand=not(0)
                    end if
                    if restart_roe then exit do
                loop while (INSTR(1, "L ||", RIGHT(" " + c_str, 1)) = 0) and not exitcommand3
                if restart_roe then exit do
            loop while INSTR(1, "L||", RIGHT(" " + c_str, 1)) > 0
            if restart_roe then exit do
            ln_main
            if restart_roe then exit do
        loop
    loop
end sub

sub ln_startup ()

	wipe_table( DB_Names() )
	wipe_table( Names_Buffer() )

	load_names_from_file( ".\dict\names.txt" , Names_Buffer() )
  
    OPEN thispath_str + mappath_str + map_str FOR INPUT AS 1
    INPUT #1, mapname_str
    INPUT #1, AA_si
    INPUT #1, DD_si

    'directional axis matrix
    d_sia(0, 1) = 0: d_sia(0, 2) = 0 'self
    d_sia(1, 1) = 0: d_sia(1, 2) = -1 'north
    d_sia(2, 1) = 1: d_sia(2, 2) = 0 'east
    d_sia(3, 1) = 0: d_sia(3, 2) = 1 'south
    d_sia(4, 1) = -1: d_sia(4, 2) = 0 'west
    
    ex_si = fix(AA_si / 2) 'map pointer x
    dy_si = fix(DD_si / 2) 'map pointer y
    mdx_si = fix(40 / 2) 'screen cursor x
    mdy_si = fix(30 / 2) 'screen cursor y
    
    textcolor_si = .01
    textdelay_sf = 2.5: '.8 '.55
    win_si = 4

 
    RANDOMIZE TIMER
    RESTORE
  
    'mouse_str = SPACE(57)
    'FOR I_si = 1 TO 57
    '    READ a_str
    '    H_str = CHR(VAL("&H" + a_str))
    '    MID(mouse_str, I_si, 1) = H_str
    'NEXT I_si
  
    'DATA 55,89,E5,8B,5E,0C,8B,07,50,8B,5E,0A,8B,07,50,8B
    'DATA 5E,08,8B,0F,8B,5E,06,8B,17,5B,58,1E,07,CD,33,53
    'DATA 8B,5E,0C,89,07,58,8B,5E,0A,89,07,8B,5E,08,89,0F
    'DATA 8B,5E,06,89,17,5D,CA,08,00
  
    FOR ttt_si = 0 TO win_si
        READ win_sia(1 + (ttt_si - 1) * 2)
        READ win_sia(2 + (ttt_si - 1) * 2)
    NEXT ttt_si
     
    'MS_si = MouseInit
    'IF NOT MS_si THEN
    '    'PRINT "Mouse not found"
    '    AMOUSE_str = "NO"
    'END IF
    'IF MS_si THEN
    '    'PRINT "Mouse found and initialized"
    '    AMOUSE_str = "YES"
    '    'mouseshow
    'END IF
    
    'level up data
    OPEN thispath_str + lvuppath_str + lvup_str FOR INPUT AS 2
    FOR t_si = 0 TO 64
        INPUT #2, l_sia(t_si)
    NEXT t_si
    CLOSE 2
    
    ctrl_str = "pndximp_"
    IF INT(RND(1) * 2) + 1 = 2 THEN ctrl_str = ctrl_str + "dust"
    FOR Ty_si = 1 TO DD_si
        INPUT #1, R_str
        LINE INPUT #1, bg_str
        LINE INPUT #1, fg_str
        LINE INPUT #1, rg_str
        FOR Tx_si = 1 TO AA_si
            rbg_str = MID(bg_str, (Tx_si - 1) * 5 + 1, 4)
            rfg_str = MID(fg_str, (Tx_si - 1) * 5 + 1, 4)
            rid_sf = VAL(MID(rg_str, (Tx_si - 1) * 5 + 1, 4))
            e_stra(Tx_si + (Ty_si - 1) * AA_si, 2) = "____" + rbg_str
            e_stra(Tx_si + (Ty_si - 1) * AA_si, 3) = MKL(0) + "____" + MKL(0) 'command_str
            e_stra(Tx_si + (Ty_si - 1) * AA_si, 4) = "________" 'graphicsaction_str
            select case rfg_str
            case "____"
                ln_prflblnk
                prflidty_sf = rid_sf
                ln_prflset
            case "spdr"
                ln_prflblnk
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
                ln_prflset
            case "wall"
                ln_prflblnk
                prflidty_str = "wall"
                prflgpic_str = "wall"
                prflidty_sf = 2
                ln_prflset
            case "web_"
                ln_prflblnk
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
                ln_prflset
            case "grml"
                ln_prflblnk
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
                ln_prflset
            case "pndx"
                ln_prflblnk
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
                ln_prflset
            case "dtby"
                ln_prflblnk
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
                ln_prflset
            case "shkt"
                ln_prflblnk
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
                ln_prflset
            case "emgd"
                ln_prflblnk
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
                ln_prflset
            case "door"
                ln_prflblnk
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
                ln_prflset
            case "imp_"
                ln_prflblnk
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
                ln_prflset
            case "chst"
                ln_prflblnk
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
                ln_prflset
            case "bldr"
                ln_prflblnk
                prflidty_str = "Big boulder"
                prflactn_str = ""
                prflgpic_str = "bldr"
                prflidty_sf = rid_sf
                prflhp_sf = 1000
                prflarmr_sf = 10
                prfllv_sf = 1
                prflhpmax_sf = 1000
                ln_prflset
            end select
        NEXT Tx_si
    NEXT Ty_si
    CLOSE 1
end sub

sub ln_starttitle ()
    do
        clv_buffer_focus=clv_buffer_title
        'SCREEN 14, 32, 16
        'screenset 1,0
        'WIDTH 40, 30
        'COLOR rgb(255,255,255),rgb(0,0,131)'pal(15), pal(1)
        clv_buffer_cls clv_buffer(), clv_buffer_title
        colr_si = 15
        ln_title clv_buffer(), clv_buffer_title
        colr_si = 11

        texts_str=space(1)+"Puzzlum : Realm of Existence"
        ln_showtext clv_buffer(), clv_buffer_title
        texts_Str=space(1)+"Build: puzzlum-fbc068.200908170813"
        ln_showtext clv_buffer(), clv_buffer_title
        print
        texts_str=space(1)+"Created 1989-2009 Timothy Robert Keal"
        ln_showtext clv_buffer(), clv_buffer_title
        texts_str=space(1)+"Released under Gnu Public License 2.0"
        ln_showtext clv_buffer(), clv_buffer_title
        texts_str=space(1)+"http://www.gnu.org/copyleft/gpl.html"
        print
        ln_showtext clv_buffer(), clv_buffer_title
        texts_str=space(1)+"http://puzzlum.retromachineshop.com/"
        ln_showtext clv_buffer(), clv_buffer_title
        texts_str=space(1)+"irc://chat.freenode.net/puzzlum"
        ln_showtext clv_buffer(), clv_buffer_title
        texts_str=space(1)+"mailto:jargon@juno.com"
        ln_showtext clv_buffer(), clv_buffer_title
        
        locate 17,1
        colr_si = 9
        texts_str = " (H)elp"
        ln_showtext clv_buffer(), clv_buffer_title
        PRINT
        texts_str = " (C)ontinue"
        ln_showtext clv_buffer(), clv_buffer_title
        PRINT
        texts_str = " (R)estart"
        ln_showtext clv_buffer(), clv_buffer_title
        PRINT
        texts_str = " (Q)uit"
        ln_showtext clv_buffer(), clv_buffer_title
        clv_buffer_stack clv_buffer()
        ln_commandwait
        IF c_str = "r" OR c_str = "R" OR (ym_si = 21 AND xm_si = 3 AND Lb_si = -1) THEN
            ln_screenset
            restart_roe=1 'RUN
            exit do
        END IF
        IF c_str = "q" OR c_str = "Q" OR (ym_si = 23 AND xm_si = 3 AND Lb_si = -1) THEN
            ln_screenset
            END
        END IF
        IF c_str = "h" OR c_str = "H" OR (ym_si = 17 AND xm_si = 3 AND Lb_si = -1) THEN
            ln_starthelp
        END IF
    loop while c_str <> "c" AND c_str <> "C" AND NOT (ym_si = 19 AND xm_si = 3 AND Lb_si = -1)
end sub

sub ln_starthelp ()
    clv_buffer_focus=clv_buffer_help
    OPEN thispath_str + helppath_str + helpfilename_str FOR INPUT AS 63
    do while not eof(63)
        LINE INPUT #63, R_str
        IF R_str = "þ page start" THEN
            clv_buffer_cls clv_buffer(), clv_buffer_help
            ln_title clv_buffer(), clv_buffer_help
            R_Str=chr(0)
        END IF
        IF R_str = "þ page end" THEN
            LOCATE 22, 1
            colr_si = 9
            texts_str = " (C)ontinue"
            ln_showtext clv_buffer(), clv_buffer_help
            PRINT
            texts_str = " (T)itle"
            ln_showtext clv_buffer(), clv_buffer_help
            do
                clv_buffer_stack clv_buffer()
                ln_commandwait
                IF c_str = "t" OR c_str = "T" OR (ym_si = 24 AND xm_si = 3 AND Lb_si = -1) THEN
                    CLOSE 63
                    return
                END IF
            loop while NOT (c_str = "c" OR c_str = "C" OR (ym_si = 22 AND xm_si = 3 AND Lb_si = -1))
            R_Str=chr(0)
        end if
        IF R_str = "þ end" THEN
            CLOSE 63            
            R_Str=chr(0)
            RETURN
        END IF
        IF LEFT(R_str, 7) = "þ COLOR" THEN
            colr_si = VAL(RIGHT(R_str, LEN(R_str) - 7))
            R_str=chr(0)
        END IF
        texts_str = R_str
        if R_Str <> chr(0) then
            IF R_str <> space(0) THEN
                ln_showtext clv_buffer(), clv_buffer_help
            else
                PRINT
            END IF
        end if
        'clv_buffer_stack clv_buffer()
    loop
    close 63    
    'netscreenout
    clv_buffer_stack clv_buffer()
    'COLOR rgb(255,255,255),rgb(0,0,0)'pal(15), pal(0)
    cinput
end sub

sub ln_main ()
    FOR Tx_si = 1 TO AA_si
        FOR Ty_si = 1 TO DD_si
            a_si = 0
            d_si = 0
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 9) = 0 THEN
                G_dfa(Tx_si + (Ty_si - 1) * AA_si, 9) = 1
                MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "____"
                ln_getaction
                IF action_str = "zzzz" AND dis_si > 0 THEN
                    dis_si = dis_si - 1
                    ln_putaction
                END IF
                SELECT CASE CVL(MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4))
                CASE CVL("wall")
                CASE CVL("spdr")
                    ln_crtnspdr
                CASE CVL("web_")
                    ln_crtnweb
                CASE CVL("dtby")
                    ln_crtndtby
                CASE CVL("grml")
                    ln_crtngrml
                CASE CVL("shkt")
                    ln_crtnshkt
                CASE CVL("emgd")
                    ln_crtnemgd
                CASE CVL("imp_")
                    ln_crtnimp
                CASE CVL("fire")
                    ln_crtnfire
                CASE CVL("pndx")
                    ln_crtnpndx
                CASE CVL("ccts")
                    ln_crtnccts
                CASE CVL("bldr")
                    ln_crtnbldr
                CASE CVL("dust")
                    ln_crtndust
                END SELECT
            END IF
        NEXT Ty_si
    NEXT Tx_si
    FOR Tx_si = 1 TO AA_si
        FOR Ty_si = 1 TO DD_si
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 9) = 0
        NEXT Ty_si
    NEXT Tx_si
    RETURN
end sub

sub ln_command ()
    clv_buffer_focus=clv_buffer_portal
    Tx_si = ex_si
    Ty_si = dy_si
    clv_buffer_cls clv_buffer(), clv_buffer_draw
    ln_portal
    clv_buffer_stack clv_buffer()
    ln_command2
    RETURN
end sub

sub ln_command2 ()
    clv_buffer_cls clv_buffer(), clv_buffer_menu

    frame_title 2, 24
    
    am_str = ctrl_str
    ln_am
    IF am_si > 0 THEN
        clv_buffer_focus=clv_buffer_status
        statx_si = 24
        ln_status
    END IF
    RETURN
end sub

sub ln_command3 ()
    dim as string filename = string$( 0, 0 )
	filename = "0002"
	redim Names_Buffer(0 to 0):Names_Buffer(0).label = "":Names_Buffer(0).value = ""
    redim as string dump(0,0)
    dim as short X, Y, Z
    dim as string ActnNav(0 to 4)
    cinput
    IF ym_si = 2 AND xm_si >= 24 AND xm_si <= 24+7-1 THEN
        titled_si = 1
        ln_command2
    else
        titled_si = 0
        ln_command2
    END IF
    cursorput
    'netscreenout
    clv_buffer_stack clv_buffer()
    select case c_str
    case "&HFF3B" 'F1 (save savegame)
		savegame_save( filename, map_buffer() )

        c_str="t"
        ln_starttitle
        exitcommand3=not(0)
        return
    case "&HFF3C" 'F2 (load savegame)
		savegame_load( filename, map_buffer() )
        c_str="t"
        ln_starttitle
        exitcommand3=not(0)
        return
    end select
    IF am_si > 0 THEN
        statx_si = 24
        ln_getaction
        IF (c_str="&HFF3D") OR (((ym_si = 5) AND (xm_si=26) AND (Lb_si=-1))) THEN 'F3
            c_str = "L"
            ln_paylevelup
            exitcommand3=not(0)
            return
        END IF
        select case c_str
        case "&H20" 'Space
            d_si = 0
            dis_si = 0
            ln_putaction
            exitcommand3=not(0)
            return
        case "&HFF48" 'Up
            d_si = 1
            dis_si = 0
            ln_putaction
            exitcommand3=not(0)
            return
        case "&HFF4D" 'Right
            d_si = 2
            dis_si = 0
            ln_putaction
            exitcommand3=not(0)
            return
        case "&HFF50" 'Down
            d_si = 3
            dis_si = 0
            ln_putaction
            exitcommand3=not(0)
            return
        case "&HFF4B" 'Left
            d_si = 4
            dis_si = 0
            ln_putaction
            exitcommand3=not(0)
            return
        end select
        IF ((ym_si=10) AND (xm_si=statx_si+1) AND (Lb_si=-1)) AND not(d_si=0) THEN
            d_si = 0
            dis_si = 0
            ln_putaction
            ln_command2
        END IF
        IF ((ym_si=9) AND (xm_si=statx_si+1) AND (Lb_si=-1)) AND not(d_si=1) THEN
            d_si = 1
            dis_si = 0
            ln_putaction
            ln_command2
        END IF
        IF ((ym_si=10) AND (xm_si=statx_si+2) AND (Lb_si=-1)) AND not(d_si=2) THEN
            d_si = 2
            dis_si = 0
            ln_putaction
            ln_command2
        END IF
        IF ((ym_si=11) AND (xm_si=statx_si+1) AND (Lb_si=-1)) AND not(d_si=3) THEN
            d_si = 3
            dis_si = 0
            ln_putaction
            ln_command2
        END IF
        IF ((ym_si = 10) AND (xm_si=statx_si) AND (Lb_si=-1)) AND not(d_si=4) THEN
            d_si = 4
            dis_si = 0
            ln_putaction
            ln_command2
        END IF
        if not ((action_str="zzzz") AND (dis_si>0)) then
            if (Lb_si=-1) then
                IF (xm_si>=statx_si) and (xm_si<=statx_si+5*3-1) and (ym_si>=14) and (ym_si<=23) THEN
                    X=fix((xm_si-statx_si)/3)
                    Y=fix((ym_si-14)/3)
                    Z=1+X+Y*5
                    if (Z>=1) and (Z<=LEN(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1))/4) then
                        AA_str = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1), (Z*4)-3, 4)
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
                ActnNav(2)=e_stra(Tx_si + (Ty_si - 1) * AA_si, 1)
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
        ln_putaction
        st_sf = TIMER
    END IF
    statx_si = 24
    IF (lcase(c_str)="t") OR ((ym_si = 2) AND (xm_si>=statx_si) AND (xm_si<=statx_si+7-1) AND Lb_si = -1) THEN
        ln_starttitle
        return
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

sub ln_names() ''[!!!]''
    ''dim as uinteger fail,index,octet,biet
    ''rr_str=Timothy_memory(DB_Names(),R_str,R_str,Timothy_Read,Timothy_Read,fail,index,octet,biet)
    '''DB_Dict_Get DB_Names(), R_str, rr_str, R_str
end sub

sub ln_swapdata ()
    FOR t_si = 0 TO 1
        SWAP e_stra(Tx_si + (Ty_si - 1) * AA_si, t_si), e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, t_si)
    NEXT t_si
    temp1_str = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4)
    temp2_str = MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4)
    SWAP temp1_str, temp2_str
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4) = temp1_str
    MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) = temp2_str
    FOR t_si = 3 TO 4
        SWAP e_stra(Tx_si + (Ty_si - 1) * AA_si, t_si), e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, t_si)
    NEXT t_si
    FOR t_si = 0 TO 16
        SWAP G_dfa(Tx_si + (Ty_si - 1) * AA_si, t_si), G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, t_si)
    NEXT t_si
    RETURN
end sub

sub ln_attack ()
    SELECT CASE CVL(MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 5, 4))
    CASE CVL("bite")
        ln_attkbite
    CASE CVL("pnch")
        ln_attkpnch
    CASE CVL("kick")
        ln_attkkick
    CASE CVL("vnom")
        ln_attkvnom
    CASE CVL("dggr")
        ln_attkdggr
    CASE CVL("pike")
        ln_attkpike
    CASE CVL("cure")
        ln_usecure
    CASE CVL("fire")
        ln_attkfire
    CASE ELSE
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "____"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "____"
    END SELECT
    RETURN
end sub

sub ln_battle ()
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) >= struse_si AND G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) >= essse_si THEN
        IF 1 = 1 THEN
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = attackpic_str
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = attackname_str
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) - struse_si
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) - essse_si
            evadeattack = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 15)
            evadeattack = evadeattack + RND(1) * (1 - evadeattack)
            attackblocked = attackdamage * (evadeattack) - G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 5)
            IF attackblocked < 0 THEN attackblocked = 0
            attackdamage = attackdamage * (1 - evadeattack) + attackblocked
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) - attackdamage
            ln_battleattack
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) <= 0 THEN
                ln_victory
            END IF
        END IF
    ELSE
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "____"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "____"
    END IF
    RETURN
end sub

sub ln_attkbite ()
    attackpic_str = "bite"
    attackname_str = "bite"
    struse_si = 10
    essse_si = 0
    attackdamage = 5 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 4)
    strdamage_si = 2
    ln_battle
    RETURN
end sub

sub ln_attkpnch ()
    attackpic_str = "pnch"
    attackname_str = "pnch"
    struse_si = 12
    essse_si = 0
    attackdamage = 3 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 6)
    strdamage_si = 2 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 8)
    ln_battle
    RETURN
end sub

sub ln_attkwstf ()
    attackpic_str = "wstf"
    attackname_str = "wstf"
    struse_si = 20
    essse_si = 0
    attackdamage = 5 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 4)
    strdamage_si = 4 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 6)
    ln_battle
    RETURN
end sub

sub ln_attkkick ()
    attackpic_str = "kick"
    attackname_str = "kick"
    struse_si = 14
    essse_si = 0
    attackdamage = 4 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 5)
    strdamage_si = 3 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 7)
    ln_battle
    RETURN
end sub

sub ln_attkvnom ()
    attackpic_str = "vnom"
    attackname_str = "vnom"
    struse_si = 0
    essse_si = 15
    attackdamage = 7 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 4)
    strdamage_si = 10 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 4)
    ln_battle
    RETURN
end sub

sub ln_attkdggr ()
    attackpic_str = "dggr"
    attackname_str = "dggr"
    struse_si = 18
    essse_si = 0
    attackdamage = 8 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 4)
    strdamage_si = 1 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 10)
    ln_battle
    RETURN
end sub

sub ln_attkpike ()
    attackpic_str = "pike"
    attackname_str = "pike"
    struse_si = 24
    essse_si = 0
    attackdamage = 12 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 3)
    strdamage_si = 8 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 5)
    ln_battle
    RETURN
end sub

sub ln_attkburn ()
    attackpic_str = "____"
    attackname_str = "burn"
    struse_si = 5
    essse_si = 5
    attackdamage = 12 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 2)
    strdamage_si = 15 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 4)
    ln_battle
    IF MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4) = "fire" THEN
        ln_gone
    END IF
    RETURN
end sub

sub ln_attkfire ()
    attackpic_str = "____"
    attackname_str = "fire"
    struse_si = 5
    essse_si = 20
    attackdamage = 15 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 2)
    strdamage_si = 20 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 4)
    ln_battle
    RETURN
end sub

sub ln_attkweb ()
    attackpic_str = "____"
    attackname_str = "web_"
    struse_si = 22
    essse_si = 0
    attackdamage = 0
    strdamage_si = 15 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 5)
    ln_battle
    RETURN
end sub

sub ln_attktngl ()
    attackpic_str = "____"
    attackname_str = "tngl"
    struse_si = 0
    essse_si = 0
    attackdamage = 0
    strdamage_si = 10 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 6)
    ln_battle
    RETURN
end sub

sub ln_attklash ()
    attackpic_str = "____"
    attackname_str = "lash"
    struse_si = 0
    essse_si = 0
    attackdamage = 5 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 5)
    strdamage_si = 8 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 7)
    ln_battle
    RETURN
end sub

sub ln_usecure ()
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) >= 8 THEN
        IF 1 = 1 THEN
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "cure"
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "cure"
            AA_str = "cure"
            ln_attackusing
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) - 8
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) + 12 + G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) + 15 + G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) <= 0 THEN
                G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = 0
            END IF
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) <= 0 THEN
                ln_victory
            END IF
        END IF
    ELSE
        IF 1 = 1 THEN
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "____"
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "____"
        END IF
    END IF
    RETURN
end sub

sub ln_useslep ()
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) >= 8 THEN
        IF 1 = 1 THEN
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "____"
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "slep"
            AA_str = "slep"
            ln_attackusing
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) - 8
            MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 4), 1, 4) = "____"
            MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 4), 5, 4) = "zzzz"
            slepadd_si = INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) / 10)
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = Tx_si + d_sia(d_si, 1) * dis_si
            Ty_si = Ty_si + d_sia(d_si, 2) * dis_si
            ln_tempget
            IF tempaction_str <> "zzzz" THEN
                tempaction_str = "zzzz"
                tempdis_si = 5 + INT(RND(1) * 6) + slepadd_si
                ln_tempput
            END IF
            Tx_si = temptx_si
            Ty_si = tempty_si
            G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) - 15
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) <= 0 THEN
                G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = 0
            END IF
            IF G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) <= 0 THEN
                ln_victory
            END IF
        END IF
    ELSE
        IF 1 = 1 THEN
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "____"
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "____"
        END IF
    END IF
    RETURN
end sub

sub ln_victory ()
    ln_prflblnk
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
    ln_prflmake
    RETURN
end sub

sub ln_pillage ()
    expgain_si = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6)
    expgain_si = expgain_si + G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 7)
    G_dfa(Tx_si + (Ty_si + -1) * AA_si, 6) = G_dfa(Tx_si + (Ty_si + -1) * AA_si, 6) + expgain_si
    strgain_si = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2)
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) + strgain_si
    ln_defeated
    ln_windggr
    ln_winpike
    ln_wingrpl
    ln_winseed
    ln_winkey1
    ln_winkey2
    RETURN
end sub

sub ln_paylevelup ()
    dim as short X1, Y1, X2, Y2, C1, C2
    dim as short Row, Col
    
    Row=4
    Col=14
    
    am_str = ctrl_str
    ln_am
    IF am_si > 0 THEN
        
        clv_buffer_focus=clv_buffer_expshop
        clv_buffer_cls clv_buffer(), clv_buffer_expshop
        
        'ln_portal
        'PCOPY 1, 2
ln_reshow1:
'end sub

'sub ln_reshow1 ()


        'PCOPY 2, 1
        X1 = Col
        X2 = X1+25
        Y1 = Row
        Y2 = Y1+20
        C1 = 4
        C2 = 12
        frame_put clv_buffer(), clv_buffer_expshop, X1, Y1, X2, Y2, C1, C2
        statx_si = 15
        ln_stts clv_buffer(), clv_buffer_expshop, Row+1, Col+1
        menu_str = ""
        menu_str = menu_str + "lvup" + MKL(l_sia(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)))
        IF MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4) = "pndx" THEN
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) >= 1 THEN
                haveit_str = "ispt"
                ln_haveit
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "ispt" + MKL(0)
                END IF
            END IF
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) >= 1 THEN
                haveit_str = "move"
                ln_haveit
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "move" + MKL(0)
                END IF
            END IF
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) >= 1 THEN
                haveit_str = "bite"
                ln_haveit
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "bite" + MKL(2)
                END IF
            END IF
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) >= 1 THEN
                haveit_str = "pnch"
                ln_haveit
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "pnch" + MKL(2)
                END IF
            END IF
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) >= 2 THEN
                haveit_str = "kick"
                ln_haveit
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "kick" + MKL(10)
                END IF
            END IF
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) >= 3 THEN
                haveit_str = "cure"
                ln_haveit
                IF haveit_si = 0 THEN
                    menu_str = menu_str + "cure" + MKL(20)
                END IF
            END IF
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) >= 7 THEN
                haveit_str = "vnom"
                ln_haveit
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
            ln_names
            IF menucost_si > 0 THEN
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_expshop, clv_glyph(), (X1+1-1) shl 3,(Y1+6+menuitem_si-1) shl 3,  "ú" + rr_str + " " + STRING((40 - 15) - LEN(rr_str) - 7, "-") + RIGHT("----" + STR(menucost_si) + "$", 5)
            END IF
            IF menucost_si = 0 THEN
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_expshop, clv_glyph(), (X1+1-1) shl 3, (Y1+6+menuitem_si-1) shl 3, "ú" + rr_str
            END IF
        NEXT menuitem_si
ln_wwait0:
'sub wwait0 ()
        ln_buttonwait
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
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) >= menucost_si THEN
                c_str = "L"
                ln_abilitygain
                clv_buffer_focus=clv_buffer_expshop
                END IF
            GOTO ln_reshow1
        END IF
        IF menuselect_str = "lvup" THEN
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) >= menucost_si THEN
                c_str = "L"
                ln_levelup
                clv_buffer_focus=clv_buffer_expshop
            END IF
            GOTO ln_reshow1
        END IF
        IF menuselect_str = "cncl" THEN
            c_str = "L"
        ELSE
            GOTO ln_wwait0
        END IF
        'PCOPY 2, 1
    END IF
    RETURN
end sub

sub ln_merchant ()
ln_merchant1:
    am_str = ctrl_str
    ln_am
    IF am_si > 0 THEN
        
        clv_buffer_focus=clv_buffer_merchant
        clv_buffer_cls clv_buffer(), clv_buffer_merchant

        ln_portal
        statx_si = 2
        ln_status
        viewx_si = 18
        menu_str = ""
        hasit_str = "dggr"
        ln_hasit
        IF hasit_si > 0 THEN
            menu_str = menu_str + "dggr" + MKL(5)
        END IF
        hasit_str = "pike"
        ln_hasit
        IF hasit_si > 0 THEN
            menu_str = menu_str + "pike" + MKL(20)
        END IF
        hasit_str = "grpl"
        ln_hasit
        IF hasit_si > 0 THEN
            menu_str = menu_str + "grpl" + MKL(15)
        END IF
        hasit_str = "seed"
        ln_hasit
        IF hasit_si > 0 THEN
            menu_str = menu_str + "seed" + MKL(15)
        END IF
        hasit_str = "wstf"
        ln_hasit
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
            ln_names
            IF menucost_si > 0 THEN
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (viewx_si-1) shl 3, (12 + menuitem_si-1) shl 3, "ú" + rr_str + " " + STRING((40 - viewx_si) - LEN(rr_str) - 7, "-") + RIGHT("----" + RIGHT(STR(menucost_si), LEN(STR(menucost_si)) - 1) + "$", 5)
            END IF
            IF menucost_si = 0 THEN
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (viewx_si-1) shl 3, (12 + menuitem_si-1) shl 3, "ú" + rr_str
            END IF
        NEXT menuitem_si
'end sub
ln_wwait1:
'sub ln_wwait1 ()
        ln_buttonwait
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
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) >= menucost_si THEN
                c_str = "L"
                ln_abilitygain
                clv_buffer_focus=clv_buffer_merchant
                hashadit_str = menuselect_str
                ln_hashadit
                G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6) = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6) + menucost_si
                GOTO ln_merchant1
            END IF
            GOTO ln_merchant1
        END IF
        IF menuselect_str = "lvup" THEN
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) >= menucost_si THEN
                c_str = "L"
                ln_levelup
                clv_buffer_focus=clv_buffer_merchant
                GOTO ln_merchant1
            END IF
            GOTO ln_merchant1
        END IF
        IF menuselect_str = "cncl" THEN
            c_str = "L"
        ELSE
            GOTO ln_wwait1
        END IF
    END IF
    RETURN
end sub

sub ln_talk0001 ()
    dim as short X1, X2, Y1, Y2, C1, C2
    dim as short Row, Col
    am_str = ctrl_str
    ln_am
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
'sub ln_reshow3 ()
        ln_portal
        statx_si = 2
        ln_status
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
            ln_names
            IF menucost_si > 0 THEN
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (row+7+menuitem_si-1) shl 3, "ú" + rr_str + " =" + STR(menucost_si)
            END IF
            IF menucost_si = 0 THEN
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_merchant, clv_glyph(), (Col-1) shl 3, (row+7+menuitem_si-1) shl 3, "ú" + rr_str
            END IF
        NEXT menuitem_si
'end sub
ln_wwait2:
'sub ln_wwait2 ()
        do
            ln_buttonwait
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
            'GOTO ln_wwait2
        'END IF
        IF menuselect_str = "bye_" THEN
            c_str = "L"
        ELSE
            ln_merchant
            'GOTO ln_wwait1
        END IF
        'PCOPY 4, 1
    END IF
    RETURN
end sub

sub ln_abilitygain ()
    e_stra(Tx_si + (Ty_si - 1) * AA_si, 1) = e_stra(Tx_si + (Ty_si - 1) * AA_si, 1) + menuselect_str
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) - menucost_si
    am_str = ctrl_str
    ln_am
    IF am_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        'LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        'PCOPY 1, 2
        ln_portal
        ln_avgframe
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Tx_si + (Ty_si - 1) * AA_si, 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, "gained"
        R_str = menuselect_str
        ln_names
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, rr_str
        ln_okbutton
        'PCOPY 2, 1
    END IF
    RETURN
end sub

sub ln_levelup ()
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        IF MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4) <> "____" THEN
        IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) >= l_sia(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)) THEN
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) - l_sia(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10))
            r1_si = INT(RND(1) * 5) + 1
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 11) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 11) + r1_si
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1) + r1_si
            r2_si = INT(RND(1) * 5) + 1
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 12) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 12) + r2_si
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) + r2_si
            r3_si = INT(RND(1) * 5) + 1
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 13) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 13) + r3_si
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) + r3_si
            r4_si = .2
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 4) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 4) + r4_si
            r5_si = .05
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 14) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 14) + r5_si
            am_str = ctrl_str
            ln_am
            IF am_si > 0 THEN
                LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
                PCOPY 1, 2
                ln_portal
                ln_avgframe
                clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Tx_si + (Ty_si - 1) * AA_si, 0)
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
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) < 64 THEN
                G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) + 1
                am_str = ctrl_str
                ln_am
                IF am_si > 0 THEN
                    clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (18-1) shl 3, "reached LV!"
                    clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (37-1) shl 3, (18-1) shl 3, RIGHT(STRING(3, " ") + STR(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)), 3)
                    IF l_sia(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)) - G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) >= 0 THEN
                        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (20-1) shl 3, "next:"
                        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (34-1) shl 3, (20-1) shl 3, RIGHT(STRING(5, " ") + STR(l_sia(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)) - G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6)), 5) + "$"
                    END IF
                END IF
            END IF
            am_str = ctrl_str
            ln_am
            IF am_si > 0 THEN
                ln_okbutton
                'PCOPY 2, 1
            END IF
            IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) >= 2 AND MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4) = "spdr" THEN
                getit_str = "vnom"
                haveit_str = "vnom"
                ln_haveit
                IF haveit_si = 0 THEN
                    e_stra(Tx_si + (Ty_si - 1) * AA_si, 1) = e_stra(Tx_si + (Ty_si - 1) * AA_si, 1) + getit_str
                    ln_gain
                END IF
            END IF
        END IF
    END IF
    RETURN
end sub

sub ln_gain ()
    am_str = ctrl_str
    ln_am
    IF am_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay

        'LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        'PCOPY 1, 2
        ln_portal
        ln_avgframe
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Tx_si + (Ty_si - 1) * AA_si, 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, "gained"
        R_str = getit_str
        ln_names
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, rr_str
        ln_okbutton
        'PCOPY 2, 1
    END IF
    RETURN
end sub

sub ln_getit ()
    IF getit_str <> "" THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay

        e_stra(Tx_si + (Ty_si - 1) * AA_si, 1) = e_stra(Tx_si + (Ty_si - 1) * AA_si, 1) + getit_str
        am_str = ctrl_str
        ln_am
        are_str = ctrl_str
        ln_are
        IF am_si > 0 OR are_si > 0 THEN
            LINE ((25 - 1) * 8, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
            PCOPY 1, 2
            ln_portal
            ln_avgframe
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Tx_si + (Ty_si - 1) * AA_si, 0)
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "gained"
            R_str = getit_str
            ln_names
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, rr_str
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (8-1) shl 3, "from"
            clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) + "!"
            ln_okbutton
            'PCOPY 2, 1
        END IF
    END IF
    RETURN
end sub

sub ln_attackusing ()
    am_str = ctrl_str
    ln_am
    are_str = ctrl_str
    ln_are
    IF am_si > 0 OR are_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay

        'PCOPY 1, 2
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        ln_portal
        ln_avgframe
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Tx_si + (Ty_si - 1) * AA_si, 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "used"
        R_str = AA_str
        ln_names
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, rr_str
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (8-1) shl 3, "on"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0)
        ln_okbutton
        'PCOPY 2, 1
    END IF
    RETURN
end sub

sub ln_battleattack ()
    am_str = ctrl_str
    ln_am
    are_str = ctrl_str
    ln_are
    IF am_si > 0 OR are_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        'PCOPY 1, 2
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        ln_portal
        ln_avgframe
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Tx_si + (Ty_si - 1) * AA_si, 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "used"
        R_str = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4)
        ln_names
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, rr_str
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (11-1) shl 3, "HP -"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (11-1) shl 3, RIGHT(STRING(5, " ") + STR(attackdamage), 5)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (12-1) shl 3, "STR-"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (12-1) shl 3, RIGHT(STRING(5, " ") + STR(strdamage_si), 5)
        ln_okbutton
        'PCOPY 2, 1
    END IF
    RETURN
end sub

sub ln_defeated ()
    am_str = ctrl_str
    ln_am
    are_str = ctrl_str
    ln_are
    IF am_si > 0 OR are_si > 0 THEN
        clv_buffer_focus=clv_buffer_playbyplay
        clv_buffer_cls clv_buffer(), clv_buffer_playbyplay
        
        'PCOPY 1, 2
        'LINE (0, 0)-(319, 199), rgb(0,0,0), bf'pal(0), BF
        ln_portal
        ln_avgframe
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (5-1) shl 3, e_stra(Tx_si + (Ty_si - 1) * AA_si, 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (6-1) shl 3, "pillaged"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (7-1) shl 3, e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (9-1) shl 3, "EXP+"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (34-1) shl 3, (9-1) shl 3, RIGHT(STRING(5, " ") + STR(expgain_si), 5) + "$"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (10-1) shl 3, "EXP:"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (34-1) shl 3, (10-1) shl 3, RIGHT(STRING(5, " ") + STR(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6)), 5) + "$"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (12-1) shl 3, "STR+"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (12-1) shl 3, RIGHT(STRING(5, " ") + STR(strgain_si), 5)
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (25-1) shl 3, (13-1) shl 3, "STR:"
        clv_draw_text clv_buffer(), clv_font(), clv_buffer_playbyplay, clv_glyph(), (35-1) shl 3, (13-1) shl 3, RIGHT(STRING(5, " ") + STR(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2)), 5)
        ln_okbutton
        'PCOPY 2, 1
    END IF
    RETURN
end sub

sub ln_portal ()
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
            ln_tempget
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
            ln_tempget
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
    RETURN
end sub

sub ln_title (clv_buffer() as fb.image ptr, Index as integer)
    clv_buffer_cls clv_buffer(), clv_buffer_draw
    'graphicput clv_buffer(), clv_buffer_portal1, 2, "aquagame.56", logopath_str
    colr_si = 9
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (3-1) shl 3, (2-1) shl 3, "A RetroMachineShop Featured Project!"
    LOCATE 4, 1
    RETURN
end sub

sub ln_status ()
    clv_buffer_cls clv_buffer(), clv_buffer_status
    frame_status 4, 24
    frame_inventory 14, 24
end sub

sub ln_framstts ()
    framex1_sf = statx_si
    framex2_sf = statx_si+5*3-1
    framey1_sf = 4
    framey2_sf = 12
    framec1_si = 4
    framec2_si = 12
    ln_frameput' clv_buffer(), clv_buffer_status
    RETURN
end sub

sub ln_framsttsitms ()
    framex1_sf = statx_si
    framex2_sf = statx_si+5*3-1
    framey1_sf = 14
    framey2_sf = 23
    framec1_si = 4
    framec2_si = 12
    ln_frameput' clv_buffer(), clv_buffer_status
    RETURN
end sub
sub ln_stts (clv_buffer() as fb.image ptr, Index as integer, Row as short, Col as short)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+0-1) shl 3, e_stra(Tx_si + (Ty_si - 1) * AA_si, 0)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+1-1) shl 3, "LV"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+3-1) shl 3, (Row+1-1) shl 3, RIGHT(STR(100 + G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)), 2)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+1-1) shl 3, (RIGHT("     " + STR(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6)), 5) + "$")
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+2-1) shl 3, (Row+1-1) shl 3, "ú"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+2-1) shl 3, "HP"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+4-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1))), 4)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+2-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+11-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 11))), 4)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+3-1) shl 3, "STR"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+4-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2))), 4)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+3-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+11-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 12))), 4)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col-1) shl 3, (Row+4-1) shl 3, "ESS"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+4-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3))), 4)
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+9-1) shl 3, (Row+4-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (Col+11-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 13))), 4)
    RETURN
end sub

sub ln_sttsgpic ()
    'ln_getaction
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
    'graphicput clv_buffer(), clv_buffer_portal9, statx_si + 6, (MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4) + "____.24"), spritepath_str
    'graphicput clv_buffer(), clv_buffer_portal9, statx_si + 3, (MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 5, 4) + "____.24"), spritepath_str
    'FOR t_si = 1 TO LEN(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1)) / 4
    '    R_str = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1), (t_si - 1) * 4 + 1, 4)
    '    ln_names
    '    IF action_str = R_str THEN
    '        clv_draw_text 12, statx_si, rr_str, 15, 1
    '    end if
    'NEXT t_si
    'RETURN
end sub

sub ln_sttsitms ()
    'dim as short X, Y
    'ln_getaction
    'FOR t_si = 1 TO LEN(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1)) / 4
    '    X=fix((t_si-1) mod 5)*3
    '    Y=fix((t_si-1)/5)*3
    '    R_str = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1), (t_si - 1) * 4 + 1, 4)
    '    ln_names
    '    graphicput clv_buffer(), clv_buffer_portal14 + Y, statx_si + X, (MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1), (t_si*4)-3, 4) + "____.24"), spritepath_str
    '    IF action_str = R_str THEN
    '        clv_draw_line clv_buffer(), page_status, (statx_si+X-1) shl 3,(14+Y-1) shl 3,((statx_si+X-1) shl 3)+23,((14+Y-1) shl 3)+23, rgb(255,255,255), rgb(0,0,0)
    '    end if
    'NEXT t_si
    'RETURN
end sub

sub ln_move ()
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "move"
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "move"
    are_str = "____pwch"
    ln_are
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) >= 1 AND are_si > 0 THEN
        move_si = 1
        here_str = "watr"
        ln_here
        IF here_si > 0 THEN move_si = 0
        there_str = "watr"
        ln_there
        IF there_si > 0 THEN move_si = 0
        here_str = "hole"
        ln_here
        there_str = "holestpsstp2"
        ln_there
        IF here_si > 0 AND there_si <= 0 THEN move_si = 0
        IF move_si = 1 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                ln_am
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) - 1
            ln_swapdata
        END IF
    END IF
    RETURN
end sub

sub ln_wingmove ()
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "move"
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "move"
    are_str = "____pwch"
    ln_are
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) >= 3 AND are_si > 0 THEN
        move_si = 1
        IF move_si = 1 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                ln_am
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) - 3
            ln_swapdata
        END IF
    END IF
    RETURN
end sub

sub ln_firemove ()
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) >= 1 THEN
        IF 1 = 1 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                ln_am
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "____"
            MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "move"
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) - 1
            ln_swapdata
        END IF
    ELSE
        ln_gone
    END IF
    RETURN
end sub

sub ln_webmove ()
    IF Tx_si = ex_si AND Ty_si = dy_si THEN
        am_str = ctrl_str
        ln_am
        IF am_si > 0 THEN
            ex_si = Tx_si + d_sia(d_si, 1) * dis_si
            dy_si = Ty_si + d_sia(d_si, 2) * dis_si
        END IF
    END IF
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "move"
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "move"
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) - 1
    ln_swapdata
    RETURN
end sub

sub ln_castfire ()
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) >= 20 THEN
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "____"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "fire"
        G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) - 20
        ln_prflblnk
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
        ln_prflmake
    END IF
    RETURN
end sub

sub ln_castdust ()
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) >= 8 THEN
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "____"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "dust"
        G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) - 8
        ln_prflblnk
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
        ln_prflmake
    END IF
    RETURN
end sub

sub ln_castweb ()
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) >= 220 THEN
        G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) - 220
        ln_prflblnk
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
        ln_prflmake
    END IF
    RETURN
end sub

sub ln_castspdr ()
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) >= 320 THEN
        G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) - 320
        ln_prflblnk
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
        ln_prflmake
    END IF
    RETURN
end sub

sub ln_castccts ()
    ln_prflblnk
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
    ln_prflmake
    RETURN
end sub

sub ln_castdtby ()
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) >= 160 THEN
        G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) - 160
        ln_prflblnk
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
        ln_prflmake
    END IF
    RETURN
end sub

sub ln_gone ()
    ln_prflblnk
    ln_prflset
    RETURN
end sub

sub ln_delete2 ()
    ln_prflblnk
    ln_prflmake
    RETURN
end sub

sub ln_autolevelup ()
    am_str = ctrl_str
    ln_am
    IF am_si = 0 THEN
        ln_levelup
    END IF
    RETURN
end sub

sub ln_statgain ()
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) + G_dfa(Tx_si + (Ty_si - 1) * AA_si, 4)
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) + G_dfa(Tx_si + (Ty_si - 1) * AA_si, 14)
    RETURN
end sub

sub ln_statmax ()
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1) > G_dfa(Tx_si + (Ty_si - 1) * AA_si, 11) THEN
        G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 11)
    END IF
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) > G_dfa(Tx_si + (Ty_si - 1) * AA_si, 12) THEN
        G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 12)
    END IF
    IF G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) > G_dfa(Tx_si + (Ty_si - 1) * AA_si, 13) THEN
        G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 13)
    END IF
    RETURN
end sub

sub ln_nextaction ()
    am_str = ctrl_str
    ln_am
    IF am_si = 0 THEN
        IF 1 = 1 THEN
            ln_newaction
            ln_putaction
        END IF
    ELSE
        ln_getaction
    END IF
    RETURN
end sub

sub ln_newaction ()
    ln_getaction
    IF NOT (action_str = "zzzz" AND dis_si > 0) THEN
        d_si = INT(RND(1) * 4) + 1
        ln_randomaction
        dis_si = 0
    END IF
    RETURN
end sub

sub ln_randomaction ()
    R_si = LEN(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1)) / 4
    R_si = INT(RND(1) * (R_si + 1))
    IF R_si = 0 THEN
        action_str = "____"
    ELSE
        action_str = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1), (R_si - 1) * 4 + 1, 4)
    END IF
    RETURN
end sub

sub ln_getaction ()
    d_si = CVL(MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 1, 4))
    action_str = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 5, 4)
    dis_si = CVL(MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 9, 4))
    RETURN
end sub

sub ln_putaction ()
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 1, 4) = MKL(d_si)
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 5, 4) = action_str
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 9, 4) = MKL(dis_si)
    RETURN
end sub

sub ln_tempget ()
    tempd_si = CVL(MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 1, 4))
    tempaction_str = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 5, 4)
    tempdis_si = CVL(MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 9, 4))
    RETURN
end sub

sub ln_tempput ()
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 1, 4) = MKL(tempd_si)
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 5, 4) = tempaction_str
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 9, 4) = MKL(tempdis_si)
    RETURN
end sub

sub ln_inbounds ()
    IF (Tx_si + d_sia(d_si, 1) * dis_si >= 1) AND (Tx_si + d_sia(d_si, 1) * dis_si <= AA_si) AND (Ty_si + d_sia(d_si, 2) * dis_si >= 1) AND (Ty_si + d_sia(d_si, 2) * dis_si <= DD_si) THEN
        inbounds_si = 1
    ELSE
        inbounds_si = 0
    END IF
    RETURN
end sub

sub ln_haveit ()
    haveit_si = 0
    t_str = e_stra(Tx_si + (Ty_si - 1) * AA_si, 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = haveit_str THEN
            haveit_si = haveit_si + 1
        END IF
    NEXT tt_si
    RETURN
end sub

sub ln_hasit ()
    hasit_si = 0
    t_str = e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = hasit_str THEN
            hasit_si = hasit_si + 1
        END IF
    NEXT tt_si
    RETURN
end sub

sub ln_havehadit ()
    t_str = e_stra(Tx_si + (Ty_si - 1) * AA_si, 1)
    t_si = LEN(t_str) / 4
    FOR tt_si = 1 TO t_si
        tt_str = MID(t_str, (tt_si - 1) * 4 + 1, 4)
        IF tt_str = havehadit_str THEN
            t_str = LEFT(t_str, (tt_si - 1) * 4) + RIGHT(t_str, t_si * 4 + 1 - tt_si * 4 - 1)
            tt_si = t_si
        END IF
    NEXT tt_si
    e_stra(Tx_si + (Ty_si - 1) * AA_si, 1) = t_str
    RETURN
end sub

sub ln_hashadit ()
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
    RETURN
end sub

sub ln_havegotit ()
    t_str = e_stra(Tx_si + (Ty_si - 1) * AA_si, 1)
    e_stra(Tx_si + (Ty_si - 1) * AA_si, 1) = t_str + havegotit_str
    RETURN
end sub

sub ln_hasgotit ()
    t_str = e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1)
    e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = t_str + hasgotit_str
    RETURN
end sub

sub ln_winexp ()
    getit_si = G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6)
    IF getit_si > 0 THEN
        getit_str = STR(getit_si) + " EXP"
        getit_str = RIGHT(getit_str, LEN(getit_str) - 1)
        G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1) + getit_si
        ln_getit
        G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 6) = 0
    END IF
    RETURN
end sub

sub ln_windggr ()
    winit_str = "dggr"
    ln_winit
end sub

sub ln_winpike ()
    winit_str = "pike"
    ln_winit
end sub

sub ln_wingrpl ()
    winit_str = "grpl"
    ln_winit
end sub

sub ln_winseed ()
    winit_str = "seed"
    ln_winit
end sub

sub ln_winkey1 ()
    winit_str = "key1"
    ln_winit
end sub

sub ln_winkey2 ()
    winit_str = "key2"
    ln_winit
end sub

sub ln_winit ()
    getit_str = winit_str
    hasit_str = winit_str
    ln_hasit
    IF hasit_si = 0 THEN RETURN
    haveit_str = winit_str
    ln_haveit
    IF haveit_si > 0 THEN RETURN
    ln_getit
    hashadit_str = winit_str
    ln_hashadit
    RETURN
end sub

sub ln_am ()
    am_si = 0
    FOR t_si = 1 TO LEN(am_str) / 4
        IF MID(am_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4) THEN
            am_si = am_si + 1
        END IF
    NEXT t_si
    RETURN
end sub

sub ln_are ()
    are_si = 0
    FOR t_si = 1 TO LEN(are_str) / 4
        IF MID(are_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 1, 4) THEN
            are_si = are_si + 1
        END IF
    NEXT t_si
    RETURN
end sub

sub ln_here ()
    here_si = 0
    FOR t_si = 1 TO LEN(here_str) / 4
        IF MID(here_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 5, 4) THEN
            here_si = here_si + 1
        END IF
    NEXT t_si
    RETURN
end sub

sub ln_there ()
    there_si = 0
    FOR t_si = 1 TO LEN(there_str) / 4
        IF MID(there_str, (t_si - 1) * 4 + 1, 4) = MID(e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2), 5, 4) THEN
            there_si = there_si + 1
        END IF
    NEXT t_si
    RETURN
end sub

sub ln_blankcheck ()
    are_str = blankcheck_str
    ln_inbounds
    IF inbounds_si = 1 THEN
        ln_are
    ELSE
        are_si = -1
    END IF
    blankcheck_si = are_si
    RETURN
end sub

sub ln_okbutton ()
    'clv_buffer_focus=clv_buffer_menu
    clv_buffer_cls clv_buffer(), clv_buffer_menu
    
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_menu, clv_glyph(), (25-1) shl 3,(23-1) shl 3, "úOk"
    ln_wwait

    clv_buffer_cls clv_buffer(), clv_buffer_menu
end sub

sub ln_wwait ()
    do
        ln_buttonwait
    loop while not(((c_str = "&H0D") OR (ym_si = 23 AND xm_si = 25 AND Lb_si = -1)))
    c_str = "L"
end sub

sub ln_buttonwait ()
    cinput
    cursorput
    'netscreenout
    clv_buffer_stack clv_buffer()
end sub

sub ln_commandwait ()
    c_str = "%%"
    Lb_si = 0
    WHILE c_str = "%%" AND Lb_si = 0
        cinput
        cursorput
        'netscreenout
        clv_buffer_stack clv_buffer()
    WEND
end sub

sub ln_frameput ()
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
    RETURN
end sub

sub ln_avgframe ()
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
    RETURN
end sub

sub ln_screenset ()
    clv_buffer_stack clv_buffer()
end sub

sub ln_findcrsr ()
    crsry_si = CSRLIN
    crsrx_si = POS(0)
end sub

sub ln_showtext (clv_buffer() as fb.image ptr, Index as integer)
    ln_findcrsr
    clv_draw_text clv_buffer(), clv_font(), Index, clv_glyph(), (crsrx_si-1) shl 3, (crsry_si-1) shl 3, texts_str
    LOCATE crsry_si + 1, 1
end sub

sub ln_prflblnk ()
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
    RETURN
end sub

sub ln_prflset ()
    e_stra(Tx_si + (Ty_si - 1) * AA_si, 0) = prflidty_str
    e_stra(Tx_si + (Ty_si - 1) * AA_si, 1) = prflactn_str
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4) = prflgpic_str
    e_stra(Tx_si + (Ty_si - 1) * AA_si, 3) = prflcmnd_str
    e_stra(Tx_si + (Ty_si - 1) * AA_si, 4) = prflgpicactn_str
    e_stra(Tx_si + (Ty_si - 1) * AA_si, 5) = prflactnct_str
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 0) = prflidty_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1) = prflhp_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = prflstr_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3) = prfless_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 4) = prflspd_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 5) = prflarmr_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6) = prflexp_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 7) = prflvalu_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 8) = prflpirc_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 9) = prflchck_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10) = prfllv_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 11) = prflhpmax_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 12) = prflstrmax_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 13) = prflessmax_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 14) = prflessspd_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 15) = prflevad_sf
    G_dfa(Tx_si + (Ty_si - 1) * AA_si, 16) = prflblnk_sf
    RETURN
end sub

sub ln_prflmake ()
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
    RETURN
end sub

sub ln_actncure ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN RETURN
    blankcheck_str = "pndxspdrgrmldtbyemgdshktimp_"
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_usecure
        RETURN
    END IF
    RETURN
end sub

sub ln_actnbite ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN RETURN
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attkbite
        RETURN
    END IF
    RETURN
end sub

sub ln_actnpnch ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN RETURN
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attkpnch
        RETURN
    END IF
    RETURN
end sub

sub ln_actnkick ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN RETURN
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attkkick
        RETURN
    END IF
    RETURN
end sub

sub ln_actndggr ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN RETURN
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attkdggr
        RETURN
    END IF
    RETURN
end sub

sub ln_actnpike ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN RETURN
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attkpike
        RETURN
    END IF
    RETURN
end sub

sub ln_actnvnom ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN RETURN
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attkvnom
        RETURN
    END IF
    RETURN
end sub

sub ln_actnfire ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN
        ln_castfire
        RETURN
    END IF
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attkfire
        RETURN
    END IF
    RETURN
end sub

sub ln_actndust ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN
        ln_castdust
        RETURN
    END IF
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_useslep
        RETURN
    END IF
    RETURN
end sub

sub ln_actnweb ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN
        ln_castweb
        RETURN
    END IF
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attkweb
        RETURN
    END IF
    RETURN
end sub

sub ln_actnspdr ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN
        ln_castspdr
        RETURN
    END IF
    RETURN
end sub

sub ln_actnccts ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN
        ln_castccts
        RETURN
    END IF
    RETURN
end sub

sub ln_actndtby ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN
        ln_castdtby
        RETURN
    END IF
    RETURN
end sub

sub ln_actnmove ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    ln_move
    RETURN
end sub

sub ln_actnwing ()
    dis_si = 1
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    ln_wingmove
    RETURN
end sub

sub ln_actnwstf ()
    dis_si = 1
    blankcheck_str = "bldr"
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        dis_si = 2
        blankcheck_str = "____pwch"
        ln_blankcheck
        IF blankcheck_si > 0 THEN
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = Tx_si + d_sia(d_si, 1)
            Ty_si = Ty_si + d_sia(d_si, 2)
            dis_si = 1
            ln_swapdata
            Tx_si = temptx_si
            Ty_si = tempty_si
            RETURN
        END IF
    END IF
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attkwstf
    END IF
    RETURN
end sub

sub ln_actnkey1 ()
    dis_si = 1
    blankcheck_str = "door"
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        hasit_str = "loc1"
        ln_hasit
        IF hasit_si > 0 THEN
            hashadit_str = "loc1"
            ln_hashadit
            havehadit_str = "key1"
            ln_havehadit
            ln_delete2
        END IF
    END IF
    RETURN
end sub

sub ln_actnkey2 ()
    dis_si = 1
    blankcheck_str = "door"
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        hasit_str = "loc2"
        ln_hasit
        IF hasit_si > 0 THEN
            hashadit_str = "loc2"
            ln_hashadit
            havehadit_str = "key2"
            ln_havehadit
            ln_delete2
        END IF
    END IF
    RETURN
end sub

sub ln_actnispt ()
    dim as short tempt
    dis_si = 1
    ln_putaction
    blankcheck_str = "____"
    ln_blankcheck
    IF blankcheck_si = -1 OR blankcheck_si > 0 THEN RETURN
    IF e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) = "Merchant" THEN
        ln_merchant
        RETURN
    END IF
    IF e_stra(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 0) = "Poindexter" THEN
        ln_talk0001
        RETURN
    END IF
    blankcheck_str = "pwchchst"
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_pillage
        blankcheck_str = "pwch"
        IF blankcheck_si > 0 THEN
            ln_delete2
        END IF
        RETURN
    END IF
    blankcheck_str = "door"
    ln_blankcheck
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
            ln_delete2
        END IF
        RETURN
    END IF
    RETURN
end sub

sub ln_actnfiremove ()
    dis_si = 1
    blankcheck_str = "____pwch"
    ln_blankcheck
    IF blankcheck_si = -1 THEN
        ln_gone
        RETURN
    END IF
    IF blankcheck_si > 0 THEN
        ln_firemove
        RETURN
    END IF
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attkburn
        ln_gone
        RETURN
    END IF
    ln_gone
    RETURN
end sub

sub ln_actndustmove ()
    dis_si = 1
    blankcheck_str = "____pwch"
    ln_blankcheck
    IF blankcheck_si = -1 THEN
        ln_gone
    RETURN
    END IF
    IF blankcheck_si > 0 THEN
        ln_firemove
    RETURN
    END IF
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_useslep
        ln_gone
        RETURN
    END IF
    ln_gone
    RETURN
end sub

sub ln_actnwebmove ()
    dis_si = 1
    blankcheck_str = "____pwch"
    ln_blankcheck
    IF blankcheck_si = -1 THEN RETURN
    IF blankcheck_si > 0 THEN
        ln_webmove
        RETURN
    END IF
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attktngl
        ln_gone
        RETURN
    END IF
    RETURN
end sub

sub ln_actngrpl ()
    IF dis_si = 3 THEN
        action_str = "rapl"
        ln_putaction
        ln_actnrapl
        return
    END IF
    IF dis_si = 0 AND G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) < 10 THEN
        action_str = "____pwch"
        ln_putaction
        RETURN
    END IF
    IF dis_si = 0 THEN
        G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) = G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2) - 10
    END IF
    IF dis_si < 3 THEN
        dis_si = dis_si + 1
    END IF
        blankcheck_str = "____pwch"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "pnch"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "grpl"
        ln_blankcheck
        IF blankcheck_si = -1 THEN
            dis_si = dis_si - 1
        RETURN
    END IF
    IF blankcheck_si > 0 THEN
        ln_putaction
        RETURN
    END IF
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_putaction
        action_str = "rapl"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "pnch"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "grpl"
        ln_putaction
        ln_attklash
        RETURN
    END IF
    blankcheck_str = "bldrchst"
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        action_str = "rapl"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "pnch"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "grpl"
        ln_putaction
        RETURN
    END IF
    RETURN
end sub

sub ln_actnrapl ()
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "pnch"
    MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "grpl"
    IF dis_si = 1 THEN
        action_str = "____pwch"
        dis_si = 0
        ln_putaction
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 1, 4) = "____"
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 4), 5, 4) = "____"
        RETURN
    END IF
    blankcheck_str = "____pwch"
    ln_blankcheck
    IF blankcheck_si = -1 THEN
        IF dis_si > 1 THEN
            dis_si = dis_si - 1
            ln_putaction
        END IF
        RETURN
    END IF
    IF blankcheck_si > 0 THEN
        IF dis_si > 1 THEN
            dis_si = dis_si - 1
            ln_putaction
        END IF
    END IF
    blankcheck_str = attackthem_str
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        ln_attklash
        dis_si = dis_si - 1
        ln_putaction
        RETURN
    END IF
    blankcheck_str = "bldrchst"
    ln_blankcheck
    IF blankcheck_si > 0 THEN
        dis_si = 1
        blankcheck_str = "____pwch"
        ln_blankcheck
        IF blankcheck_si = 0 THEN
            dis_si = dis_si - 1
            ln_putaction
            RETURN
        END IF
        IF blankcheck_si > 0 THEN
            IF Tx_si = ex_si AND Ty_si = dy_si THEN
                am_str = ctrl_str
                ln_am
                IF am_si > 0 THEN
                    ex_si = Tx_si + d_sia(d_si, 1) * dis_si
                    dy_si = Ty_si + d_sia(d_si, 2) * dis_si
                END IF
            END IF
            ln_swapdata
            temptx_si = Tx_si
            tempty_si = Ty_si
            Tx_si = Tx_si + d_sia(d_si, 1)
            Ty_si = Ty_si + d_sia(d_si, 2)
            ln_getaction
            dis_si = dis_si - 1
            ln_putaction
            Tx_si = temptx_si
            Ty_si = tempty_si
            RETURN
        END IF
    END IF
    RETURN
end sub

sub ln_crtnimp ()
    ln_statgain
    ln_statmax
    ln_nextaction
    attackthem_str = "pndxgrmlspdrdtbyweb_emgdshkt"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        ln_actnmove
    CASE CVL("fire")
        ln_actnfire
    CASE CVL("ispt")
        ln_actnispt
    CASE CVL("wing")
        ln_actnwing
    END SELECT
    ln_autolevelup
    RETURN
end sub

sub ln_crtnfire ()
    ln_statgain
    ln_statmax
    ln_getaction
    attackthem_str = "pndxgrmlspdrdtbyweb_shktemgd"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        ln_actnfiremove
    END SELECT
    RETURN
end sub

sub ln_crtndust ()
    ln_statgain
    ln_statmax
    ln_getaction
    attackthem_str = "pndxgrmlspdrshktemgdimp_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        ln_actndustmove
    END SELECT
    RETURN
end sub

sub ln_crtnshkt ()
    ln_statgain
    ln_statmax
    ln_nextaction
    attackthem_str = "pndxgrmlspdrdtbyweb_imp_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        ln_actnmove
    CASE CVL("fire")
        ln_actnfire
    CASE CVL("bite")
        ln_actnbite
    CASE CVL("pnch")
        ln_actnpnch
    CASE CVL("kick")
        ln_actnkick
    CASE CVL("dggr")
        ln_actndggr
    CASE CVL("pike")
        ln_actnpike
    END SELECT
    ln_autolevelup
    RETURN
end sub

sub ln_crtnemgd ()
    ln_statgain
    ln_statmax
    ln_nextaction
    attackthem_str = "pndxgrmlspdrdtbyweb_imp_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        ln_actnmove
    CASE CVL("fire")
        ln_actnfire
    CASE CVL("bite")
        ln_actnbite
    CASE CVL("pnch")
        ln_actnpnch
    CASE CVL("kick")
        ln_actnkick
    CASE CVL("dggr")
        ln_actndggr
    CASE CVL("pike")
        ln_actnpike
    END SELECT
    ln_autolevelup
    RETURN
end sub

sub ln_crtnspdr ()
    ln_statgain
    ln_statmax
    ln_nextaction
    attackthem_str = "pndxdtbyspdrimp_emgdshktgrml"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        ln_actnmove
    CASE CVL("web_")
        ln_actnweb
    CASE CVL("bite")
        ln_actnbite
    CASE CVL("vnom")
        ln_actnkick
    END SELECT
    ln_autolevelup
    RETURN
end sub

sub ln_crtnweb ()
    ln_statgain
    ln_statmax
    ln_getaction
    IF action_str <> "move" THEN
        ln_nextaction
    END IF
    attackthem_str = "pndxgrmldtbyweb_shktemgdimp_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        ln_actnwebmove
    CASE CVL("spdr")
        ln_actnspdr
    END SELECT
    ln_autolevelup
    RETURN
end sub

sub ln_crtndtby ()
    ln_statgain
    ln_statmax
    ln_nextaction
    attackthem_str = "pndxgrmlspdrimp_emgdshkt"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        ln_actnmove
    CASE CVL("fire")
        ln_actnfire
    CASE CVL("dtby")
        ln_actndtby
    CASE CVL("bite")
        ln_actnbite
    CASE CVL("kick")
        ln_actnkick
    CASE CVL("dust")
        ln_actndust
    END SELECT
    ln_autolevelup
    RETURN
end sub

sub ln_crtngrml ()
    ln_statgain
    ln_statmax
    ln_nextaction
    attackthem_str = "pndxdtbyspdrimp_emgdshktweb_"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        ln_actnmove
    CASE CVL("fire")
        ln_actnfire
    CASE CVL("bite")
        ln_actnbite
    CASE CVL("pnch")
        ln_actnpnch
    CASE CVL("kick")
        ln_actnkick
    CASE CVL("dggr")
        ln_actndggr
    CASE CVL("pike")
        ln_actnpike
    END SELECT
    ln_autolevelup
    RETURN
end sub

sub ln_crtnpndx ()
    ln_statgain
    ln_statmax
    ln_nextaction
    attackthem_str = "pndxdtbyspdrimp_emgdshktweb_grmlccts"
    SELECT CASE CVL(action_str)
    CASE CVL("move")
        ln_actnmove
    CASE CVL("fire")
        ln_actnfire
    CASE CVL("bite")
        ln_actnbite
    CASE CVL("pnch")
        ln_actnpnch
    CASE CVL("kick")
        ln_actnkick
    CASE CVL("dggr")
        ln_actndggr
    CASE CVL("pike")
        ln_actnpike
    CASE CVL("spdr")
        ln_actnspdr
    CASE CVL("web_")
        ln_actnweb
    CASE CVL("vnom")
        ln_actnvnom
    CASE CVL("cure")
        ln_actncure
    CASE CVL("ispt")
        ln_actnispt
    CASE CVL("grpl")
        ln_actngrpl
    CASE CVL("rapl")
        ln_actnrapl
    CASE CVL("seed")
        ln_actnccts
    CASE CVL("wstf")
        ln_actnwstf
    CASE CVL("wing")
        ln_actnwing
    CASE CVL("key1")
        ln_actnkey1
    CASE CVL("key2")
        ln_actnkey2
    END SELECT
    ln_autolevelup
    RETURN
end sub

sub ln_crtnccts ()
    ln_statgain
    ln_statmax
    ln_nextaction
    attackthem_str = ""
    here_str = "watr"
    ln_here
    IF here_si > 0 THEN
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 5, 4) = "hole"
    END IF
    here_str = "stpw"
    ln_here
    IF here_si > 0 THEN
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 5, 4) = "stps"
    END IF
    SELECT CASE CVL(action_str)
    CASE CVL("seed")
        ln_actnccts
    END SELECT
    ln_autolevelup
    RETURN
end sub

sub ln_crtnbldr ()
    ln_statgain
    ln_statmax
    ln_nextaction
    attackthem_str = ""
    IF MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 5, 4) = "hole" THEN
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 5, 4) = "dirt"
        ln_gone
        RETURN
    END IF
    IF MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 5, 4) = "watr" THEN
        MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 5, 4) = "stpw"
        ln_gone
        RETURN
    END IF
    'SELECT CASE CVL(action_str)
    'END SELECT
    ln_autolevelup
    RETURN
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

SUB cursorput
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
			return
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

SUB graphicput (clv_buffer() as fb.image ptr, Index as integer, byref yy1_si as short, byref xx1_si as short, ss1_str as string, dpath_str as string)
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

SUB suspend (byref start_sf as single, byref delay as short)
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

SUB MouseStatus (byref LBi AS short, byref RBi AS short, byref Mouse_X AS short, byref Mouse_Y AS short)
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
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row-1) shl 3, e_stra(Tx_si + (Ty_si - 1) * AA_si, 0)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (col-1) shl 3, (Row+1-1) shl 3, "LV"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+3-1) shl 3, (Row+1-1) shl 3, RIGHT(STR(100 + G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)), 2)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (col+9-1) shl 3, (Row+1-1) shl 3, (RIGHT("     " + STR(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6)), 5) + "$")
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+2-1) shl 3, (Row+1-1) shl 3, "ú"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+2-1) shl 3, "HP"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+4-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1))), 4)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+9-1) shl 3, (Row+2-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+11-1) shl 3, (Row+2-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 11))), 4)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+3-1) shl 3, "STR"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+4-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2))), 4)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+9-1) shl 3, (Row+3-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+11-1) shl 3, (Row+3-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 12))), 4)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col-1) shl 3, (Row+4-1) shl 3, "ESS"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+4-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3))), 4)
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+9-1) shl 3, (Row+4-1) shl 3, "/"
    clv_draw_text clv_buffer(), clv_font(), clv_buffer_status, clv_glyph(), (Col+11-1) shl 3, (Row+4-1) shl 3, RIGHT(STR(10000 + INT(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 13))), 4)
    ln_getaction
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
    graphicput clv_buffer(), clv_buffer_status, Row+5, Col+6, (MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2), 1, 4) + MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 5, 4) +  ".24"), spritepath_str
    'graphicput clv_buffer(), clv_buffer_status, Row+5, Col+3, (MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 3), 5, 4) + "____.24"), spritepath_str
    FOR t_si = 1 TO LEN(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1)) / 4
        R_str = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1), (t_si - 1) * 4 + 1, 4)
        ln_names
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
    ln_getaction
    FOR t_si = 1 TO LEN(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1)) / 4
        X=fix((t_si-1) mod 5)*3
        Y=fix((t_si-1)/5)*3
        R_str = MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1), (t_si - 1) * 4 + 1, 4)
        ln_names
        graphicput clv_buffer(), clv_buffer_status, Row + Y, Col + X, (MID(e_stra(Tx_si + (Ty_si - 1) * AA_si, 1), (t_si*4)-3, 4) + "____.24"), spritepath_str
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

sub clv_glyph_ini (clv_glyph() as integer)
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
    mapname= sync_names( "mapname_str", Data_Table() )
    Caption=Caption+" "+chr(34)+mapname_str+chr(34)
    'map dimensions width
    AA_si= val( sync_names( "AA_si", Data_Table() ) )
    'map dimensions height
    DD_si= val( sync_names( "DD_si", Data_Table() ) )
    Max=Max+AA_si*DD_si*23
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 3, progress, LastSec, DelaySec

    'directional axis matrix
    for X=0 to 4
        for Y=1 to 2
            d_sia(X,Y)= val( sync_names( "d_sia["+trimint(X)+"]["+trimint(Y)+"]", Data_Table() ) )
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec

    'map pointer x
    ex_si= val( sync_names( "ex_si", Data_Table() ) )
    'map pointer y
    dy_si= val( sync_names( "dy_si", Data_Table() ) )
    'screen cursor x
    mdx_si= val( sync_names( "mdx_si", Data_Table() ) )
    'screen cursor y
    mdy_si= val( sync_names( "mdy_si", Data_Table() ) )
        
    'text color
    textcolor_si= val( sync_names( "textcolor_si", Data_Table() ) )
    'text delay
    textdelay_sf= val( sync_names( "textdelay_sf", Data_Table() ) )
    
    'current window
    win_si= val( sync_names( "win_si", Data_Table() ) )
    '[!!!]'progress_put clv_buffer(), Index, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 7, progress, LastSec, DelaySec

    for Y=0 to 4
        for X=1 to 2
            d_sia(Y,X)= val( sync_names( "d_sia["+trimint(Y)+"]["+trimint(X)+"]", Data_Table() ) )
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec

    FOR X = 0 TO win_si
        for Y=1 to 2
            win_sia(Y + (X - 1) * 2)= val( sync_names( "win_sia["+trimint(X)+"]["+trimint(Y)+"]", Data_Table() ) )
        next
    NEXT
    Max=Max+(win_si+1)*2
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, (win_si+1)*2, progress, LastSec, DelaySec

    'level up data
    FOR t_si = 0 TO 64
        for X=1 to 2
            l_sia(t_si)= val( sync_names( "l_sia["+trimint(t_si)+"]", Data_Table() ) )
        next
    NEXT

    ctrl_str= sync_names( "ctrl_str", Data_Table() )
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 131, progress, LastSec, DelaySec
        
    FOR Ty_si = 1 TO DD_si
        FOR Tx_si = 1 TO AA_si
            e_stra(Tx_si + (Ty_si - 1) * AA_si, 0)= sync_names( "prflidty_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() )
            e_stra(Tx_si + (Ty_si - 1) * AA_si, 1)= sync_names( "prflactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() )
            mid(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2),1,4)= sync_names( "prflgpic_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() )
            e_stra(Tx_si + (Ty_si - 1) * AA_si, 3)= sync_names( "prflcmnd_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() )
            e_stra(Tx_si + (Ty_si - 1) * AA_si, 4)= sync_names( "prflgpicactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() )
            e_stra(Tx_si + (Ty_si - 1) * AA_si, 5)= sync_names( "prflactnct_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() )
            progress_put clv_buffer(), Index, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 6, progress, LastSec, DelaySec

            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 0)= val( sync_names( "prflidty_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1)= val( sync_names( "prflhp_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2)= val( sync_names( "prflstr_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3)= val( sync_names( "prfless_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 4)= val( sync_names( "prflspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 5)= val( sync_names( "prflarmr_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6)= val( sync_names( "prflexp_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 7)= val( sync_names( "prflvalu_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 8)= val( sync_names( "prflpirc_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 9)= val( sync_names( "prflchck_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)= val( sync_names( "prfllv_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 11)= val( sync_names( "prflhpmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 12)= val( sync_names( "prflstrmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 13)= val( sync_names( "prflessmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 14)= val( sync_names( "prflessspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 15)= val( sync_names( "prflevad_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
            G_dfa(Tx_si + (Ty_si - 1) * AA_si, 16)= val( sync_names( "prflblnk_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]", Data_Table() ) )
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
    
    names_push( "mapname_str", mapname_str,Names_Buffer() ) 'map name
    names_push( "AA_si", trimint(AA_si), Names_Buffer() ) 'map dimensions width
    names_push( "DD_si", trimint(DD_si), Names_Buffer() ) 'map dimensions height
    Max=Max+AA_si*DD_si*23
    
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 3, progress, LastSec, DelaySec

    'directional axis matrix
    for X=0 to 4
        for Y=1 to 2
            names_push("d_sia["+trimint(X)+"]["+trimint(Y)+"]",trimint(d_sia(X,Y)),Names_Buffer())
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec

    names_push("ex_si",trimint(ex_si),Names_Buffer()) 'map pointer x
    names_push("dy_si",trimint(dy_si),Names_Buffer()) 'map pointer y
    names_push("mdx_si",trimint(mdx_si),Names_Buffer()) 'screen cursor x
    names_push("mdy_si",trimint(mdy_si),Names_Buffer()) 'screen cursor y
        
    names_push("textcolor_si",trimint(textcolor_si),Names_Buffer()) 'screen cursor y
    names_push("textdelay_sf",trimint(textdelay_sf),Names_Buffer()) 'screen cursor y
    
    names_push("win_si",trimint(win_si),Names_Buffer()) 'screen cursor y
    Max=Max+(Win_si+1)*2
    queue_max=Max
    redim preserve queue(0 to queue_max) as names_type
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 7, progress, LastSec, DelaySec

    for Y=0 to 4
        for X=1 to 2
            names_push("d_sia["+trimint(Y)+"]["+trimint(X)+"]",trimint(d_sia(Y,X)),Names_Buffer())
        next
    next
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 10, progress, LastSec, DelaySec
    
    FOR X = 0 TO win_si
        for Y=1 to 2
            names_push("win_sia["+trimint(X)+"]["+trimint(Y)+"]",trimint(win_sia(Y + (X - 1) * 2)),Names_Buffer())
        next
    NEXT
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, (win_si+1)*2, progress, LastSec, DelaySec

    'level up data
    FOR t_si = 0 TO 64
        for X=1 to 2
            names_push("l_sia["+trimint(t_si)+"]",trimint(l_sia(t_si)),Names_Buffer())
        next
    NEXT
    
    names_push("ctrl_str", ctrl_str,Names_Buffer())
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 131, progress, LastSec, DelaySec

    FOR Ty_si = 1 TO DD_si
        FOR Tx_si = 1 TO AA_si
            names_push("prflidty_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Tx_si + (Ty_si - 1) * AA_si, 0),Names_Buffer())
            names_push("prflactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Tx_si + (Ty_si - 1) * AA_si, 1),Names_Buffer())
            names_push("prflgpic_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",mid(e_stra(Tx_si + (Ty_si - 1) * AA_si, 2),1,4),Names_Buffer())
            names_push("prflcmnd_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Tx_si + (Ty_si - 1) * AA_si, 3),Names_Buffer())
            names_push("prflgpicactn_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Tx_si + (Ty_si - 1) * AA_si, 4),Names_Buffer())
            names_push("prflactnct_str["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",e_stra(Tx_si + (Ty_si - 1) * AA_si, 5),Names_Buffer())
            progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 6, progress, LastSec, DelaySec

            names_push("prflidty_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 0)),Names_Buffer())
            names_push("prflhp_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 1)),Names_Buffer())
            names_push("prflstr_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 2)),Names_Buffer())
            names_push("prfless_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 3)),Names_Buffer())
            names_push("prflspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 4)),Names_Buffer())
            names_push("prflarmr_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 5)),Names_Buffer())
            names_push("prflexp_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 6)),Names_Buffer())
            names_push("prflvalu_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 7)),Names_Buffer())
            names_push("prflpirc_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 8)),Names_Buffer())
            names_push("prflchck_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 9)),Names_Buffer())
            names_push("prfllv_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 10)),Names_Buffer())
            names_push("prflhpmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 11)),Names_Buffer())
            names_push("prflstrmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 12)),Names_Buffer())
            names_push("prflessmax_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 13)),Names_Buffer())
            names_push("prflessspd_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 14)),Names_Buffer())
            names_push("prflevad_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 15)),Names_Buffer())
            names_push("prflblnk_sf["+trimint(Tx_si)+"]["+trimint(Ty_si)+"]",trimint(G_dfa(Tx_si + (Ty_si - 1) * AA_si, 16)),Names_Buffer())
            progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 17, progress, LastSec, DelaySec
        NEXT
    NEXT
    progress_put clv_buffer(), Index2, Caption, Cur, Max, X1, Y1, X2, Y2, Switch, ARGB, 0, progress, LastSec, 0.0
	'[..]'merge_names( Names_Buffer(), names_table() )
    sleep 1
    clv_buffer_cls clv_buffer(), Index2
end sub


sub savegame_save( filename as string = "", map_buffer( any ) as names_type )
'case "&HFF3B" 'F1 (save savegame)
    	    	
    Map_Save( map_buffer() )
    
	save_names( ".\save\" + filename + ".dat", map_buffer() )

end sub

sub savegame_load( filename as string = "", map_buffer( any ) as names_type )
'case "&HFF3C" 'F2 (load savegame)

	load_names_from_file( ".\save\" + filename + ".dat", map_buffer() )
    
	Map_Load( map_buffer() )

end sub


