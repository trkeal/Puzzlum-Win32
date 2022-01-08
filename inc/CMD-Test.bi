'CMD Test.bi
'"CMD Test" Command$() Test
'
'Created 2022 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#ifndef CMD_Test_lib 
#inclib "CMD-Test"
#endif

'#include once ".\inc\names.bi"
#include once ".\inc\const.bi"

#include once "file.bi"
#include once ".\inc\Names.bi"

#include once "fbgfx.bi"

redim shared as names_type CMD_Table( any )

declare sub CMD_Test ( CMD_Table( any ) as names_type )
