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
		
		profile_manip "blnk"		
		Entity_Action		
		profile_manip "set"
	
	case "spdr"
		profile_manip "blnk"
		Entity_Action

		'load from table
		
		SELECT CASE mapname_str
		CASE "0001"
			IF prflidty_sf = 1 THEN
				prflactn_str = prflactn_str + "vnom"
				prflactnct_str = prflactnct_str+mkl(1)
			END IF
		END SELECT
		
		profile_manip "set"
		
	case "wall"
		profile_manip "blnk"
		
		Entity_Action

		'load from table
		
		profile_manip "set"
	case "web_"
		profile_manip "blnk"
		
		'load from table

		Entity_Action

		'load from table
		
		profile_manip "set"
	case "grml"
		profile_manip "blnk"
		
		Entity_Action

		'load from table

		profile_manip "set"
	case "pndx"
		profile_manip "blnk"
		
		Entity_Action

		'load from table
		
		profile_manip "set"
	case "dtby"
		profile_manip "blnk"
		
		Entity_Action

		'load from table
		
		profile_manip "set"
	case "shkt"
		profile_manip "blnk"
		
		Entity_Action
		
		'load from table
		
		profile_manip "set"
	case "emgd"
		profile_manip "blnk"
		
		Entity_Action

		'load from table
				
		'load from table
		
		profile_manip "set"
	case "door"
		profile_manip "blnk"

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
		
		profile_manip "set"
	case "chst"
		profile_manip "blnk"
		
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
				
		profile_manip "set"
	case "imp_"
		profile_manip "blnk"

		Entity_Action

		'load from table
		
		profile_manip "set"
	case "bldr"
		profile_manip "blnk"
		
		Entity_Action
		
		'load from table
		
		profile_manip "set"
	end select
end sub
