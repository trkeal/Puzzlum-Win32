
'Line_Handle.bas
'Puzzlum Task Manager
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
	
	#include once ".\inc\puzzlum-task.bi"
	
	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\puzzlum-vars.bi"
	#include once ".\inc\puzzlum-subs.bi"
	
sub LnCall overload( Line_Handle As String = "%%" )    
	select case Line_Handle

	case "ln_roe"
		ln_roe
    case "ln_startup"
		ln_startup
    case "ln_starttitle"
		ln_starttitle
    case "ln_starthelp"
		ln_starthelp
    case "ln_main"
		ln_main

    case "ln_command"
		ln_command
    case "ln_command2"
		ln_command2
    case "ln_command3"
		ln_command3

    case "ln_swapdata"
		ln_swapdata

    case "ln_attack"
		ln_attack
    case "ln_battle"
		ln_battle
    
	case "ln_attkbite"
		ln_attkbite
    case "ln_attkpnch"
		ln_attkpnch
    case "ln_attkwstf"
		ln_attkwstf
    case "ln_attkkick"
		ln_attkkick
    case "ln_attkvnom"
		ln_attkvnom
    case "ln_attkdggr"
		ln_attkdggr
    case "ln_attkpike"
		ln_attkpike
    case "ln_attkburn"
		ln_attkburn
    case "ln_attkfire"
		ln_attkfire
    case "ln_attkweb"
		ln_attkweb
    case "ln_attktngl"
		ln_attktngl
    case "ln_attklash"
		ln_attklash
    	
	case "ln_usecure"
		ln_usecure
   	case "ln_attkslep"
		ln_attkslep
    case "ln_victory"
		ln_victory
    case "ln_pillage"
		ln_pillage
    case "ln_paylevelup"
		ln_paylevelup
    'case "ln_reshow1"
		'ln_reshow1
    'case "ln_wwait0"
		'ln_wwait0
    case "ln_merchant"
		ln_merchant
    'case "ln_wwait1"
		'ln_wwait1
    case "ln_talk0001"
		ln_talk0001
    'case "ln_reshow3"
		'ln_reshow3
    'case "ln_wwait2"
		'ln_wwait2
    case "ln_abilitygain"
		ln_abilitygain
    case "ln_levelup"
		ln_levelup
    case "ln_gain"
		ln_gain
    case "ln_getit"
		ln_getit
    case "ln_attackusing"
		ln_attackusing
    case "ln_battleattack"
		ln_battleattack
    case "ln_defeated"
		ln_defeated
    case "ln_portal"
		ln_portal
    case "ln_status"
		ln_status
    case "ln_framstts"
		ln_framstts
    case "ln_framsttsitms"
		ln_framsttsitms
    case "ln_sttsgpic"
		ln_sttsgpic
    case "ln_sttsitms"
		ln_sttsitms
    case "ln_names"
		ln_names
    case "ln_move"
		ln_move
    case "ln_wingmove"
		ln_wingmove
    case "ln_firemove"
		ln_firemove
    case "ln_webmove"
		ln_webmove
    case "ln_castfire"
		ln_castfire
    case "ln_castdust"
		ln_castdust
    case "ln_castweb"
		ln_castweb
    case "ln_castspdr"
		ln_castspdr
    case "ln_castccts"
		ln_castccts
    case "ln_castdtby"
		ln_castdtby
    case "ln_gone"
		ln_gone
    case "ln_delete2"
		ln_delete2
    case "ln_autolevelup"
		ln_autolevelup
    case "ln_statgain"
		ln_statgain
    case "ln_statmax"
		ln_statmax
    case "ln_nextaction"
		ln_nextaction
    case "ln_newaction"
		ln_newaction
    case "ln_randomaction"
		ln_randomaction
    case "ln_getaction"
		ln_getaction
    case "ln_putaction"
		ln_putaction
    case "ln_tempget"
		ln_tempget
    case "ln_tempput"
		ln_tempput
    case "ln_inbounds"
		ln_inbounds
    case "ln_haveit"
		ln_haveit
    case "ln_hasit"
		ln_hasit
    case "ln_havehadit"
		ln_havehadit
    case "ln_hashadit"
		ln_hashadit
    case "ln_havegotit"
		ln_havegotit
    case "ln_hasgotit"
		ln_hasgotit
    case "ln_winexp"
		ln_winexp
    case "ln_windggr"
		ln_windggr
    case "ln_winpike"
		ln_winpike
    case "ln_wingrpl"
		ln_wingrpl
    case "ln_winseed"
		ln_winseed
    case "ln_winkey1"
		ln_winkey1
    case "ln_winkey2"
		ln_winkey2
    case "ln_winit"
		ln_winit
    case "ln_am"
		ln_am
    case "ln_are"
		ln_are
    case "ln_here"
		ln_here
    case "ln_there"
		ln_there
    case "ln_blankcheck"
		ln_blankcheck
    case "ln_okbutton"
		ln_okbutton
    case "ln_wwait"
		ln_wwait
    case "ln_buttonwait"
		ln_buttonwait
    case "ln_commandwait"
		ln_commandwait
    case "ln_frameput"
		ln_frameput
    case "ln_avgframe"
		ln_avgframe
    case "ln_screenset"
		ln_screenset
    case "ln_findcrsr"
		ln_findcrsr
    case "ln_prflblnk"
		ln_prflblnk
    case "ln_prflset"
		ln_prflset
    case "ln_prflmake"
		ln_prflmake
    
	case "ln_actncure"
		ln_actncure
    case "ln_actnbite"
		ln_actnbite
    case "ln_actnpnch"
		ln_actnpnch
    case "ln_actnkick"
		ln_actnkick
    case "ln_actndggr"
		ln_actndggr
    case "ln_actnpike"
		ln_actnpike
    case "ln_actnvnom"
		ln_actnvnom
    case "ln_actnfire"
		ln_actnfire
    case "ln_actndust"
		ln_actndust
    case "ln_actnweb"
		ln_actnweb
    case "ln_actnspdr"
		ln_actnspdr
    case "ln_actnccts"
		ln_actnccts
    case "ln_actndtby"
		ln_actndtby
    case "ln_actnmove"
		ln_actnmove
    case "ln_actnwing"
		ln_actnwing
    case "ln_actnwstf"
		ln_actnwstf
    case "ln_actnkey1"
		ln_actnkey1
    case "ln_actnkey2"
		ln_actnkey2
    case "ln_actnispt"
		ln_actnispt

    case "ln_actnfiremove"
		ln_actnfiremove
    case "ln_actndustmove"
		ln_actndustmove
    case "ln_actnwebmove"
		ln_actnwebmove

    case "ln_actngrpl"
		ln_actngrpl
    case "ln_actnrapl"
		ln_actnrapl
    
	case "ln_crtnimp"
		ln_crtnimp
    case "ln_crtnfire"
		ln_crtnfire
    case "ln_crtndust"
		ln_crtndust
    case "ln_crtnshkt"
		ln_crtnshkt
    case "ln_crtnemgd"
		ln_crtnemgd
    case "ln_crtnspdr"
		ln_crtnspdr
    case "ln_crtnweb"
		ln_crtnweb
    case "ln_crtndtby"
		ln_crtndtby
    case "ln_crtngrml"
		ln_crtngrml
    case "ln_crtnpndx"
		ln_crtnpndx
    case "ln_crtnccts"
		ln_crtnccts
    case "ln_crtnbldr"
		ln_crtnbldr
	end select

