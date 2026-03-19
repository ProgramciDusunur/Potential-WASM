@echo off
set "ORIGINAL_SRC=c:\Users\erena\CLionProjects\Potential\src"
set "DEST_SRC=source"

echo Syncing source from %ORIGINAL_SRC%...

if not exist %DEST_SRC% mkdir %DEST_SRC%

xcopy /E /I /Y "%ORIGINAL_SRC%\*" "%DEST_SRC%\"

echo Applying Web Optimizations...

:: Use a simple PowerShell command to re-patch if necessary, 
:: but for now the user can just use this to bring in new files.
:: We can also automate the patching here if needed.

echo Sync Complete!
pause
