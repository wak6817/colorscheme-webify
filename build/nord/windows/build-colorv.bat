@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\nord\colorv" mkdir "%ROOT%\build\dist\nord\colorv"

type "%ROOT%\themes\nord\colorv\interactions.css" "%ROOT%\themes\nord\colorv\other.css" "%ROOT%\themes\nord\colorv\text.css" "%ROOT%\themes\nord\trans.css" "%ROOT%\themes\nord\api.css" > "%ROOT%\build\dist\nord\colorv\style.css"
