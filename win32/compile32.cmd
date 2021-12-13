
del "compile-win32.log"

"C:\FreeBASIC\fbc32.exe" "const.bas" -lib -v -RR >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "names.bas" -lib -v -RR >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "clv.bas" -lib -v -RR >> "compile-win32.log"

copy "*.a" "C:\FreeBASIC\lib\win32\*.a" >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "puzzlum-fbc068.bas" -v -RR -s gui ".\win32\rc\puzzlum.rc" >> "compile-win32.log"

"puzzlum-fbc068.exe"

exit