'CMD-Poll.bi
'"CMD Poll" Command$() Test
'
'Created 2022 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#ifndef CMD_Poll_lib 
#inclib "CMD-Poll"
#endif

dim shared as integer Debug_Enabled = -1
dim shared as string Debug_Filename
Debug_Filename = ".\Win32\central.log"

'#include once ".\inc\names.bi"
#include once ".\inc\const.bi"

#include once "file.bi"
#include once ".\inc\Names.bi"

redim shared as names_type Bundle_Table( any )

#include once "fbgfx.bi"

redim shared as names_type CMD_Table( any )

declare sub dump_names_to_display( caption as string = "%%", Table() as names_type )

declare sub CMD_Poll ( CMD_Table( any ) as names_type )

declare sub CMD_Ini( CMD_Table( any ) as names_type, Debug_Table( any ) as names_type )

declare sub Draw_Text( Video_Buffer as fb.image ptr, byref cursor_col as integer = 1, byref cursor_row as integer = 1, subject as string = "", fg as integer = 15 )

'dim as names_type Bundle_Table( any )
