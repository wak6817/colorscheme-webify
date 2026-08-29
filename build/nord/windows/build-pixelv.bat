@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\nord\pixelv\assets" mkdir "%ROOT%\build\dist\nord\pixelv\assets"

type "%ROOT%\themes\nord\colorv\interactions.css" "%ROOT%\themes\nord\colorv\other.css" "%ROOT%\themes\nord\colorv\text.css" "%ROOT%\themes\nord\pixelv\fonts.css" "%ROOT%\themes\nord\pixelv\margins.css" "%ROOT%\themes\nord\trans.css" "%ROOT%\themes\nord\api.css" > "%ROOT%\build\dist\nord\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\nord\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\nord\pixelv\assets\" > nul
