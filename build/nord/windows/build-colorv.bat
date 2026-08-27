@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
call "%ROOT%\build\debug-windows.bat" "%ROOT%" "%ROOT%\build\dist\nord\colorv\style.css"

if not exist "%ROOT%\build\dist\nord\colorv" mkdir "%ROOT%\build\dist\nord\colorv"

type "%ROOT%\src\nord\colorv\interactions.css" "%ROOT%\src\nord\colorv\other.css" "%ROOT%\src\nord\colorv\text.css" "%ROOT%\src\nord\trans.css" > "%ROOT%\build\dist\nord\colorv\style.css"
