@echo off
setlocal

rem Define paths for the files
set "batchFile=NewFolder.bat"
set "regFile=NewFolder.reg"
set "windowsDir=C:\Windows"

rem Check if the NewFolder.bat file exists in the current directory
if not exist "%batchFile%" (
    echo Error: %batchFile% not found. Please make sure it exists in the current directory.
    exit /b 1
)

rem Check if the RightClick_NewFolder.bat.reg file exists in the current directory
if not exist "%regFile%" (
    echo Error: %regFile% not found. Please make sure it exists in the current directory.
    exit /b 1
)

rem Copy the NewFolder.bat file to the Windows directory
copy "%batchFile%" "%windowsDir%" >nul
if errorlevel 1 (
    echo Error: Failed to copy %batchFile% to %windowsDir%.
    exit /b 1
)

rem Merge the RightClick_NewFolder.bat.reg file into the registry
regedit /s "%regFile%"
if errorlevel 1 (
    echo Error: Failed to register the context menu command.
    exit /b 1
)

rem Verify the NewFolder.bat file is in the Windows directory
if exist "%windowsDir%\%batchFile%" (
    echo %batchFile% successfully copied to %windowsDir%.
) else (
    echo Error: Failed to copy %batchFile% to %windowsDir%.
    exit /b 1
)

rem Verify the registry update was successful
reg query HKEY_CLASSES_ROOT\Directory\Background\shell\NewFolder >nul
if errorlevel 1 (
    echo Error: Failed to register the context menu in the registry.
    exit /b 1
) else (
    echo Registry successfully updated. "New Folder" option added to the context menu.
)

rem Final success message
echo Setup completed successfully.
pause
exit /b 0
