@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
call "%ROOT%\build\debug-windows.bat" "%ROOT%" "%ROOT%\build\dist\dracula\pixelv\style.css"

if not exist "%ROOT%\build\dist\dracula\pixelv\assets" mkdir "%ROOT%\build\dist\dracula\pixelv\assets"

type "%ROOT%\src\dracula\colorv\interactions.css" "%ROOT%\src\dracula\colorv\other.css" "%ROOT%\src\dracula\colorv\text.css" "%ROOT%\src\dracula\pixelv\fonts.css" "%ROOT%\src\dracula\pixelv\margins.css" "%ROOT%\src\dracula\trans.css" "%ROOT%\src\dracula\api.css" > "%ROOT%\build\dist\dracula\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\dracula\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\dracula\pixelv\assets\" > nul
