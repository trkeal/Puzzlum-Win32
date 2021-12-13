
del "compile-win32.log"

"C:\FreeBASIC\fbc32.exe" "const.bas" -lib -v -RR >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "names.bas" -lib -v -RR >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "clv.bas" -lib -v -RR >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "fbimage.bas" -lib -v -RR >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "TRK-PNG-Support-Win32-Static.bas" -lib -v -RR >> "compile-win32.log"

copy "puzzlum-fbc068.bas" "Roe068-fbc32.bas"

"C:\FreeBASIC\fbc32.exe" "Roe068-fbc32.bas" -v -RR -s gui ".\win32\rc\puzzlum.rc" >> "compile-win32.log"

"puzzlum-fbc068.exe"

exit