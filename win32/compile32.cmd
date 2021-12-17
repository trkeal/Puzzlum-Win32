
<<<<<<< Updated upstream
del "compile-win32.log"
=======
set caption="FreeBASIC x86 Linker Utility"

set static="Win32 Static Library"
set binary="32bit Windows Binary"
>>>>>>> Stashed changes

echo === Roe 068 Win32 x86 Compiler === >> "compile-win32.log"

<<<<<<< Updated upstream
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
echo === Roe 068 Copy As 32bit === >> "compile-win32.log"

copy "puzzlum-fbc068.bas" "Roe068-fbc32.bas" >> "compile-win32.log"

echo: >> "compile-win32.log"
echo === Roe 068 32bit Windows Binary === >> "compile-win32.log"

"C:\FreeBASIC\fbc32.exe" "Roe068-fbc32.bas" -v -RR -s gui ".\win32\rc\puzzlum.rc" >> "compile-win32.log"

echo: >> "compile-win32.log"
echo === Execute Roe 068 32bit Binary === >> "compile-win32.log"
=======
echo ===[ Puzzlum-Win32 ]==[ %caption% ]=== >> %log%

echo: >> %log%
echo ===[ Constants ]==[ %static% ]=== >> %log%
%fbc% "const.bas" -lib -v -RR >> %log% 2>&1

echo: >> %log%
echo ===[ Names Table ]==[ %static% ]=== >> %log%
%fbc% "names.bas" -lib -v -RR >> %log% 2>&1

echo: >> %log%
echo ===[ Composite Layer Video ]==[ %static% ]=== >> %log%
%fbc% "clv.bas" -lib -v -RR >> %log% 2>&1

echo: >> %log%
echo ===[ FBImage ]==[ %static% ]=== >> %log%
%fbc% "fbimage.bas" -lib -v -RR >> %log% 2>&1

echo: >> %log%
echo ===[ Puzzlum / Vars ]==[ %static% ]=== >> %log%
%fbc% "puzzlum-vars.bas" -lib -v -RR >> %log% 2>&1

echo: >> %log%
echo ===[ Puzzlum / Subs ]==[ %static% ]=== >> %log%
%fbc% "puzzlum-subs.bas" -lib -v -RR >> %log% 2>&1

echo: >> %log%
echo ===[ Puzzlum / Task Manager ]==[ %static% ]=== >> %log%
%fbc% "puzzlum-task.bas" -lib -v -RR >> %log% 2>&1

echo: >> %log%
echo ===[ Puzzlum / Main ]==[ %binary% ]=== >> %log%
%fbc% "puzzlum-win32.bas" -v -RR -s gui ".\win32\rc\puzzlum.rc" >> %log% 2>&1
>>>>>>> Stashed changes

"puzzlum-fbc068.exe"

exit