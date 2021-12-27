
'puzzlum-maps.bi
'Puzzlum - "Names Table" Maps loader
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

	#ifndef puzzlum_maps_lib
	#inclib "puzzlum-maps"
	#endif
	
	#include once ".\inc\clv.bi"

	#include once ".\inc\VGA_Table.bi"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"
	#include once ".\inc\central-debug.bi"

	#include once ".\inc\VGA_Table.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\CLV.bi"

	'#include once ".\inc\puzzlum-subs.bi"
	'#include once ".\inc\puzzlum-vars.bi"
	
	declare sub map_loader ( map_filename as string = "%%" )
