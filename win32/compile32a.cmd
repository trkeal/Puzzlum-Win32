set fbc="C:\FreeBASIC\fbc32.exe"
set log="compile-win32.log"

set open="===["
set sep="]==["
set close="]==="

set static="Win32 Static Library"
set binary="32bit Windows Binary"

del %log%

echo %open% Puzzlum-Win32 %sep% FreeBASIC x86 Linker Utility %close% >> %log%

echo: >> %log%
echo %open% Constants %sep% %static% %close% >> %log%
%fbc% "const.bas" -lib -v -RR >> %log%

echo: >> %log%
echo %open% Names Table %sep% %static% %close% >> %log%
%fbc% "names.bas" -lib -v -RR >> %log%

echo: >> %log%
echo %open% Composite Layer Video %sep% %static% %close% >> %log%
%fbc% "clv.bas" -lib -v -RR >> %log%

echo: >> %log%
echo %open% FBImage %sep% %static% %close% >> %log%
%fbc% "fbimage.bas" -lib -v -RR >> %log%

echo: >> %log%
echo %open% Puzzlum / Vars %sep% %static% %close% >> %log%
%fbc% "puzzlum-vars.bas" -lib -v -RR >> %log%

echo: >> %log%
echo %open% Puzzlum / Subs %sep% %static% %close% >> %log%
%fbc% "puzzlum-subs.bas" -lib -v -RR >> %log%

echo: >> %log%
echo %open% Puzzlum / Task Manager %sep% %static% %close% >> %log%
%fbc% "puzzlum-task.bas" -lib -v -RR >> %log%

echo: >> %log%
echo %open% Puzzlum / Main %sep% %binary% %close% >> %log%
%fbc% "puzzlum-win32.bas" -v -RR -s gui ".\win32\rc\puzzlum.rc" >> %log%

echo: >> %log%
echo %open% Now attempting to load the "puzzlum-win32" executable.. %close% >> %log%

"puzzlum-win32.exe"

exit