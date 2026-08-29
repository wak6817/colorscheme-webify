@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\alucard\modernv\assets" mkdir "%ROOT%\build\dist\alucard\modernv\assets"

type "%ROOT%\src\alucard\colorv\interactions.css" "%ROOT%\src\alucard\colorv\other.css" "%ROOT%\src\alucard\colorv\text.css" "%ROOT%\src\alucard\modernv\fonts.css" "%ROOT%\src\alucard\modernv\margins.css" "%ROOT%\src\alucard\trans.css" "%ROOT%\src\alucard\api.css" > "%ROOT%\build\dist\alucard\modernv\style.css"
copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\alucard\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\alucard\modernv\assets\" > nul
