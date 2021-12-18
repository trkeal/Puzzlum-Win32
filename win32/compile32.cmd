set fbc="C:\FreeBASIC\fbc32.exe"
set log="compile-win32.log"

<<<<<<< HEAD
<<<<<<< Updated upstream
del "compile-win32.log"
=======
set caption="FreeBASIC x86 Linker Utility"

set static="Win32 Static Library"
set binary="32bit Windows Binary"
>>>>>>> Stashed changes
=======
set static="Win32 Static Library"
set binary="32bit Windows Binary"
>>>>>>> 86012ac1ed22c2f0ef8141e476eae764730c9a07

del %log%

<<<<<<< HEAD
<<<<<<< Updated upstream
echo: >> "compile-win32.log"
echo === Const Library === >> "compile-win32.log"
"C:\FreeBASIC\fbc32.exe" "const.bas" -lib -v -RR >> "compile-win32.log"
=======
echo ===[ Puzzlum-Win32 ]==[ FreeBASIC x86 Linker Utility ]=== >> %log%
>>>>>>> 86012ac1ed22c2f0ef8141e476eae764730c9a07

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

<<<<<<< HEAD
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
=======
echo: >> %log%
echo ===[ Puzzlum / Main ]==[ %binary% ]=== >> %log%
%fbc% "puzzlum-win32.bas" -v -RR -s gui ".\win32\rc\puzzlum.rc" >> %log% 2>&1
>>>>>>> 86012ac1ed22c2f0ef8141e476eae764730c9a07

echo: >> %log%
echo ===[ Now attempting to load the "puzzlum-win32" executable.. ]=== >> %log%

"puzzlum-win32.exe"

exit