@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\nord\modernv" mkdir "%ROOT%\build\dist\nord\modernv"

type "%ROOT%\src\nord\colorv\interactions.css" "%ROOT%\src\nord\colorv\other.css" "%ROOT%\src\nord\modernv\fonts.css" "%ROOT%\src\nord\modernv\margins.css" "%ROOT%\src\nord\trans.css" "%ROOT%\src\nord\api.css" > "%ROOT%\build\dist\nord\modernv\style.css"
