@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
call "%ROOT%\build\debug-windows.bat" "%ROOT%" "%ROOT%\build\dist\cmacchiato\pixelv\style.css"

if not exist "%ROOT%\build\dist\cmacchiato\pixelv\assets" mkdir "%ROOT%\build\dist\cmacchiato\pixelv\assets"

type "%ROOT%\src\cmacchiato\colorv\interactions.css" "%ROOT%\src\cmacchiato\colorv\other.css" "%ROOT%\src\cmacchiato\colorv\text.css" "%ROOT%\src\cmacchiato\pixelv\fonts.css" "%ROOT%\src\cmacchiato\pixelv\margins.css" "%ROOT%\src\cmacchiato\trans.css" > "%ROOT%\build\dist\cmacchiato\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\cmacchiato\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\cmacchiato\pixelv\assets\" > nul
