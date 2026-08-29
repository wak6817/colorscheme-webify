@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\clatte\modernv\assets" mkdir "%ROOT%\build\dist\clatte\modernv\assets"

type "%ROOT%\themes\clatte\colorv\interactions.css" "%ROOT%\themes\clatte\colorv\other.css" "%ROOT%\themes\clatte\colorv\text.css" "%ROOT%\themes\clatte\modernv\fonts.css" "%ROOT%\themes\clatte\modernv\margins.css" "%ROOT%\themes\clatte\trans.css" "%ROOT%\themes\clatte\trans.css"> "%ROOT%\build\dist\clatte\modernv\style.css"
copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\clatte\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\clatte\modernv\assets\" > nul
