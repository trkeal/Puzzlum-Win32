#define puzzlum_loaders_lib

'puzzlum-subs.bas
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
	#inclib "puzzlum-common"

	#include once "crt\math.bi"
	#include once ".\inc\Const.bi"
	#include once ".\inc\Names.bi"

	#include once ".\inc\central-debug.bi"

	#include once "fbgfx.bi"
	#include once ".\inc\fbimage.bi"
	#include once ".\inc\fbpngs.bi"

	#include once ".\inc\puzzlum-outro.bi"

	#include once ".\inc\CLV.bi"

	#include once ".\inc\puzzlum-subs.bi"
	#include once ".\inc\puzzlum-vars.bi"
	#include once ".\inc\puzzlum-maps.bi"

	#include once ".\inc\puzzlum-test.bi"

	#include once ".\inc\puzzlum-map-viewer.bi"
	#include once ".\inc\puzzlum-profile-manip.bi"

sub load_rose()

	locate 1, 1


	report_caption "compass rose"
	'directional axis matrix (Compass Rose)
	
	locate 3, 1
	
	print "rose/card/count" + eq + quot + sync_names("rose/card/count",Rose_Table()) + quot

	locate 3, 41
	print "rose/axis/count" + eq + quot + sync_names("rose/axis/count",Rose_Table()) + quot

	dim as string thisaxis = ""

	for roseaxis=1 to val(sync_names("rose/axis/count",Rose_Table())) step 1
		
		thisaxis = sync_names( "rose/axis/"+ltrim$(str$(roseaxis)), Rose_Table() )
		
		locate 5, ( roseaxis - 1 ) * 40 + 1
		
		print "rose/axis/"+ltrim$(str$(roseaxis)) + eq + quot + thisaxis + quot

	for rosecard=0 to val(sync_names("rose/card/count",Rose_Table())) step 1
				
		d_sia(rosecard, roseaxis) = val(sync_names("rose/card/"+ltrim$(str$(rosecard))+"/axis/"+thisaxis,Rose_Table()))
		
		locate rosecard * 2 + 7, ( roseaxis - 1 ) * 40 + 1, 
		
		print "rose/card/"+ltrim$(str$(rosecard))+"/axis/"+thisaxis + eq + quot + As_String( d_sia(rosecard, roseaxis) ) + quot
			
	next rosecard
	next roseaxis
		
end sub

sub load_levels()

	'level up data
	locate 1, 1
	report_caption "level up data"

	locate 3,1
	print "count" + eq + ltrim$(str$(val( sync_names( "levels/count", Levels_Table() ) ) ) )
    FOR t_si = 0 TO val( sync_names( "levels/count", Levels_Table() ) ) step 1
		
		l_sia(t_si) = val( sync_names( "levels/" + As_String( t_si ), Levels_Table() ) )
		locate (t_si mod 16) + 5, fix(t_si / 16) * 16 + 1
		print ltrim$(str$(t_si)) + eq +  ltrim$(str$(val( sync_names( "levels/" + As_String( t_si ), Levels_Table() ) ) ) )
	
	NEXT t_si
	
end sub

sub load_bundle()

	report_caption "load bundle"
		
	load_names_from_file(".\gamedata\Bundle.dat", Bundle_Table() )

	print
	
	print quot + sync_names( "input/filename", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "input/filename", Bundle_Table() ), Input_Table() )
    
	print quot + sync_names( "help/filename", Bundle_Table() ) + quot
	 help_filename = sync_names( "help/filename", Bundle_Table() ) 
    
	print quot + sync_names( "palette/filename", Bundle_Table() ) + quot
	palette_filename = sync_names( "palette/filename", Bundle_Table() ) 
    
	print quot + sync_names( "input/filename", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "input/filename", Bundle_Table() ), Input_Table() )
	
	print quot + sync_names( "names/filename", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "names/filename", Bundle_Table() ), Names_Table() )
		
	print quot + sync_names( "levels/filename", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "levels/filename", Bundle_Table() ), Levels_Table() )
	
	print quot + sync_names( "maps/path", Bundle_Table() ) + sync_names( "map/filename", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "maps/path", Bundle_Table() ) + sync_names( "map/filename", Bundle_Table() ), Maps_Table() )
  	
	print quot + sync_names( "rose/filename", Bundle_Table() ) + quot
	load_names_from_file( sync_names( "rose/filename", Bundle_Table() ), Rose_Table() )
	
