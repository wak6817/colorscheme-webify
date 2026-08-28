@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\dracula\modernv" mkdir "%ROOT%\build\dist\dracula\modernv"

type "%ROOT%\src\dracula\colorv\interactions.css" "%ROOT%\src\dracula\colorv\other.css" "%ROOT%\src\dracula\colorv\text.css" "%ROOT%\src\dracula\modernv\fonts.css" "%ROOT%\src\dracula\modernv\margins.css" "%ROOT%\src\dracula\trans.css" "%ROOT%\src\dracula\api.css" > "%ROOT%\build\dist\dracula\modernv\style.css"
