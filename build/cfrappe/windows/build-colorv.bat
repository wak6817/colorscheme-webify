@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cfrappe\colorv" mkdir "%ROOT%\build\dist\cfrappe\colorv"

type "%ROOT%\themes\cfrappe\colorv\interactions.css" "%ROOT%\themes\cfrappe\colorv\other.css" "%ROOT%\themes\cfrappe\colorv\text.css" "%ROOT%\themes\cfrappe\trans.css" "%ROOT%\themes\cfrappe\api.css"> "%ROOT%\build\dist\cfrappe\colorv\style.css"
