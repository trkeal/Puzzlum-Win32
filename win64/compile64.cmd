
del "compile-win64.log"

echo === Roe 068 Win64 x64 Compiler === >> "compile-win64.log"

echo >> "compile-win64.log"
echo === Const Library === >> "compile-win64.log"
"C:\FreeBASIC\fbc64.exe" "const.bas" -lib -v -RR >> "compile-win64.log"

echo >> "compile-win64.log"
echo === Names Library === >> "compile-win64.log"
"C:\FreeBASIC\fbc64.exe" "names.bas" -lib -v -RR >> "compile-win64.log"

echo >> "compile-win64.log"
echo === CLV Library === >> "compile-win64.log"
"C:\FreeBASIC\fbc64.exe" "clv.bas" -lib -v -RR >> "compile-win64.log"

echo >> "compile-win64.log"
echo === FBImage Library === >> "compile-win64.log"
"C:\FreeBASIC\fbc64.exe" "fbimage.bas" -lib -v -RR >> "compile-win64.log"

echo >> "compile-win64.log"
echo === TRK-PNG-Support-Win32-Static Library === >> "compile-win64.log"
"C:\FreeBASIC\fbc64.exe" "TRK-PNG-Support-Win32-Static.bas" -lib -v -RR >> "compile-win64.log"

echo >> "compile-win64.log"
echo === Roe 068 Copy As 64bit === >> "compile-win64.log"

copy "puzzlum-fbc068.bas" "Roe068-fbc64.bas" >> "compile-win64.log"

echo >> "compile-win64.log"
echo === Roe 068 64bit Binary === >> "compile-win64.log"

"C:\FreeBASIC\fbc64.exe" "Roe068-fbc64.bas" -v -RR -s gui ".\win64\rc\puzzlum.rc" >> "compile-win64.log"

echo >> "compile-win64.log"
echo === Execute Roe 068 64bit Binary === >> "compile-win64.log"

"puzzlum-fbc068.exe"

exit