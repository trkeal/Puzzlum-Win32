
'puzzlum-common.bas
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

	function Entity_Shortname( X as string = "" ) as string
		Entity_Shortname = left$( X + string$( 4, "_" ), 4 )
	end function

	function As_String overload ( X as single = 0 ) as string
		As_String = ltrim$( str$( X ) )
	end function
	
	function As_String overload ( X as integer = 0 ) as string
		As_String = ltrim$( str$( X ) )
	end function


	function diceroll ( dice as string = "1d10" ) as integer
		
		dim as string delimiter = "d"
		dim as integer offset = instr(1, dice, delimiter )
		dim as integer amount = valint( left$( dice, offset - 1 ) )
		dim as integer sides = valint( mid$( dice, offset + len( delimiter ) - 1 ) )
		dim as integer index = 0
		dim as integer result = 0
		
		for index = 1 to amount step 1
			result += fix( rnd( 1 ) * sides ) + 1
		next index
		
		diceroll = result
		
	end function
	
	function dicehit( index as integer = 0, range as string = "1to5" ) as integer
		
		dim as string delimiter = "to"
		dim as integer offset = instr(1, range, delimiter )
		
		dim as integer lo = 0
		dim as integer hi = 0

		if offset = 0 then
			lo = valint( range )
			hi = valint( range )
		else
			lo = valint( left$( range, offset - 1 ) )
			hi = valint( mid$( range, offset + len( delimiter ) - 1 ) )
		end if
		
		dim as integer result = 0
		
		if index >= lo and index <= hi then
			result = index
		else
			result = 0
		end if		

		dicehit = result
	
	end function

	function like(byval main as zstring ptr, byval pat as zstring ptr) as integer
		 dim as ubyte a, b, d
		 dim as ubyte ptr r, p
		 dim as integer star
		 
		 do
				d = *pat
				pat+=1
				if d = 0 then
					 return (star <> 0) or (*cptr(ubyte ptr,main) = 0)
				elseif d = asc("*") then
					 star = 1
				elseif d = asc("?") then
					 if *cptr(ubyte ptr, main) = 0 then return 0
					 main+=1
				else
					 exit do
				end if
		 loop
	
		 b = d
		 do
				a = *main
				main+=1
				if a = b then
					 r = main
					 p = pat
					 do
							d = *p
							p+=1
							if d = asc("*") then
								 if like(r,p-1) = -1 then return -1
								 exit do
							elseif d = 0 then
								 if *r = 0 then return -1
								 exit do
							end if
							r+=1
					 loop while (*(r-1) = d) or (d = asc("?"))
				end if
		 loop while star <> 0 and a <> 0
		 return 0
	end function
