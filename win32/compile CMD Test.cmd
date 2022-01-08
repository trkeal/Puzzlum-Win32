@echo off

PATH "C:\FreeBASIC\"

set fbc="fbc32.exe"
set log=".\win32\compile CMD Test.log"

set static=Win32 Static Library
set binary=32bit Windows Binary

set guiopts= -s gui ".\win32\rc\puzzlum.rc" 
set debugopts= -g 

if exist %log% (
	del %log%
)

set fbopts= -include ".\const.bas"
set libopts= -lib %fbopts% 

echo: >> %log%
echo ===[ CMD Test ]==[ FreeBASIC x86 Linker Utility ]=== >> %log%

echo: >> %log%
echo ===[ CMD Test ]==[ %binary% ]=== >> %log%
%fbc% ".\CMD Test.bas" %debugopts% %fbopts% %guiopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Now attempting to load the "CMD Test" executable.. ]=== >> %log%

exit /b 0

:failed
echo failed to compile 1>&2
pause >nul
exit /b 1

:caption
echo ===[ %header% ]==[ %type% ]=== >> %log%
pause >nul
exit /b 1
