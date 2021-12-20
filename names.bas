#define names_lib
 
'#include once ".\inc\names.bi"
#include once ".\inc\const.bi"

#include "file.bi"

type names_type
	label as string
	value as string
end type

type names_table_type
	table(any) as names_type
end type

redim as names_table_type tables( any )
redim preserve tables( 0 to 16 )

declare sub wipe_table( names( any ) as names_type )
declare sub names_push( label as string, value as string, names_table( any ) as names_type )

declare function name_as_string( subject as string ) as string

declare function name_ref_as_string( subject as string, names( any ) as names_type ) as string
declare function name_hex_as_string( subject as string, names( any ) as names_type ) as string
declare function name_as_special_string( subject as string, names( any ) as names_type ) as string

declare function sync_names( lookup as string, names_table( any ) as names_type ) as string

declare sub load_names( filename as string = "", names_table( any ) as names_type )
declare sub load_names_from_buffer( buffer as string = "", names_table( any ) as names_type )
declare sub load_names_from_file( filename as string = "", names_table( any ) as names_type )

declare sub save_names( filename as string = "", names_table( any ) as names_type )
declare sub save_names_to_file( filename as string = "", names_table( any ) as names_type )
declare sub save_names_to_buffer( subject as string = "", names_table( any ) as names_type )

declare sub merge_names(source_table( any ) as names_type, dest_table( any ) as names_type )

declare function ucword( subject as string ) as string
declare function ord_series( subject as string = "" ) as integer
declare function hex2asc( subject as string = "" ) as string

declare function trimint overload ( subject as integer = 0 ) as string	
declare function trimint overload ( subject as single = 0 ) as string	
declare function trimint overload ( subject as double = 0 ) as string	
declare function trimint overload ( subject as long = 0 ) as string	
declare function trimint overload ( subject as short = 0 ) as string	
declare function trimint overload ( subject as string = "" ) as string	

sub wipe_table( names( any ) as names_type )

	redim names( 0 to 0 )
	names( 0 ).label = string$( 0, 0 )
	names( 0 ).value = string$( 0, 0 )
	 
end sub

sub names_push( label as string, value as string, names_table( any ) as names_type )
	
	dim as integer index = 0
	
	do while index <= ubound(names_table)
		if names_table(index).label = label then
			names_table(index).value = value
			exit sub
		end if
		index+=1
	loop
	
	redim preserve names_table(0 to index)
	names_table(index).label = label
	names_table(index).value = value

end sub

function name_as_string( subject as string ) as string
	
	if left$( subject, 1 ) = quot and right$( subject, 1 ) = quot then
		name_as_string = ucword( mid$( subject, 2, len( subject ) - 2 ) )
	else
		name_as_string = ucword( subject )
	end if
	
end function

function name_as_special_string( subject as string, names( any ) as names_type ) as string
	
	subject = name_hex_as_string( subject, names() )
	subject = name_ref_as_string( subject, names() )
	name_as_special_string = subject
	
end function

function name_ref_as_string( subject as string, names( any ) as names_type ) as string
	
	dim as integer open_offset =0, close_offset = 0
	dim as string open_sep = string$( 0 ,0 ), close_sep = string$( 0, 0 )
	
	open_sep = "{{"
	close_sep = "}}"

	do
	
		open_offset = instr(1, subject, open_sep)
		close_offset = instr( open_offset + len( open_sep ), subject, close_sep)
		
		if not( open_offset > 0 and close_offset > open_offset ) then
			exit do
		end if
		
		subject = left$( subject, open_offset - 1 ) + sync_names( mid$( subject, open_offset, close_offset - open_offset - len( open_offset ) ), names() ) + mid$( subject, close_offset + len( close_sep ) )
	
	loop

	name_ref_as_string = subject

end function

function name_hex_as_string( subject as string, names( any ) as names_type ) as string
	
	dim as integer open_offset = 0, close_offset = 0, hex_offset = 0, hex_length = 2
	dim as string open_sep = string$( 0 ,0 ), close_sep = string$( 0, 0 ), hex_sep = string$( 0, 0 ), hex_capture = string$( 0, 0 )
		
	hex_sep = "%"
	hex_offset = 0 
	
	do
		do
			hex_offset = instr(hex_offset + 1, subject, hex_sep)
			
			if hex_offset = 0 then
				exit do
			end if
			
		loop while hex_offset > 0 and instr( hex_offset + 1, subject, hex_sep) = hex_offset + 1
		
		if hex_offset > 0 then
			hex_capture = mid$( subject, hex_offset + len( hex_sep ) + 1, hex_length )
		else
			hex_capture = string$( 0, 0 )
		end if
				
		if len( hex_capture ) > 0 then
			subject = left$( subject, hex_offset - 1 ) + hex2asc( hex_capture ) + mid$( subject, hex_offset + len( hex_capture ) + 1 )
		else
			exit do
		end if
		
	loop

	name_hex_as_string = subject

end function

function sync_names( lookup as string, names_table( any ) as names_type ) as string
	dim as integer index = lbound( names_table, 1 )
	do while index <= ubound( names_table, 1 )
		if lcase$( lookup ) = lcase$( names_table( index ).label ) then
			sync_names = lcase$( names_table( index ).value )
			exit function
		end if
		index += 1
	loop
	
	sync_names = "%%"
	exit function
	
end function

