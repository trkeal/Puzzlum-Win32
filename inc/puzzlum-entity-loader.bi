
'puzzlum-entity_loader.bi
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

	#ifndef puzzlum_entity_loader_lib
	#inclib "puzzlum-entity-loader"
	#endif

	#inclib "puzzlum-common"
	
	#include once ".\inc\clv.bi"

	#inclib "VGA_Table"

	#include once "crt\math.bi"
	
	'#inclib "Const"
	
	#inclib "Names"
	#include once ".\inc\central-debug.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\CLV.bi"


declare sub entityblnk()

declare sub entityspdr()

declare sub entitywall()

declare sub entityweb()

declare sub entitygrml()

declare sub entitypndx()

declare sub entitydtby()

declare sub entityshkt()

declare sub entityemgd()

declare sub entitydoor()

declare sub entityimp()

declare sub entitychst()

declare sub entitybldr()

declare sub Entity_Loader ()
