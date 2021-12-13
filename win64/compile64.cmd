
del "compile-win64.log"

"C:\FreeBASIC\fbc64.exe" "const.bas" -lib -v -RR >> "compile-win64.log"
"C:\FreeBASIC\fbc64.exe" "names.bas" -lib -v -RR >> "compile-win64.log"
"C:\FreeBASIC\fbc64.exe" "clv.bas" -lib -v -RR >> "compile-win64.log"

copy "*.a" "C:\FreeBASIC\lib\win64\*.a" >> "compile-win64.log"
"C:\FreeBASIC\fbc64.exe" "puzzlum-fbc068.bas" -v -RR -s gui ".\win64\rc\puzzlum.rc" >> "compile-win64.log"

"puzzlum-fbc068.exe"

exit