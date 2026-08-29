@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmocha\pixelv\assets" mkdir "%ROOT%\build\dist\cmocha\pixelv\assets"

type "%ROOT%\themes\cmocha\colorv\interactions.css" "%ROOT%\themes\cmocha\colorv\other.css" "%ROOT%\themes\cmocha\colorv\text.css" "%ROOT%\themes\cmocha\pixelv\fonts.css" "%ROOT%\themes\cmocha\pixelv\margins.css" "%ROOT%\themes\cmocha\trans.css" "%ROOT%\themes\cmocha\api.css" > "%ROOT%\build\dist\cmocha\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\cmocha\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\cmocha\pixelv\assets\" > nul
