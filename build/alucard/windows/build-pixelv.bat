@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\alucard\pixelv\assets" mkdir "%ROOT%\build\dist\alucard\pixelv\assets"

type "%ROOT%\src\alucard\colorv\interactions.css" "%ROOT%\src\alucard\colorv\other.css" "%ROOT%\src\alucard\colorv\text.css" "%ROOT%\src\alucard\pixelv\fonts.css" "%ROOT%\src\alucard\pixelv\margins.css" "%ROOT%\src\alucard\trans.css" "%ROOT%\src\alucard\api.css" "%ROOT%\src\templates.css" > "%ROOT%\build\dist\alucard\pixelv\style.css"

copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\alucard\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\alucard\pixelv\assets\" > nul
