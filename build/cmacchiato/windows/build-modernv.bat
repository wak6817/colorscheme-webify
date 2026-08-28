@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmacchiato\modernv\assets" mkdir "%ROOT%\build\dist\cmacchiato\modernv\assets"

type "%ROOT%\src\cmacchiato\colorv\interactions.css" "%ROOT%\src\cmacchiato\colorv\other.css" "%ROOT%\src\cmacchiato\colorv\text.css" "%ROOT%\src\cmacchiato\modernv\fonts.css" "%ROOT%\src\cmacchiato\modernv\margins.css" "%ROOT%\src\cmacchiato\trans.css" "%ROOT%\src\cmacchiato\api.css"> "%ROOT%\build\dist\cmacchiato\modernv\style.css"
copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\cmacchiato\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\cmacchiato\modernv\assets\" > nul
