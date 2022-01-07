
''------------------------------------------------------------------------------
''
'' Function		: like()
''
'' Purpose		: matches wild cards * and ?
''
'' Source		: Converted from C source code of BCX (LGPL licence)
''
'' History		: Date		 Reason
''				 16-07-06	 Created
''
''------------------------------------------------------------------------------

	function like( byval main as zstring ptr, byval pat as zstring ptr ) as integer
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