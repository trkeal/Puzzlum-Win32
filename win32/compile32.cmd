set fbc="C:\FreeBASIC\fbc32.exe"
set log="compile-win32.log"

set static="Win32 Static Library"
set binary="32bit Windows Binary"

del %log%

set fbopts= -include "const.inc.bas" -g
set libopts= -lib %fbopts%

echo ===[ Puzzlum-Win32 ]==[ FreeBASIC x86 Linker Utility ]=== >> %log%

rem echo: >> %log%
rem echo ===[ Constants ]==[ %static% ]=== >> %log%
rem %fbc% "const.bas" %libopts% >> %log% 2>&1

echo: >> %log%
echo ===[ Names Table ]==[ %static% ]=== >> %log%
%fbc% "names.bas" %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Composite Layer Video ]==[ %static% ]=== >> %log%
%fbc% "clv.bas" %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ FBImage ]==[ %static% ]=== >> %log%
%fbc% "fbimage.bas" %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Vars ]==[ %static% ]=== >> %log%
%fbc% "puzzlum-vars.bas" %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Subs ]==[ %static% ]=== >> %log%
%fbc% "puzzlum-subs.bas" %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Task Manager ]==[ %static% ]=== >> %log%
%fbc% "puzzlum-task.bas" %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Main ]==[ %binary% ]=== >> %log%
%fbc% "puzzlum-win32.bas" %fbopts% -s gui ".\win32\rc\puzzlum.rc" >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Now attempting to load the "puzzlum-win32" executable.. ]=== >> %log%

"puzzlum-win32.exe"

exit /b 0

:failed
echo failed to compile 1>&2
pause >nul
exit /b 1
