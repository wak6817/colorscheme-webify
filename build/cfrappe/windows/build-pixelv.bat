@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cfrappe\pixelv\assets" mkdir "%ROOT%\build\dist\cfrappe\pixelv\assets"

type "%ROOT%\src\cfrappe\colorv\interactions.css" "%ROOT%\src\cfrappe\colorv\other.css" "%ROOT%\src\cfrappe\colorv\text.css" "%ROOT%\src\cfrappe\pixelv\fonts.css" "%ROOT%\src\cfrappe\pixelv\margins.css" "%ROOT%\src\cfrappe\trans.css" "%ROOT%\src\cfrappe\api.css"> "%ROOT%\build\dist\cfrappe\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\cfrappe\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\cfrappe\pixelv\assets\" > nul
