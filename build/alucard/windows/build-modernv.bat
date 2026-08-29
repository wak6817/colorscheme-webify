@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\alucard\modernv\assets" mkdir "%ROOT%\build\dist\alucard\modernv\assets"

type "%ROOT%\themes\alucard\colorv\interactions.css" "%ROOT%\themes\alucard\colorv\other.css" "%ROOT%\themes\alucard\colorv\text.css" "%ROOT%\themes\alucard\modernv\fonts.css" "%ROOT%\themes\alucard\modernv\margins.css" "%ROOT%\themes\alucard\trans.css" "%ROOT%\themes\alucard\api.css" > "%ROOT%\build\dist\alucard\modernv\style.css"
copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\alucard\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\alucard\modernv\assets\" > nul
