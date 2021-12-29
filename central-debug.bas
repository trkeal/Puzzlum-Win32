'Central Debug.bas
'"Central Debug" realtime jump tracker FreeBASIC source code
'
'Created 2021 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#define central_debug_lib
 
'#include once ".\inc\names.bi"
#include once ".\inc\const.bi"

#include once "file.bi"
#include once ".\inc\Names.bi"

#include once ".\inc\central-debug.bi"

'dim shared as string bundle_filename
'bundle_filename = ".\gamedata\Bundle.dat"

'load_names_from_file( bundle_filename, Bundle_Table() )

'dim shared as string debug_filename
'debug_filename = sync_names( "debug/filename", Bundle_Table() )

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
	
sub central_debug ( target as string =  "" )

	#ifndef __central_debug__
		exit sub
	#endif

	Central_Count += 1
	
	redim preserve Central_History( 0 to Central_Count )
	Central_History( Central_Count ) = target
	
	Central_History( 0 ) = command$( 0 )
	
	dim as integer filemode = freefile
	
	dim as string buffer = string$( 0, 0 )
		
	if open( debug_filename for binary as #filemode ) then
		close #filemode
		exit sub
	else
	
		dim as integer index = 0
	
		for index = 0 to Central_Count step 1
			buffer += "/" + Central_History( index )
		next index
		
		buffer += string$( 1, 32 ) + "( " + ltrim$( str$( Central_Count ) ) + " deep )"
		
		buffer += crlf
	
		put #filemode, lof( filemode ) + 1, buffer
	
		close #filemode
	
	end if
	
end sub

sub central_close_out ( target as string =  "" )
	
	Central_Count -= 1	
	redim preserve Central_History( 0 to Central_Count )
	
end sub
