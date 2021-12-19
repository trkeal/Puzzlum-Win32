@echo off
call ".\win32\compile32.cmd"
type ".\win32\compile32.log"
"puzzlum-win32.exe"