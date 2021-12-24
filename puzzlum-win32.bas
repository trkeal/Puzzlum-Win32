#define puzzlum_win32_lib

'puzzlum-win32.bas
'
'Puzzlum is Copyright (C) 1997, 2010, 2021 Timothy Robert Keal
'Released by Timothy Robert Keal under the Lesser Gnu Public License "2.2" ( Attribution, Education / Charity )
'
'http://puzzlum.net/
'mailto:trkeal@gmail.com
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

'=====

dim shared as string debug_filename
debug_filename = ".\win32\central.log"
kill debug_filename
dim as integer filemode = freefile
dim as string buffer
buffer = "===[ " + debug_filename + " ]===" + crlf
if open( debug_filename for binary as #filemode ) then
	close #filemode
else
	put #filemode, lof( filemode ) + 1, buffer
	close #filemode
end if

#include once ".\inc\puzzlum-win32.bi"

#include once ".\inc\VGA_Table.bi"

#include once "crt\math.bi"
#include once ".\inc\Const.bi"
#include once ".\inc\Names.bi"

#include once ".\inc\FBImage.bi"
#include once ".\inc\fbpngs.bi"
#include once "fbgfx.bi"

#inclib "z"
#include once ".\inc\CLV.bi"

#include once ".\inc\puzzlum-vars.bi"
#include once ".\inc\puzzlum-subs.bi"
	
central "roe" : end


