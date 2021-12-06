"C:\Program Files\FreeBASIC\fbc.exe" "KealDemux.bas" -lib > "compile-win32.log"
"C:\Program Files\FreeBASIC\fbc.exe" "Timothy.bas" -lib > "compile-win32.log"
"C:\Program Files\FreeBASIC\fbc.exe" "clv002.bas" -lib >> "compile-win32.log"
copy "*.a" "C:\Program Files\FreeBASIC\lib\win32\*.a" >> "compile-win32.log"
"C:\Program Files\FreeBASIC\fbc.exe" "puzzlum-fbc068.bas" ".\win32\rc\puzzlum.rc" -s gui >> "compile-win32.log"
"puzzlum-fbc068.exe"
exit