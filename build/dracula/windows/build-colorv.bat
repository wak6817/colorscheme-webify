@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\dracula\colorv" mkdir "%ROOT%\build\dist\dracula\colorv"

type "%ROOT%\src\dracula\colorv\interactions.css" "%ROOT%\src\dracula\colorv\other.css" "%ROOT%\src\dracula\colorv\text.css" "%ROOT%\src\dracula\trans.css" "%ROOT%\src\dracula\api.css" "%ROOT%\src\templates.css" > "%ROOT%\build\dist\dracula\colorv\style.css"
