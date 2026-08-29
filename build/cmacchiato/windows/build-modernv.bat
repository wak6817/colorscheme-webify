@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmacchiato\modernv\assets" mkdir "%ROOT%\build\dist\cmacchiato\modernv\assets"

type "%ROOT%\themes\cmacchiato\colorv\interactions.css" "%ROOT%\themes\cmacchiato\colorv\other.css" "%ROOT%\themes\cmacchiato\colorv\text.css" "%ROOT%\themes\cmacchiato\modernv\fonts.css" "%ROOT%\themes\cmacchiato\modernv\margins.css" "%ROOT%\themes\cmacchiato\trans.css" "%ROOT%\themes\cmacchiato\api.css"> "%ROOT%\build\dist\cmacchiato\modernv\style.css"
copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\cmacchiato\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\cmacchiato\modernv\assets\" > nul
