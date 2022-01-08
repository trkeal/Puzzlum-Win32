
'puzzlum-loaders.bi
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
	
	#ifndef puzzlum_loaders_lib
	#inclib "puzzlum-loaders"
	#endif

	#inclib "puzzlum-common"

	#include once ".\inc\VGA_Table.bi"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\puzzlum-outro.bi"

	#include once ".\inc\CLV.bi"

	#include once ".\inc\central-debug.bi"

	#include once ".\inc\puzzlum-subs.bi"
	#include once ".\inc\puzzlum-vars.bi"
	#include once ".\inc\puzzlum-maps.bi"

	#include once ".\inc\puzzlum-test.bi"

	#include once ".\inc\puzzlum-profile-manip.bi"

declare sub load_bundle()

declare sub load_levels()

declare sub load_rose()

declare sub report_caption( caption as string = "%%" )

declare sub font_loader()

declare sub central_loader( target as string = "" )

declare sub loader()

declare sub load_display()

declare sub load_art()

declare sub load_data()

declare sub load_input()

declare sub load_afflictions()
