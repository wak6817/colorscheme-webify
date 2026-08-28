@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
call "%ROOT%\build\debug-windows.bat" "%ROOT%" "%ROOT%\build\dist\nord\pixelv\style.css"

if not exist "%ROOT%\build\dist\nord\pixelv\assets" mkdir "%ROOT%\build\dist\nord\pixelv\assets"

type "%ROOT%\src\nord\colorv\interactions.css" "%ROOT%\src\nord\colorv\other.css" "%ROOT%\src\nord\colorv\text.css" "%ROOT%\src\nord\pixelv\fonts.css" "%ROOT%\src\nord\pixelv\margins.css" "%ROOT%\src\nord\trans.css" "%ROOT%\src\nord\api.css" > "%ROOT%\build\dist\nord\pixelv\style.css"
copy /y "%ROOT%\sounds\pixelv\sound.js" "%ROOT%\build\dist\nord\pixelv\" > nul
copy /y "%ROOT%\sounds\pixelv\clickbtn.wav" "%ROOT%\build\dist\nord\pixelv\assets\" > nul
