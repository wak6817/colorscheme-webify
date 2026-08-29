@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\alucard\pixelv\assets" mkdir "%ROOT%\build\dist\alucard\pixelv\assets"

type "%ROOT%\themes\alucard\colorv\interactions.css" "%ROOT%\themes\alucard\colorv\other.css" "%ROOT%\themes\alucard\colorv\text.css" "%ROOT%\themes\alucard\pixelv\fonts.css" "%ROOT%\themes\alucard\pixelv\margins.css" "%ROOT%\themes\alucard\trans.css" "%ROOT%\themes\alucard\api.css" > "%ROOT%\build\dist\alucard\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\alucard\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\alucard\pixelv\assets\" > nul
