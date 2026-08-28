@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\clatte\pixelv\assets" mkdir "%ROOT%\build\dist\clatte\pixelv\assets"

type "%ROOT%\src\clatte\colorv\interactions.css" "%ROOT%\src\clatte\colorv\other.css" "%ROOT%\src\clatte\colorv\text.css" "%ROOT%\src\clatte\pixelv\fonts.css" "%ROOT%\src\clatte\pixelv\margins.css" "%ROOT%\src\clatte\trans.css" "%ROOT%\src\clatte\api.css"> "%ROOT%\build\dist\clatte\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\clatte\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\clatte\pixelv\assets\" > nul
