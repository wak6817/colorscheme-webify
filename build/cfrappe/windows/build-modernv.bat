@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cfrappe\modernv\assets" mkdir "%ROOT%\build\dist\cfrappe\modernv\assets"

type "%ROOT%\src\cfrappe\colorv\interactions.css" "%ROOT%\src\cfrappe\colorv\other.css" "%ROOT%\src\cfrappe\colorv\text.css" "%ROOT%\src\cfrappe\modernv\fonts.css" "%ROOT%\src\cfrappe\modernv\margins.css" "%ROOT%\src\cfrappe\trans.css" "%ROOT%\cfrappe\api.css"> "%ROOT%\build\dist\cfrappe\modernv\style.css"
copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\cfrappe\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\cfrappe\modernv\assets\" > nul
