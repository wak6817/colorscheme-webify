@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmacchiato\colorv" mkdir "%ROOT%\build\dist\cmacchiato\colorv"

type "%ROOT%\themes\cmacchiato\colorv\interactions.css" "%ROOT%\themes\cmacchiato\colorv\other.css" "%ROOT%\themes\cmacchiato\colorv\text.css" "%ROOT%\themes\cmacchiato\trans.css" "%ROOT%\themes\cmacchiato\api.css"> "%ROOT%\build\dist\cmacchiato\colorv\style.css"