@echo off

PATH "C:\FreeBASIC\"

set fbc="fbc32.exe"
set log=".\win32\compile32.log"

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
echo ===[ Puzzlum-Win32 ]==[ FreeBASIC x86 Linker Utility ]=== >> %log%

rem echo: >> %log%
rem echo ===[ Constants ]==[ %static% ]=== >> %log%
rem %fbc% "const.bas" %libopts% >> %log% 2>&1

echo: >> %log%
echo ===[ Puzzlum / Constants ]==[ %static% ]=== >> %log%
%fbc% ".\const.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Common ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-common.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / CMD Test ]==[ %static% ]=== >> %log%
%fbc% ".\CMD-Test.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Central Debug ]==[ %static% ]=== >> %log%
%fbc% ".\central-debug.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / VGA Table ]==[ %static% ]=== >> %log%
%fbc% ".\VGA_Table.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Names Table ]==[ %static% ]=== >> %log%
%fbc% ".\Names.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Composite Layer Video ]==[ %static% ]=== >> %log%
%fbc% ".\CLV.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ FBImage ]==[ %static% ]=== >> %log%
%fbc% ".\fbimage.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Outro ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-outro.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Vars ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-vars.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Loaders ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-loaders.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Subs ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-subs.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Entity Loader ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-entity-loader.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Maps ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-maps.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Map Viewer ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-map-viewer.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Test ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-test.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Profile Manip ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-profile-manip.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Main ]==[ %static% ]=== >> %log%
%fbc% ".\puzzlum-main.bas" %debugopts% %libopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Puzzlum / Win32 ]==[ %binary% ]=== >> %log%
%fbc% ".\puzzlum-win32.bas" %debugopts% %fbopts% %guiopts% >> %log% 2>&1
if errorlevel 1 goto :failed

echo: >> %log%
echo ===[ Now attempting to load the "puzzlum-win32" executable.. ]=== >> %log%

exit /b 0

:failed
echo failed to compile 1>&2
pause >nul
exit /b 1

:caption
echo ===[ %header% ]==[ %type% ]=== >> %log%
pause >nul
exit /b 1
