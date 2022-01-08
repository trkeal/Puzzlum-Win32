'CMD_Test.bas
'"CMD Test" Command$() Test
'
'Created 2022 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#define CMD_Test_lib
 
'#include once ".\inc\names.bi"
#include once ".\inc\const.bi"

#include once "file.bi"
#include once ".\inc\Names.bi"

#include once "fbgfx.bi"

sub CMD_Test ( CMD_Table( any ) as names_type )

	dim as string cmd = string$( 0, 0 )
	dim as integer cmdindex = 0, cmdcount = 0

	ScreenRes 640, 480, 32, 16
	ScreenSet 1, 0
	color &HFFFFFF

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
	
	print "===[ CMD Params ]==="
	
	print
	
	print "CMD/start" + eq + quot + sync_names_using_default( "CMD/start", "0", CMD_Table() ) + quot
	
	print "CMD/count" + eq + quot + sync_names_using_default( "CMD/count", "0", CMD_Table() ) + quot
	
	for cmdindex = valint( sync_names_using_default( "CMD/start", "0", CMD_Table()  )) to valint( sync_names_using_default( "CMD/count", "0", CMD_Table() ) ) step 1
		
		print "CMD/" + As_String( cmdindex ) + eq + quot + sync_names_using_default( "CMD/" + As_String( cmdindex ), "", CMD_Table() ) + quot
	
	next cmdindex

	save_names_to_file ".\Win32\direct cmd.log", CMD_Table()   

	flip
	do while len(inkey)=0:loop
end sub
