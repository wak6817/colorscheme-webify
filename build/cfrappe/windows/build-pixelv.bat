@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cfrappe\pixelv\assets" mkdir "%ROOT%\build\dist\cfrappe\pixelv\assets"

type "%ROOT%\themes\cfrappe\colorv\interactions.css" "%ROOT%\themes\cfrappe\colorv\other.css" "%ROOT%\themes\cfrappe\colorv\text.css" "%ROOT%\themes\cfrappe\pixelv\fonts.css" "%ROOT%\themes\cfrappe\pixelv\margins.css" "%ROOT%\themes\cfrappe\trans.css" "%ROOT%\themes\cfrappe\api.css"> "%ROOT%\build\dist\cfrappe\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\cfrappe\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\cfrappe\pixelv\assets\" > nul
