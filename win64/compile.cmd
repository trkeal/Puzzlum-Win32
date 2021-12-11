"C:\Program Files (x86)\FreeBASIC\fbc64.exe" "const.bas" -lib >> "compile-win64.log"
"C:\Program Files (x86)\FreeBASIC\fbc64.exe" "clv002.bas" -lib >> "compile-win64.log"
"C:\Program Files (x86)\FreeBASIC\fbc64.exe" "names.bas" -lib >> "compile-win64.log"
copy "*.a" "C:\Program Files (x86)\FreeBASIC\lib\win32\*.a" >> "compile-win64.log"
"C:\Program Files (x86)\FreeBASIC\fbc64.exe" "puzzlum-fbc068.bas" -s gui ".\win64\rc\puzzlum.rc" >> "compile-win64.log"
"puzzlum-fbc068.exe"
exit