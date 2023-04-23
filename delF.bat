@echo off
if "%1" == "/?" (
	echo Deleting all files from the folder
	echo delF.bat folder_path [/p] [/w] [/o] [/t] [/a] [/s]
	echo and other atributes for 'dir' 
	echo Especially I should highlight
	echo /ah - show hidden
	echo /aa - show archive
	echo /ar - show readonly
	exit /b 1
)
if "%1" == "" (
    echo Folder wasn't stated
    exit /b 2
)

if not exist "%1" (
    echo Directory not found: %1
    exit /b 3
)
setlocal enableextensions

set params = %*
echo Deleting all files from directory %1
for /f "tokens=*" %%a in ('dir /b %params% "%1"') do (
    echo Deleting file: "%%a"
    del "%1\%%a"
)
echo All files deleted from directory %1
endlocal
exit /b 0