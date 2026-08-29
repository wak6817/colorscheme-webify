@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cfrappe\modernv\assets" mkdir "%ROOT%\build\dist\cfrappe\modernv\assets"

type "%ROOT%\themes\cfrappe\colorv\interactions.css" "%ROOT%\themes\cfrappe\colorv\other.css" "%ROOT%\themes\cfrappe\colorv\text.css" "%ROOT%\themes\cfrappe\modernv\fonts.css" "%ROOT%\themes\cfrappe\modernv\margins.css" "%ROOT%\themes\cfrappe\trans.css" "%ROOT%\cfrappe\api.css"> "%ROOT%\build\dist\cfrappe\modernv\style.css"
copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\cfrappe\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\cfrappe\modernv\assets\" > nul
