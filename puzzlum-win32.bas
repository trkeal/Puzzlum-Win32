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

dim as string cmd = string$( 0, 0 )
dim as integer cmdindex = 0, cmdcount = 0

ScreenRes 640, 480, 32, 16
ScreenSet 1, 0
color &HFFFFFF

redim shared as names_type CMD_Table( any )

wipe_table CMD_Table()

cmd = command$(cmdindex)
do while len(cmd) > 0
	push_names "CMD/" + As_String( cmdindex ), cmd, CMD_Table()
	cmdcount = cmdindex
	cmdindex += 1
	cmd = command$(cmdindex)

loop

push_names "CMD/start", As_String( 0 ), CMD_Table()
push_names "CMD/count", As_String( cmdcount ), CMD_Table()

print "CMD/start" + eq + quot + sync_names_using_default( "CMD/start", "0", CMD_Table() ) + quot

print "CMD/count" + eq + quot + sync_names_using_default( "CMD/count", "0", CMD_Table() ) + quot

for cmdindex = valint( sync_names_using_default( "CMD/start", "0", CMD_Table()  )) to valint( sync_names_using_default( "CMD/count", "0", CMD_Table() ) ) step 1
	
	print "CMD/" + As_String( cmdindex ) + eq + quot + sync_names_using_default( "CMD/" + As_String( cmdindex ), "", CMD_Table() ) + quot
	
next cmdindex

save_names_to_file ".\Win32\direct cmd.log", CMD_Table()   

flip
do while len(inkey)=0:loop
end

#inclib "z"
#include once ".\inc\CLV.bi"

#include once ".\inc\puzzlum-vars.bi"
#include once ".\inc\puzzlum-subs.bi"

#include once ".\inc\puzzlum-maps.bi"

#include once ".\inc\puzzlum-profile-manip.bi"


'CMD_Debug_Enabled
central_call "roe" : outro
