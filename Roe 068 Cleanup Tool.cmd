echo === Roe068 Cleanup Tool ===

echo === Deleting 32bit Play/Compile Logs ===
del "Play Win32.log"
del "compile-win32.log"

echo === Deleting 64bit Play/Compile Logs ===

del "Play Win64.log"
del "compile-win64.log"

echo === Deleting Assembler Artifacts ===

del "TRK-PNG-Support-Win32-Static.asm"

del "names.asm"
del "const.asm"
del "clv.asm"
del "fbimage.asm"

echo === Deleting Core 32bit Assembler Artifacts ===

del "Roe068-fbc32.asm"

echo === Deleting Core 64bit Assembler Artifacts ===

del "Roe068-fbc64.asm"
