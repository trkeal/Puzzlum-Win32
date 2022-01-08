#define puzzlum_win32_lib

'puzzlum-win32.bas
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

#include once ".\inc\puzzlum-win32.bi"

#inclib "VGA_Table"

#include once "crt\math.bi"
'#inclib "Const"
#inclib "Names"

#include once ".\inc\FBImage.bi"
#include once ".\inc\fbpngs.bi"
#include once "fbgfx.bi"

#inclib "z"
#include once ".\inc\CLV.bi"

#include once ".\inc\puzzlum-vars.bi"
#include once ".\inc\puzzlum-subs.bi"

#include once ".\inc\puzzlum-maps.bi"

#include once ".\inc\puzzlum-profile-manip.bi"


'CMD_Debug_Enabled
central_call "roe" : outro