end sub

sub LnCall overload( Line_Handle as string = "%%", clv_buffer( any ) as fb.image ptr, Index as integer = 0, Row as integer = 0, Col as integer = 0)

	select case Line_Handle
	case "ln_title"
		ln_title (clv_buffer(), Index)
	case "ln_stts"
		ln_stts (clv_buffer(), Index, Row, Col)
	case "ln_showtext"
		ln_showtext (clv_buffer(), Index)
	end select

end sub

sub LnCall overload( Line_Handle as string = "%%", filename as string = "", Save_Table( any ) as names_type )

	select case Line_Handle
	case "savegame_save"
		savegame_save( filename, Save_Table())
	case "savegame_load"
		savegame_load( filename, Save_Table())
	case "attk_table"
		dim as string attk = filename
		ln_attk_table ( attk, Attack_Table())
	end select

end sub

function LnCall overload( Line_Handle as string = "%%",  KeyPress as string = "", Comparison as string = "", Input_Table( any ) as names_type ) as integer

	select case Line_Handle
	case "Compare_Key"
		LnCall = Compare_Key( KeyPress, Comparison, Input_Table())
	case else
		LnCall = 0
	end select

end function

function LnCall overload( Line_Handle as string = "%%",  Tx_si as integer = 0, Ty_si as integer = 0 ) as integer

	select case Line_Handle
	case "Compare_Key"
		LnCall = Rose_Calc( Tx_si, Ty_si )
	case else
		LnCall = 0
	end select

end function

