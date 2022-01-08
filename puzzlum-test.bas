#define puzzlum_test_lib

'puzzlum-test.bas
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
	#inclib "puzzlum-common"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once ".\inc\central-debug.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\puzzlum-outro.bi"

	#include once ".\inc\CLV.bi"

	#include once ".\inc\puzzlum-subs.bi"
	#include once ".\inc\puzzlum-vars.bi"

	#include once ".\inc\puzzlum-maps.bi"

function vga_test_1() as fb.image ptr
	
	dim as integer x = 0, y = 0 
	dim as integer xx = 0, yy = 0 

	dim as fb.image ptr vga_image
	dim as fb.image ptr vga_stretch
	
	report_caption "VGA Test: 1 of 2 ( Palette )"
	
	vga_image = imagecreate( 16 shl 3, 16 shl 3 )
		
	for y = 0 to 15 step 1
	for x = 0 to 15 step 1
				
		line vga_image, ( x shl 3, y shl 3)-( ( x shl 3 ) or 7, (y shl 3) or 7),VGA_Table( x or ( y shl 4 ) ), bf
		
	next x
	next y
	
	vga_test_1 = vga_image
	
end function

sub vga_test_2()
	
	report_caption "VGA Test: 2 of 2 ( Stretching )"

	dim as fb.image ptr vga_stretch = imagecreate( 256, 256 )
	dim as fb.image ptr vga_image = vga_test_1()
	
	stretch vga_image, vga_stretch
	
	put (0,16), vga_stretch, pset

	imagedestroy vga_image
	imagedestroy vga_stretch
	
end sub
