@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
call "%ROOT%\build\debug-windows.bat" "%ROOT%" "%ROOT%\build\dist\cmocha\colorv\style.css"

if not exist "%ROOT%\build\dist\cmocha\colorv" mkdir "%ROOT%\build\dist\cmocha\colorv"

type "%ROOT%\src\cmocha\colorv\interactions.css" "%ROOT%\src\cmocha\colorv\other.css" "%ROOT%\src\cmocha\colorv\text.css" "%ROOT%\src\cmocha\trans.css" > "%ROOT%\build\dist\cmocha\colorv\style.css"
