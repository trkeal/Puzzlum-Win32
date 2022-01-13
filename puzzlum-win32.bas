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

mkdir ".\gamedata\Dynamic"

#include once ".\inc\puzzlum-win32.bi"

#inclib "VGA_Table"

#include once "crt\math.bi"
'#inclib "Const"
#inclib "Names"

#include once ".\inc\FBImage.bi"
#include once ".\inc\fbpngs.bi"
#include once "fbgfx.bi"

#include once ".\inc\puzzlum-outro.bi"


#include once ".\inc\CMD-Poll.bi"

#inclib "z"
#include once ".\inc\CLV.bi"

#include once ".\inc\puzzlum-vars.bi"

#include once ".\inc\puzzlum-loaders.bi"

#include once ".\inc\puzzlum-subs.bi"

#include once ".\inc\puzzlum-maps.bi"

#include once ".\inc\puzzlum-profile-manip.bi"

#inclib "puzzlum-main"

wipe_table Bundle_Table()

load_names_from_file ".\gamedata\Bundle.dat", Bundle_Table(), crlf, eq

Debug_Filename = sync_names_using_default( "debug/filename",".\Win32\central.log", Bundle_Table() )

Debug_Enabled = valint( sync_names_using_default( "debug/enabled", "0", Bundle_Table() ) )

CMD_Poll CMD_Table()

load_names_from_file ".\gamedata\Dynamic\CMD.dat", CMD_Table(), crlf, eq

redim shared as names_type Debug_Table( any )

CMD_Ini CMD_Table(), Debug_Table()

push_names "debug/filename", Debug_Filename, Debug_Table()

push_names "debug/enabled", As_String( Debug_Enabled ), Debug_Table()

save_names_to_file ".\gamedata\Dynamic\Debug.dat", Debug_Table()

dump_names_to_display "Debug Table", Debug_Table()

dump_names_to_display "CMD Table", CMD_Table()

'CMD_Debug_Enabled
central_call "roe" : outro
