@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\dracula\colorv" mkdir "%ROOT%\build\dist\dracula\colorv"

type "%ROOT%\themes\dracula\colorv\interactions.css" "%ROOT%\themes\dracula\colorv\other.css" "%ROOT%\themes\dracula\colorv\text.css" "%ROOT%\themes\dracula\trans.css" "%ROOT%\themes\dracula\api.css" > "%ROOT%\build\dist\dracula\colorv\style.css"
