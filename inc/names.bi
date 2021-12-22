'Names.bi
'"Names" associative array FreeBASIC source code
'
'Created 2021 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html


#ifndef names_lib 
#inclib "names"
#endif

#include once ".\inc\const.bi"

#include "file.bi"

type names_type
	label as string
	value as string
end type

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
