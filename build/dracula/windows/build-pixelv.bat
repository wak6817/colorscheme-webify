@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\dracula\pixelv\assets" mkdir "%ROOT%\build\dist\dracula\pixelv\assets"

type "%ROOT%\themes\dracula\colorv\interactions.css" "%ROOT%\themes\dracula\colorv\other.css" "%ROOT%\themes\dracula\colorv\text.css" "%ROOT%\themes\dracula\pixelv\fonts.css" "%ROOT%\themes\dracula\pixelv\margins.css" "%ROOT%\themes\dracula\trans.css" "%ROOT%\themes\dracula\api.css" > "%ROOT%\build\dist\dracula\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\dracula\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\dracula\pixelv\assets\" > nul
