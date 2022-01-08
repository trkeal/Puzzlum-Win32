#define puzzlum_map_viewer_lib

'puzzlum-map-viewer.bas
'Puzzlum - "Map Viewer"
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

	#inclib "puzzlum-common"
	
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

	#include once ".\inc\puzzlum-entity-loader.bi"
	
	'#include once ".\inc\puzzlum-map-viewer.bi"

	declare sub map_viewer ()

	declare sub map_data ( Tx_si as integer = 1, Ty_si as integer = 1 )
