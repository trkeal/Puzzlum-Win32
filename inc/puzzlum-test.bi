
'puzzlum-test.bi
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
	
	#ifndef puzzlum_test_lib
	#inclib "puzzlum-test"
	#endif

	#include once ".\inc\puzzlum-common.bi"

	#include once ".\inc\VGA_Table.bi"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once ".\inc\central-debug.bi"

	'redim shared as names_type CMD_Table( any )
	'debug_status CMD_Table()

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\puzzlum-outro.bi"

	#include once ".\inc\CLV.bi"

	#include once ".\inc\puzzlum-subs.bi"
	#include once ".\inc\puzzlum-vars.bi"
	#include once ".\inc\puzzlum-maps.bi"

	'#include once ".\puzzlum-vars.bi"


	declare function vga_test_1() as fb.image ptr

	declare sub vga_test_2()
