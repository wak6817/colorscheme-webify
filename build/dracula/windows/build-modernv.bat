@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\dracula\modernv\assets" mkdir "%ROOT%\build\dist\dracula\modernv\assets"

type "%ROOT%\themes\dracula\colorv\interactions.css" "%ROOT%\themes\dracula\colorv\other.css" "%ROOT%\themes\dracula\colorv\text.css" "%ROOT%\themes\dracula\modernv\fonts.css" "%ROOT%\themes\dracula\modernv\margins.css" "%ROOT%\themes\dracula\trans.css" "%ROOT%\themes\dracula\api.css" > "%ROOT%\build\dist\dracula\modernv\style.css"
copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\dracula\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\dracula\modernv\assets\" > nul
