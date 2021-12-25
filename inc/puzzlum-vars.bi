
'puzzlum-vars.bi
'Puzzlum Variable Definitions
'
'Puzzlum is Copyright (C) 1997, 2010, 2021 Timothy Robert Keal
'Released under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )
'
'http://puzzlum.com/
'mailto:trkeal@gmail.com
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

'=====
	
	#ifndef puzzlum_vars_lib
	#inclib "puzzlum-vars"
	#endif
	
	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"
	
	redim shared as names_type Bundle_Table( any )
	redim shared as names_type Display_Table( any )
	redim shared as names_type Input_Table( any )
	redim shared as names_type Names_Table(any)
	redim shared as names_type Levels_Table()
	redim shared as names_type Maps_Table( any )
	redim shared as names_type Save_Table( any )
	redim shared as names_type Queue_Table( any )
	redim shared as names_type Attack_Table( any )
	redim shared as names_type Rose_Table( any )
		
	dim shared as integer rosecard = 0, roseaxis = 0

    dim shared as short win_si
    dim shared as string mappath_str, map_str, lvuppath_str, lvup_str, mapid_str
    dim shared as string thispath_str, fontpath_str, logopath_str, spritepath_str, palpath_str, helppath_str, helpfilename_str
	
    dim shared as string help_filename, map_filename, levels_filename, input_filename, palette_filename, attack_filename

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

	dim shared as integer Mouse_Width=320, Mouse_Height=240
	dim shared as integer Screen_Width=320, Screen_Height=240
	dim shared as integer Display_Width=640, Display_Height=480
	dim shared as integer Display_Depth=32, Display_Pages=16

    dim shared as short Ax, Bx, Cx, Dx
    dim shared as short XXmouse_si, YYmouse_si, Lb_si, Rb_si, XMouse_si, Ymouse_si
    dim shared as short jsx_si, jsy_si, jsa_si, jsb_si
    dim shared as short llb_si, rrb_si, l1b_si, r1b_si
    dim shared as string action_str, AA_str
    dim shared as single st_sf
    dim shared as short tempx_si, tempy_si
    dim shared as short evadeattack, attackblocked

	dim shared as short hp_cur_si, str_cur_si, ess_cur_si
	dim shared as short hp_use_si, str_use_si, ess_use_si
    dim shared as short hp_dmg_si, str_dmg_si, ess_dmg_si
    dim shared as string hp_dmg_bonus_str, str_dmg_bonus_str, ess_dmg_bonus_str
    dim shared as short hp_dmg_bonus_si, str_dmg_bonus_si, ess_dmg_bonus_si

    dim shared as short entity_count, entity_index
    dim shared as string attk_pict_str, attk_name_str
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
    dim shared as short r1_si, r2_si, r3_si, r4_si, r5_si
    dim shared as integer exitcommand3, exitcommand2, exitcommand, restart_roe
    dim shared as single tempx1_sf, tempy1_sf, tempx2_sf, tempy2_sf
    dim shared as short t_sf, R_si, tt_si
    dim shared as string here_str, hasgotit_str

    dim shared as integer clv_buffer_portal=2, clv_buffer_status=3, clv_buffer_playbyplay=4
    dim shared as integer clv_buffer_expshop=5, clv_buffer_merchant=6, clv_buffer_menu=7
    dim shared as integer clv_buffer_title=8, clv_buffer_help=9, clv_buffer_cursor=10
    dim shared as integer clv_buffer_splash=11, clv_buffer_bar=12, clv_buffer_progress=13
    