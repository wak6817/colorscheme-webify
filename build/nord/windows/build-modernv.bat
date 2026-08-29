@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\nord\modernv\assets" mkdir "%ROOT%\build\dist\nord\modernv\assets"

type "%ROOT%\themes\nord\colorv\interactions.css" "%ROOT%\themes\nord\colorv\other.css" "%ROOT%\themes\nord\modernv\fonts.css" "%ROOT%\themes\nord\modernv\margins.css" "%ROOT%\themes\nord\trans.css" "%ROOT%\themes\nord\api.css" > "%ROOT%\build\dist\nord\modernv\style.css"
copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\nord\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\nord\modernv\assets\" > nul
