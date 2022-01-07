#define puzzlum_entity_loader_lib

'puzzlum-entity-loader.bas
'Puzzlum - Entity Loader
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



sub entityblnk ()

end sub

sub entityspdr ()

end sub

sub entitywall ()

end sub

sub entityweb ()

end sub

sub entitygrml ()

end sub

sub entitypndx ()

end sub

sub entitydtby ()

end sub

sub entityshkt ()

end sub

sub entityemgd ()

end sub

sub entitydoor ()

end sub

sub entityimp ()

end sub

sub entitychst ()

end sub

sub entitybldr ()

end sub



sub Entity_Loader ()
		
	select case rfg_str
	case "____"
		
		central_call "prflblnk"		
		Entity_Action		
		central_call "prflset"
	
	case "spdr"
		central_call "prflblnk"
		Entity_Action

		'load from table
		
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

		'load from table
		
		central_call "prflset"
	case "web_"
		central_call "prflblnk"
		
		'load from table

		Entity_Action

		'load from table
		
		central_call "prflset"
	case "grml"
		central_call "prflblnk"
		
		Entity_Action

		'load from table

		central_call "prflset"
	case "pndx"
		central_call "prflblnk"
		
		Entity_Action

		'load from table
		
		central_call "prflset"
	case "dtby"
		central_call "prflblnk"
		
		Entity_Action

		'load from table
		
		central_call "prflset"
	case "shkt"
		central_call "prflblnk"
		
		Entity_Action
		
		'load from table
		
		central_call "prflset"
	case "emgd"
		central_call "prflblnk"
		
		Entity_Action

		'load from table
				
		'load from table
		
		central_call "prflset"
	case "door"
		central_call "prflblnk"

		Entity_Action

		'load from table
		select case left$( rid_str, 3 )
		case "loc"
			select case valint( right$( rid_str, 1 ) )
			case 1 to 3
				prflactn_str = rid_str
				prflactnct_str = mkl(1)
			end select
		end select

		'load from table
		
		central_call "prflset"
	case "chst"
		central_call "prflblnk"
		
		Entity_Action

		'load from table
		
		select case left$( rid_str, 3 )
		case "loc"
			select case valint( right$( rid_str, 1 ) )
			case 1 to 3
				prflactn_str = rid_str
				prflactnct_str = mkl(1)
			end select
		end select
				
		central_call "prflset"
	case "imp_"
		central_call "prflblnk"

		Entity_Action

		'load from table
		
		central_call "prflset"
	case "bldr"
		central_call "prflblnk"
		
		Entity_Action
		
		'load from table
		
		central_call "prflset"
	end select
end sub
