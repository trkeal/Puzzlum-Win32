'Central Debug.bi
'"Central Debug" realtime jump tracker FreeBASIC source code
'
'Created 2021 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#ifndef central_debug_lib 
#inclib "central-debug"
#endif

'#include once ".\inc\names.bi"
#include once ".\inc\const.bi"

#include once "file.bi"

'''#include once ".\inc\central debug.bi"

	dim shared as integer Central_Count = 0
	
	redim shared as string Central_History( any )	
	
	kill ".\debug\central.log"
	
	declare sub central_debug ( target as string =  "" )
