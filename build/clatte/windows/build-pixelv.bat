@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\clatte\pixelv\assets" mkdir "%ROOT%\build\dist\clatte\pixelv\assets"

type "%ROOT%\themes\clatte\colorv\interactions.css" "%ROOT%\themes\clatte\colorv\other.css" "%ROOT%\themes\clatte\colorv\text.css" "%ROOT%\themes\clatte\pixelv\fonts.css" "%ROOT%\themes\clatte\pixelv\margins.css" "%ROOT%\themes\clatte\trans.css" "%ROOT%\themes\clatte\api.css"> "%ROOT%\build\dist\clatte\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\clatte\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\clatte\pixelv\assets\" > nul