end sub

sub report_caption( caption as string = "%%" )

	locate 1, 1
	print "===[ " + ucword( caption ) + " ]==="

end sub


sub font_loader()
	    
	load_names_from_file( ".\gamedata\Bundle.dat", Bundle_Table() )
	
	dim as integer index = 0
	
	dim as fb.image ptr i_display = imagecreate( Display_Width, Display_Height )
	
	for index = 0 to val( sync_names("font/count", Bundle_Table() ) ) - 1 step 1
	
		clv_font_load clv_font(), index, clv_font_flag_load, sync_names( "font/" + As_String( index ) + "/filename", Bundle_Table() )

		cls
		
		stretch clv_font( index ), i_display
				
		put ( 0, 0 ), i_display, alpha
		
		flip
		
		wait_key

	next index
		
end sub

sub load_display()

    load_names_from_file ( sync_names("display/filename",Bundle_Table()), Display_Table() )

    Mouse_Width = val( sync_names("mouse/width", Display_Table() ) )
    Mouse_Height = val( sync_names("mouse/height", Display_Table() ) )
    
	Screen_Width = val( sync_names("screen/width", Display_Table() ) )
    Screen_Height = val( sync_names("screen/height", Display_Table() ) )
    
	Display_Width = val( sync_names("display/width", Display_Table() ) )
    Display_Height = val( sync_names("display/height", Display_Table() ) )
    
	Display_Depth = val( sync_names("display/depth", Display_Table() ) )
    Display_Pages = val( sync_names("display/pages", Display_Table() ) )

	if Mouse_Width = 0 then Mouse_Width = 320
    if Mouse_Height = 0 then Mouse_Height = 240
    
	if Screen_Width = 0 then Screen_Width = 320
    if Screen_Height = 0 then Screen_Height = 240
    
	if Display_Width = 0 then Display_Width = 640
    if Display_Height = 0 then Display_Height = 480
    
	if Display_Depth = 0 then Display_Depth = 32
	if Display_Pages = 0 then Display_Pages = 16
		
	ScreenRes Display_Width, Display_Height, Display_Depth,  Display_Pages
	ScreenSet 1, 0
	
	setmouse Mouse_Width shr 1, Mouse_Height shr 1, 0

end sub

sub load_art()

	thispath_str = ".\"
    fontpath_str = ".\gameart\fonts\"
    logopath_str = ".\gameart\logos\"
    spritepath_str = ".\gameart\sprites\"
    palpath_str = ".\gamedata\"
    mappath_str = ".\gamedata\maps\"

    thispath_str = sync_names("main/path",Bundle_Table())
    fontpath_str = sync_names("fonts/path",Bundle_Table())
    logopath_str = sync_names("logos/path",Bundle_Table())
    spritepath_str = sync_names("sprites/path",Bundle_Table())
    
	palpath_str = sync_names("palette/path",Bundle_Table())+sync_names("palette/filename",Bundle_Table())
end sub    

sub load_data()
	mappath_str = sync_names("maps/path",Bundle_Table())
    	
	'future71path_str = "future71\"
    'netplaypath_str = "netplay\"
    'netoutfile_str = "netplayo.bin"
    'netoutmode_li = 67
	
	'pal_load palette_filename, pal()

    'load_names_from_file ( ".\gamedata\Main.dat", Bundle_Table() )	
    load_names_from_file ( sync_names("input/filename",Bundle_Table()), Input_Table() )
    load_names_from_file ( sync_names("levels/filename",Bundle_Table()), Levels_Table() )
    
	load_names_from_file ( sync_names("maps/path",Bundle_Table()) + sync_names("map/filename",Bundle_Table()), Maps_Table() )
    
	load_names_from_file ( sync_names("attack/filename",Bundle_Table()), Attack_Table() )

end sub

sub load_input()
    
	sync_names("input/filename",Bundle_Table())
	
end sub
