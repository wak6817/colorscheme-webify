@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cfrappe\colorv" mkdir "%ROOT%\build\dist\cfrappe\colorv"

type "%ROOT%\src\cfrappe\colorv\interactions.css" "%ROOT%\src\cfrappe\colorv\other.css" "%ROOT%\src\cfrappe\colorv\text.css" "%ROOT%\src\cfrappe\trans.css" "%ROOT%\src\cfrappe\api.css"> "%ROOT%\build\dist\cfrappe\colorv\style.css"
