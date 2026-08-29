@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmocha\pixelv\assets" mkdir "%ROOT%\build\dist\cmocha\pixelv\assets"

type "%ROOT%\src\cmocha\colorv\interactions.css" "%ROOT%\src\cmocha\colorv\other.css" "%ROOT%\src\cmocha\colorv\text.css" "%ROOT%\src\cmocha\pixelv\fonts.css" "%ROOT%\src\cmocha\pixelv\margins.css" "%ROOT%\src\cmocha\trans.css" "%ROOT%\src\cmocha\api.css" > "%ROOT%\build\dist\cmocha\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\cmocha\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\cmocha\pixelv\assets\" > nul
