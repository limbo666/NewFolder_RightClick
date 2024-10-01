@echo off
setlocal

rem Get the path where the right-click occurred, ensuring quotes are handled
set "folderPath=%~1"

rem Check if a path was provided
if "%folderPath%"=="" (
    echo No folder path was provided.
    exit /b 1
)

rem Define the base folder name
set "newFolderName=New Folder"

rem Initialize a counter for unique folder names
set /a counter=1

rem Loop to find a unique folder name
:findUniqueName
if exist "%folderPath%\%newFolderName%" (
    set "newFolderName=New Folder %counter%"
    set /a counter+=1
    goto findUniqueName
)

rem Create the new folder, ensuring paths with spaces are handled
md "%folderPath%\%newFolderName%"

echo Folder "%newFolderName%" created at "%folderPath%".
exit /b 0
