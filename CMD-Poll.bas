'CMD-Poll.bas
'"CMD Poll" Command$() Test
'
'Created 2022 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#define CMD_Poll_lib

'dim shared as integer Debug_Enabled = 0
 
'#include once ".\inc\names.bi"
#include once ".\inc\const.bi"

#include once "file.bi"
#include once ".\inc\Names.bi"

'[!]'redim shared as names_type Bundle_Table( any )

#include once "fbgfx.bi"
#include once ".\inc\central-debug.bi"

screenres Display_Width, Display_Height, Display_Depth, Display_Pages
ScreenSet 1,0
color VGA_Table( 15 )

sub CMD_Poll ( CMD_Table( any ) as names_type )

	dim as string CMD = string$( 0, 0 )
	dim as integer cmdindex = 0, cmdcount = 0
	
	wipe_table CMD_Table()

	CMD = command$(cmdindex)
	do while len(CMD) > 0
		push_names "CMD/" + As_String( cmdindex ), CMD, CMD_Table()
		cmdcount = cmdindex
		cmdindex += 1
		CMD = command$(cmdindex)
	
	loop
	
	push_names "CMD/start", As_String( 0 ), CMD_Table()
	push_names "CMD/count", As_String( cmdcount ), CMD_Table()
	
	save_names_to_file ".\gamedata\Dynamic\CMD.dat", CMD_Table()   

	dump_names_to_display "CMD Table", CMD_Table()

end sub

sub CMD_Ini( CMD_Table( any ) as names_type, Debug_Table( any ) as names_type )
	
	dim as integer cmdindex = 1 
	
	do while cmdindex <= valint( sync_names_using_default( "CMD/count", "0", CMD_Table() ) )
		
		select case sync_names_using_default( "CMD/" + As_String( cmdindex ), "", CMD_Table() )
		case "-debug"
			Debug_Enabled = not( 0 )

			push_names "debug/enabled", As_String( Debug_Enabled ), Debug_Table()
			
			select case sync_names_using_default( "CMD/" + As_String( cmdindex + 1 ), "%%", CMD_Table() )
			case is <> "%%"
				Debug_Filename = sync_names_using_default( "CMD/" + As_String( cmdindex + 1 ), "%%", CMD_Table() )

				push_names "debug/filename", Debug_Filename, Debug_Table()
		
			end select
		
		end select
		
		cmdindex += 1
	loop

	dump_names_to_display "Debug Table", Debug_Table()

end sub

sub dump_names_to_display( caption as string = "%%", Table() as names_type )
	
	dim as fb.image ptr Display 
	
	Display = imagecreate( Display_Width, Display_Height )
	
	dim as integer i = 0
	
	dim as integer cursor_row = 1
	dim as integer cursor_col = 1
	
	line Display, ( 0, 0 )-( Display -> width - 1, Display -> height - 1), VGA_Table( 0 ), bf
	
	cursor_row = 1
	cursor_col = 1

	Draw_Text Display, cursor_col, cursor_row, "===[ " + caption + " ]===", 15
		
	for i = lbound( Table, 1 ) to ubound( Table, 1 ) step 1
		if cursor_row  = 1 then
			
			line Display, ( 0, 0 )-( Display -> width - 1, Display -> height - 1), VGA_Table( 2 ), bf
	
			cursor_row = 1
			cursor_col = 1

			Draw_Text Display, cursor_col, cursor_row, "===[ " + caption + " ]===", 15
			
		end if
		
		Draw_Text Display, cursor_col, cursor_row, As_String(i) + colon + quot + Table( i ).label + quot + eq + quot + Table(i).value + quot, 15
		
		if cursor_row = Display -> Height \ 8 then
			
			cls
			put ( 0, 0 ), Display, pset
			flip
			
			wait_key
						
			cursor_row = 1
			cursor_col = 1
			
		end if
	next i
	if cursor_row < Display -> Height \ 8 then
		
		cls
		put ( 0, 0 ), Display, pset
		flip
		
		wait_key
		
	end if
	
	imagedestroy Display
	
end sub

sub Draw_Text( Video_Buffer as fb.image ptr, byref cursor_col as integer = 1, byref cursor_row as integer = 1, subject as string = "", fg as integer = 15 )
	
	draw string Video_Buffer, ( ( cursor_col - 1 ) * 8, ( cursor_row - 1 ) * 8), subject, VGA_Table( fg )
	cursor_row += 1
	cursor_col = 1

end sub