sub load_names( filename as string = "", names_table( any ) as names_type )
	
	load_names_from_file( filename, names_table() )

end sub

sub load_names_from_buffer( buffer as string = "", names_table( any ) as names_type )
	
	dim as string subject = string$( 0, 0 )
	
	do while instr( 1, buffer, crlf ) > 0
		
		subject = left$( buffer, instr( 1, buffer, crlf ) - 1 )
		
		buffer = mid$( buffer, len( subject ) + len( crlf ) + 1 )
		
		if instr( subject, eq ) > 0 then
			
			if ubound( names_table, 0 ) > 0 then
				redim preserve names_table( lbound( names_table, 1 ) to ubound( names_table, 1 ) + 1 )
			else
				redim names_table( 0 to 0 )
			end if
			
			names_table( ubound( names_table, 1 ) ).label = left$( subject, instr( subject, eq ) - 1 )
			
			names_table( ubound( names_table, 1 ) ).value = mid$( subject, instr( subject, eq ) + len( eq ) )
			
		end if
	loop
	
	subject = buffer
	buffer = string$( 0, 0 )
	
	if instr( subject, eq ) > 0 then
		
		if ubound( names_table, 0 ) > 0 then		
			redim preserve names_table( lbound( names_table, 1 ) to ubound( names_table, 1 ) + 1 )
		else
			redim names_table( 0 to 0 )
		end if
		
		names_table( ubound( names_table, 1 ) ).label = left$( subject, instr( subject, eq ) - 1 )
		
		names_table( ubound( names_table, 1 ) ).value = mid$( subject, instr( subject, eq ) + len( eq ) )
	
	end if

end sub

sub load_names_from_file( filename as string = "", names_table( any ) as names_type )
	dim as integer filemode = freefile
	
	dim as string buffer = string$( 0, 0 )
	
	if FileExists( filename ) then

		if open( filename for binary as #filemode ) then
			close #filemode
			exit sub
		end if
		
		buffer = string$( lof( filemode ), 0 )
		
		get #filemode, 1, buffer
		close #filemode
	
	else
		
		buffer = string$( 0, 0 )
		
	end if
	
	load_names_from_buffer buffer, names_table()
	
end sub

sub save_names( filename as string = "", names_table( any ) as names_type )

	save_names_to_file( filename, names_table() )

end sub

sub save_names_to_file( filename as string = "", names_table( any ) as names_type )
	
	dim as integer filemode = freefile, index = 0
	dim as string buffer = string$( 0, 0 )
	
	kill filename
	
	if open( filename for binary as filemode ) then
		close #filemode
		exit sub
	end if
	
	save_names_to_buffer( buffer, names_table() )
	
	put #filemode, 1, buffer
	close #filemode

end sub

sub save_names_to_buffer( subject as string = "", names_table( any ) as names_type )
	
	dim as integer index = 0
	dim as string buffer = subject
			
	for index = lbound( names_table, 1 ) to ubound( names_table, 1 ) step 1
		
		if index > lbound( names_table, 1 ) then
			buffer += crlf
		end if
		
		buffer += names_table( index ).label + "=" + names_table( index ).value
		
	next index
	
	subject = buffer
	
end sub

sub merge_names(source_table( any ) as names_type, dest_table( any ) as names_type )
	
	dim as string source_buffer = string$( 0, 0 ), dest_buffer = string$( 0, 0 ), result = string$( 0, 0 )
	
	save_names_to_buffer( source_buffer, source_table() )
	save_names_to_buffer( dest_buffer, dest_table() )
	
	result = dest_buffer + source_buffer
	
	wipe_table( dest_table() )
	load_names_from_buffer( result, dest_table() )

end sub

function ucword( subject as string ) as string
	dim as integer o = 0
	
	subject = lcase$( subject )
	
	for o = 1 to len( subject ) step 1
	
		if o = 1 or mid$(subject, o - 1, 1 ) = string$( 1, 32 ) then
			mid$( subject, o ,1 ) = ucase$( mid$( subject, o ,1 ) )
		end if
	
	next o
	
	ucword = subject 
	exit function
	
end function

function ord_series( subject as string = "" ) as integer
	
	dim as integer offset = 0, result = 0
	
	for offset = 1 to len(subject) step 1
		result = ( result shl 8 ) or asc( mid$( subject, offset, 1 ) )
	next offset
	
	ord_series = result
	
end function

function hex2asc( subject as string = "" ) as string
	
	dim as integer offset = 0
	dim as string result = string$( 0, 0 )
	
	for offset = len( subject ) to 1 step - 2
		result = chr$( val( "&H" + mid$( subject, offset, 2 ) ) ) + result
	next offset
	
	hex2asc = result
	
end function

function trimint overload ( subject as integer = 0 ) as string	
	trimint = ltrim$(str$(subject))
end function
function trimint overload ( subject as single = 0 ) as string	
	trimint = ltrim$(str$(subject))
end function
function trimint overload ( subject as double = 0 ) as string	
	trimint = ltrim$(str$(subject))
end function
function trimint overload ( subject as long = 0 ) as string	
	trimint = ltrim$(str$(subject))
end function
function trimint overload ( subject as short = 0 ) as string	
	trimint = ltrim$(str$(subject))
end function
function trimint overload ( subject as string = "" ) as string	
	trimint = ltrim$(subject)
end function
