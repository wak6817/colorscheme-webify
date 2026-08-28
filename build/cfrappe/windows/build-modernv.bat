@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
call "%ROOT%\build\debug-windows.bat" "%ROOT%" "%ROOT%\build\dist\cfrappe\modernv\style.css"

if not exist "%ROOT%\build\dist\cfrappe\modernv" mkdir "%ROOT%\build\dist\cfrappe\modernv"

type "%ROOT%\src\cfrappe\colorv\interactions.css" "%ROOT%\src\cfrappe\colorv\other.css" "%ROOT%\src\cfrappe\colorv\text.css" "%ROOT%\src\cfrappe\modernv\fonts.css" "%ROOT%\src\cfrappe\modernv\margins.css" "%ROOT%\src\cfrappe\trans.css" "%ROOT%\cfrappe\api.css"> "%ROOT%\build\dist\cfrappe\modernv\style.css"
