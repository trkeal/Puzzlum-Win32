
del "compile-win32.log"

echo === Roe 068 Win32 x86 Compiler === >> "compile-win32.log"

echo: >> "compile-win32.log"
echo === Const Library === >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "const.bas" -lib -v -RR >> "compile-win32.log"

echo: >> "compile-win32.log"
echo === Names Library === >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "names.bas" -lib -v -RR >> "compile-win32.log"

echo: >> "compile-win32.log"
echo === CLV Library === >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "clv.bas" -lib -v -RR >> "compile-win32.log"

echo: >> "compile-win32.log"
echo === FBImage Library === >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "fbimage.bas" -lib -v -RR >> "compile-win32.log"

echo: >> "compile-win32.log"
echo === TRK-PNG-Support-Win32-Static Library === >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "TRK-PNG-Support-Win32-Static.bas" -lib -v -RR >> "compile-win32.log"

echo: >> "compile-win32.log"
echo === Roe 068 Copy As 32bit === >> "compile-win32.log"

copy "puzzlum-fbc068.bas" "Roe068-fbc32.bas" >> "compile-win32.log"

echo: >> "compile-win32.log"
echo === Roe 068 32bit Windows Binary === >> "compile-win32.log"

"C:\FreeBASIC\fbc32.exe" "Roe068-fbc32.bas" -v -RR -s gui ".\win32\rc\puzzlum.rc" >> "compile-win32.log"

echo: >> "compile-win32.log"
echo === Execute Roe 068 32bit Binary === >> "compile-win32.log"

"puzzlum-fbc068.exe"

exit