@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmocha\modernv\assets" mkdir "%ROOT%\build\dist\cmocha\modernv\assets"

type "%ROOT%\themes\cmocha\colorv\interactions.css" "%ROOT%\themes\cmocha\colorv\other.css" "%ROOT%\themes\cmocha\colorv\text.css" "%ROOT%\themes\cmocha\modernv\fonts.css" "%ROOT%\themes\cmocha\modernv\margins.css" "%ROOT%\themes\cmocha\trans.css" "%ROOT%\themes\cmocha\api.css" > "%ROOT%\build\dist\cmocha\modernv\style.css"
copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\cmocha\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\cmocha\modernv\assets\" > nul
