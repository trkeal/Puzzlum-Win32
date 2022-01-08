@echo off
call ".\win32\compile CMD Test.cmd"
type ".\win32\compile CMD Test.log"
"CMD Test.exe"