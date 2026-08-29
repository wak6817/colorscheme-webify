@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmacchiato\pixelv\assets" mkdir "%ROOT%\build\dist\cmacchiato\pixelv\assets"

type "%ROOT%\themes\cmacchiato\colorv\interactions.css" "%ROOT%\themes\cmacchiato\colorv\other.css" "%ROOT%\themes\cmacchiato\colorv\text.css" "%ROOT%\themes\cmacchiato\pixelv\fonts.css" "%ROOT%\themes\cmacchiato\pixelv\margins.css" "%ROOT%\themes\cmacchiato\trans.css" "%ROOT%\themes\cmacchiato\api.css"> "%ROOT%\build\dist\cmacchiato\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\cmacchiato\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\cmacchiato\pixelv\assets\" > nul
