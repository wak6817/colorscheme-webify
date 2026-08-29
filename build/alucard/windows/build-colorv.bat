@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\alucard\colorv" mkdir "%ROOT%\build\dist\alucard\colorv"

type "%ROOT%\src\alucard\colorv\interactions.css" "%ROOT%\src\alucard\colorv\other.css" "%ROOT%\src\alucard\colorv\text.css" "%ROOT%\src\alucard\trans.css" "%ROOT%\src\alucard\api.css" > "%ROOT%\build\dist\alucard\colorv\style.css"
