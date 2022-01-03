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

redim shared as names_type CMD_Table( any )

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

sub debug_status( CMD_Table( any ) as names_type )

	redim as string CMD_Rip( any )

	dump_commands CMD_Rip()
	
	dump_array_to_table CMD_Rip(), CMD_Table()
	
	cmd_vars CMD_Table()

end sub

sub dump_commands( CMD_Rip( any ) as string )
		
	erase CMD_Rip
	
	dim as string cmd_temp = string$( 0, 0 )
	
	dim as integer index = 0
	
	do
		cmd_temp = command$( index )
		
		if len( cmd_temp ) = 0 then exit do
		
		redim preserve CMD_Rip( 0 to index )
		
		CMD_Rip( index ) = cmd_temp
		
		index += 1
	loop

end sub

sub dump_array_to_table( CMD_Rip( any ) as string, CMD_Table( any ) as names_type )

	dim as string cmd_temp = string$( 0, 0 )
	dim as string buffer = string$( 0, 0 )
	dim as string cmd_i = string$( 0, 0 )

	dim as integer index = 0

	buffer = "cmd/0" + eq + CMD_Rip( 0 )

	for index = lbound( CMD_Rip, 1 ) + 1 to ubound( CMD_Rip, 1 ) step 1 
				
		buffer += crlf + "cmd/" + As_String( index ) + eq + CMD_Rip( index )
		
	next index
	
	buffer = "cmd/count" + eq + As_String( ubound( CMD_Rip, 1 ) ) + crlf + buffer
	
	load_names_from_buffer buffer, CMD_Table()
	
	kill ".\win32\cmd.log"
	
	save_names_to_file ".\win32\cmd.log", CMD_Table()
	
end sub

sub cmd_vars( CMD_Table( any ) as names_type )

	dim as integer index = 1
	dim as string cmd_i = string$( 0, 0 )
	
	do
		if index > val( sync_names( "cmd/count", CMD_Table() ) ) then exit do
		
		cmd_i = sync_names( "cmd/" + As_String( index ), CMD_Table() )
		
		if cmd_i = "-debug" then
			Debug_Enabled = not( 0 )
			exit do
		end if
		
		index += 1
	loop
end sub

sub central_debug ( target as string =  "" )

	if not( Debug_Enabled ) then
		exit sub
	end if

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
		
		buffer += string$( 1, 32 ) + "( " + As_String( Central_Count ) + " deep )"
		
		buffer += crlf
	
		put #filemode, lof( filemode ) + 1, buffer
	
		close #filemode
	
	end if
	
end sub

sub central_close_out ( target as string =  "" )
	
	if not( Debug_Enabled ) then
		exit sub
	end if
	
	Central_Count -= 1	
	redim preserve Central_History( 0 to Central_Count )
	
end sub
