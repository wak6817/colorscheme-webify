@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
call "%ROOT%\build\debug-windows.bat" "%ROOT%" "%ROOT%\build\dist\clatte\colorv\style.css"

if not exist "%ROOT%\build\dist\clatte\colorv" mkdir "%ROOT%\build\dist\clatte\colorv"

type "%ROOT%\src\clatte\colorv\interactions.css" "%ROOT%\src\clatte\colorv\other.css" "%ROOT%\src\clatte\colorv\text.css" "%ROOT%\src\clatte\trans.css" > "%ROOT%\build\dist\clatte\colorv\style.css"