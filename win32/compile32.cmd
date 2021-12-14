set fbc="C:\FreeBASIC\fbc32.exe"
set log="compile-win32.log"

set static="Win32 Static Library"
set binary="32bit Windows Binary"

del %log%

echo ===[ Puzzlum-Win32 ]==[ FreeBASIC x86 Linker Utility ]=== >> %log%

echo: >> %log%
echo ===[ Constants ]==[ %static% ]=== >> %log%
%fbc% "const.bas" -lib -v -RR >> %log%

echo: >> %log%
echo ===[ Names Table ]==[ %static% ]=== >> %log%
%fbc% "names.bas" -lib -v -RR >> %log%

echo: >> %log%
echo ===[ Composite Layer Video ]==[ %static% ]=== >> %log%
%fbc% "clv.bas" -lib -v -RR >> %log%

echo: >> %log%
echo ===[ FBImage ]==[ %static% ]=== >> %log%
%fbc% "fbimage.bas" -lib -v -RR >> %log%

echo: >> %log%
echo ===[ Puzzlum / Vars ]==[ %static% ]=== >> %log%
%fbc% "puzzlum-vars.bas" -lib -v -RR >> %log%

echo: >> %log%
echo ===[ Puzzlum / Subs ]==[ %static% ]=== >> %log%
%fbc% "puzzlum-subs.bas" -lib -v -RR >> %log%

echo: >> %log%
echo ===[ Puzzlum / Task Manager ]==[ %static% ]=== >> %log%
%fbc% "puzzlum-task.bas" -lib -v -RR >> %log%

echo: >> %log%
echo ===[ Puzzlum / Main ]==[ %binary% ]=== >> %log%
%fbc% "puzzlum-win32.bas" -v -RR -s gui ".\win32\rc\puzzlum.rc" >> %log%

echo: >> %log%
echo ===[ Now attempting to load the "puzzlum-win32" executable.. ]=== >> %log%

"puzzlum-win32.exe"

exit