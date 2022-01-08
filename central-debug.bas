'Central Debug.bas
'"Central Debug" realtime jump tracker FreeBASIC source code
'
'Created 2021 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#define central_debug_lib
 
'#include once ".\inc\names.bi"
#include once ".\inc\const.bi"

#include once "file.bi"
#include once ".\inc\Names.bi"

#include once ".\inc\puzzlum-subs.bi"

#include once ".\inc\puzzlum-profile-manip.bi"

#include once ".\inc\puzzlum-main.bi"

#include once ".\inc\puzzlum-loaders.bi"

#include once ".\inc\central-debug.bi"

dim shared as string debug_filename
debug_filename = ".\Win32\central.log"

sub central_debug ( target as string =  "" )

	if not( Debug_Enabled ) then
		exit sub
	end if

	Central_Count += 1
	
	redim preserve Central_History( 0 to Central_Count )
	Central_History( Central_Count ) = target
	
	Central_History( 0 ) = command$( 0 )
	
	dim as integer filemode = freefile
	
	dim as string Buffer = string$( 0, 0 )
	
	if open( debug_filename for binary as #filemode ) then
		close #filemode
		exit sub
	else
	
		dim as integer Index = 0
	
		for Index = 0 to Central_Count step 1
			Buffer += "/" + Central_History( Index )
		next Index
		
		Buffer += string$( 1, 32 ) + "( " + As_String( Central_Count ) + " deep )"
		
		Buffer += crlf
	
		put #filemode, lof( filemode ) + 1, Buffer
	
		close #filemode
	
	end if
	
end sub

sub central_close_out ( target as string =  "" )
	
	if not( Debug_Enabled ) then
		exit sub
	end if
	
	Central_Count -= 1	
	redim preserve Central_History( 0 to Central_Count )
	
end sub

sub central_call overload( target as string = "" )	
	
	central_debug target

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
		battle 'updated
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
	case else
		central_loader target
	end select

	Central_Close_Out target

end sub

sub central overload ( target as string = "", clv_Buffer() as fb.image ptr, Index as integer)

	
	
	central_debug target
	
	select case target
	case "title"
		ln_title clv_Buffer(), Index
	case "showtext"
		ln_showtext clv_Buffer(), Index
	end select
	
	Central_Close_Out target

end sub

sub central overload ( target as string = "", clv_Buffer() as fb.image ptr, Index as integer, Row as short, Col as short)

	
	
	central_debug target

	select case target
	case "stts"
		ln_stts clv_Buffer(), Index, Row, Col
	end select
	
	Central_Close_Out target

end sub

sub central overload ( target as string = "", clv_Buffer() as fb.image ptr, Index as integer, Caption as string, _
        byref Cur as integer, Max as integer, _
        X1 as integer, Y1 as integer, X2 as integer, Y2 as integer, _
        Switch as integer, ARGB as uinteger, Increment as integer, Progress as string, _
        byref LastSec as double, DelaySec as double)
	
	
	
	central_debug target

	select case target
	case "progress_put"
		progress_put clv_Buffer(), Index, Caption, _
			Cur, Max, _
			X1, Y1, X2, Y2, _
			Switch, ARGB, Increment, Progress, _
			LastSec, DelaySec
	end select
	
	Central_Close_Out target

end sub

sub central overload ( target as string = "", clv_Buffer() as fb.image ptr)

	
	
	central_debug target

	select case target
	case "clv_Buffer_stack"
		clv_Buffer_stack clv_Buffer()
	end select
	
	Central_Close_Out target

end sub

sub central overload ( target as string = "", Row as short, Col as short)

	
	
	central_debug target

	select case target
	case "frame_inventory"
		frame_inventory Row, Col
	case "frame_title"
		frame_title Row, Col
	end select
	
	Central_Close_Out target

end sub

sub central overload ( target as string = "", clv_Buffer() as fb.image ptr, Index as integer, X1 as short, Y1 as short, X2 as short, Y2 as short, C1 as short,C2 as short)

	
	
	central_debug target

	select case target
	case "frame_put"
		frame_put clv_Buffer(), Index, X1, Y1, X2, Y2, C1, C2
	end select
	
	Central_Close_Out target

end sub

sub central overload ( target as string = "", clv_glyph() as integer)

	
	
	central_debug target

	select case target
	case "clv_glyph_ini"
		clv_glyph_ini clv_glyph()
	end select
	
	Central_Close_Out target

end sub

sub central overload ( target as string = "", Index as integer, Src as integer, Row as short, Col as short, W as short, H as short, byref Text_str as string)

	
	
	central_debug target

	select case target
	case "input_text"
		input_text Index, Src, Row, Col, W, H, Text_str
	end select
	
	Central_Close_Out target

end sub

sub central overload ( target as string = "", db_names() as names_type)

	
	
	central_debug target

	select case target
	case "Map_Load"
		Map_Load db_names()
	case "Map_Save"
		Map_Save db_names()
	end select
	
	Central_Close_Out target

end sub

sub central overload ( target as string = "", attk as string = "%%" )

	central_debug target

	select case not( 0 )
	case attk = "%%"
		Central_Close_Out target
		exit sub	
	end select

	select case target
	case "attk_table"
		ln_attk_table attk
	end select
	
	Central_Close_Out target

end sub

sub central_loader( target as string = "" )
	
	central_debug target
	
	select case target	
	case "load_display"
		load_display
	case "load_bundle"
		load_bundle
	case "load_input"
		load_input
	case "vga_test"
		vga_test_2
	case "load_rose"
		load_rose
	case "load_levels"
		load_levels
	case "load_art"
		load_art
	case "load_data"
		load_data
	case "splash"
		splash
	case "load_afflictions"
		 load_afflictions
	end select
	
	Central_Close_Out target
	
end sub

sub loader()
	
	central_debug "loader"

	redim as names_type Loader_Table( any )
	dim as integer Index = 0

	load_names_from_file( ".\gamedata\Loader.dat", Loader_Table() )
	
	for Index = 1 to val(sync_names("loader/count", Loader_Table())) step 1
		cls
		
		central_loader sync_names( "loader/" + As_String( Index ), Loader_Table())
		
		flip
		c_str = wait_key()
	
	next Index
	
	Central_Close_Out "loader"

end sub
