
'Central Overload 1.bas
'Central Redirect Module ( 1 of 2 )
'
'Created 2021 by T.R.Keal
'Released under the Gnu Public License "2.2"
'( Attribution, Education / Charity )
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#define central_override_1_lib

sub central overload( target as string = "" )
	select case target
	case "roe"
		ln_roe
	case "startup"
		ln_startup
	case "starttitle"
		ln_starttitle
	case "starthelp"
		ln_starthelp
	case "main"
		ln_main
	case "command"
		ln_command
	case "swapdata"
		ln_swapdata
	case "attack"
		ln_attack
	case "battle"
		ln_battle
	case "attkbite"
		ln_attkbite
	case "attkpnch"
		ln_attkpnch
	case "attkwstf"
		ln_attkwstf
	case "attkkick"
		ln_attkkick
	case "attkvnom"
		ln_attkvnom
	case "attkdggr"
		ln_attkdggr
	case "attkpike"
		ln_attkpike
	case "attkburn"
		ln_attkburn
	case "attkfire"
		ln_attkfire
	case "attkweb"
		ln_attkweb
	case "attktngl"
		ln_attktngl
	case "attklash"
		ln_attklash
	case "usecure"
		ln_usecure
	case "useslep"
		ln_useslep
	case "victory"
		ln_victory
	case "pillage"
		ln_pillage
	case "paylevelup"
		ln_paylevelup
	case "merchant"
		ln_merchant
	case "abilitygain"
		ln_abilitygain
	case "levelup"
		ln_levelup
	case "gain"
		ln_gain
	case "getit"
		ln_getit
	case "attackusing"
		ln_attackusing
	case "battleattack"
		ln_battleattack
	case "defeated"
		ln_defeated
	case "portal"
		ln_portal
	case "status"
		ln_status
	case "framstts"
		ln_framstts
	case "framsttsitms"
		ln_framsttsitms
	case "sttsgpic"
		ln_sttsgpic
	case "sttsitms"
		ln_sttsitms
	case "move"
		ln_move
	case "wingmove"
		ln_wingmove
	case "firemove"
		ln_firemove
	case "webmove"
		ln_webmove
	case "castfire"
		ln_castfire
	case "castdust"
		ln_castdust
	case "castweb"
		ln_castweb
	case "castspdr"
		ln_castspdr
	case "castccts"
		ln_castccts
	case "castdtby"
		ln_castdtby
	case "gone"
		ln_gone
	case "autolevelup"
		ln_autolevelup
	case "statgain"
		ln_statgain
	case "statmax"
		ln_statmax
	case "nextaction"
		ln_nextaction
	case "newaction"
		ln_newaction
	case "randomaction"
		ln_randomaction
	case "getaction"
		ln_getaction
	case "putaction"
		ln_putaction
	case "tempget"
		ln_tempget
	case "tempput"
		ln_tempput
	case "inbounds"
		ln_inbounds
	case "haveit"
		ln_haveit
	case "hasit"
		ln_hasit
	case "havehadit"
		ln_havehadit
	case "hashadit"
		ln_hashadit
	case "havegotit"
		ln_havegotit
	case "hasgotit"
		ln_hasgotit
	case "winexp"
		ln_winexp
	case "windggr"
		ln_windggr
	case "winpike"
		ln_winpike
	case "wingrpl"
		ln_wingrpl
	case "winseed"
		ln_winseed
	case "winit"
		ln_winit
	case "am"
		ln_am
	case "are"
		ln_are
	case "here"
		ln_here
	case "there"
		ln_there
	case "blankcheck"
		ln_blankcheck
	case "okbutton"
		ln_okbutton
	case "wwait"
		ln_wwait
	case "buttonwait"
		ln_buttonwait
	case "commandwait"
		ln_commandwait
	case "frameput"
		ln_frameput
	case "avgframe"
		ln_avgframe
	case "screenset"
		ln_screenset
	case "findcrsr"
		ln_findcrsr
	case "prflblnk"
		ln_prflblnk
	case "prflset"
		ln_prflset
	case "prflmake"
		ln_prflmake
	case "actncure"
		ln_actncure
	case "actnbite"
		ln_actnbite
	case "actnpnch"
		ln_actnpnch
	case "actnkick"
		ln_actnkick
	case "actndggr"
		ln_actndggr
	case "actnpike"
		ln_actnpike
	case "actnvnom"
		ln_actnvnom
	case "actnfire"
		ln_actnfire
	case "actndust"
		ln_actndust
	case "actnweb"
		ln_actnweb
	case "actnspdr"
		ln_actnspdr
	case "actnccts"
		ln_actnccts
	case "actndtby"
		ln_actndtby
	case "actnmove"
		ln_actnmove
	case "actnwing"
		ln_actnwing
	case "actnwstf"
		ln_actnwstf
	case "actnispt"
		ln_actnispt
	case "actnfiremove"
		ln_actnfiremove
	case "actndustmove"
		ln_actndustmove
	case "actnwebmove"
		ln_actnwebmove
	case "actngrpl"
		ln_actngrpl
	case "actnrapl"
		ln_actnrapl
	case "crtnimp"
		ln_crtnimp
	case "crtnfire"
		ln_crtnfire
	case "crtndust"
		ln_crtndust
	case "crtnshkt"
		ln_crtnshkt
	case "crtnemgd"
		ln_crtnemgd
	case "crtnspdr"
		ln_crtnspdr
	case "crtnweb"
		ln_crtnweb
	case "crtndtby"
		ln_crtndtby
	case "crtngrml"
		ln_crtngrml
	case "crtnpndx"
		ln_crtnpndx
	case "crtnccts"
		ln_crtnccts
	case "crtnbldr"
		ln_crtnbldr
	end select
end sub


