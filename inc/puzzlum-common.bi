
'puzzlum-common.bi
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

	#ifndef puzzlum_common_lib
	#inclib "puzzlum-common"
	#endif

	declare function Entity_Shortname( X as string = "" ) as string

	declare function As_String overload ( X as single = 0 ) as string
	declare function As_String overload ( X as integer = 0 ) as string
	
	declare function diceroll ( dice as string = "1d10" ) as integer
	declare function dicehit( index as integer = 1, range as string = "1to5" ) as integer
	
	declare function like( byval main as zstring ptr, byval pat as zstring ptr ) as integer
