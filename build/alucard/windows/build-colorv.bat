@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\alucard\colorv" mkdir "%ROOT%\build\dist\alucard\colorv"

type "%ROOT%\themes\alucard\colorv\interactions.css" "%ROOT%\themes\alucard\colorv\other.css" "%ROOT%\themes\alucard\colorv\text.css" "%ROOT%\themes\alucard\trans.css" "%ROOT%\themes\alucard\api.css" > "%ROOT%\build\dist\alucard\colorv\style.css"
