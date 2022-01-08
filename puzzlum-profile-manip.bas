#define puzzlum_profile_manip_lib

'puzzlum-win32.bas
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
	
	#ifndef puzzlum_profile_manip_lib
	#inclib "puzzlum-profile-manip"
	#endif
	
	#inclib "VGA_Table"
	
	#include once "crt\math.bi"
	'#inclib "Const"
	#inclib "Names"
	
	#include once ".\inc\FBImage.bi"
	#include once ".\inc\fbpngs.bi"
	#include once "fbgfx.bi"
	
	#inclib "z"
	#include once ".\inc\CLV.bi"
	
	#include once ".\inc\puzzlum-vars.bi"
	#include once ".\inc\puzzlum-subs.bi"
	
	#include once ".\inc\puzzlum-maps.bi"
	
	#include once ".\inc\puzzlum-profile-manip.bi"

sub ln_prflblnk()
    prflidty_str = ""
    prflactn_str = ""
    prflactnct_str=""
    prflgpic_str = "____"
    prflcmnd_str = MKL(0) + "____" + MKL(0)
    prflgpicactn_str = "____" + "____"
    prflidty_sf = 0
    prflhpcur_sf = 0
    prflstrcur_sf = 0
    prflesscur_sf = 0
    prflstrspd_sf = 0
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
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 1) = prflhpcur_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 2) = prflstrcur_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 3) = prflesscur_sf
    G_dfa(Rose_Calc( Tx_si, Ty_si ), 4) = prflstrspd_sf
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
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 1) = prflhpcur_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 2) = prflstrcur_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 3) = prflesscur_sf
    G_dfa(Tx_si + d_sia(d_si, 1) * dis_si + (Ty_si + d_sia(d_si, 2) * dis_si - 1) * AA_si, 4) = prflstrspd_sf
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
