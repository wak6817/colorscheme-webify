@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmacchiato\colorv" mkdir "%ROOT%\build\dist\cmacchiato\colorv"

type "%ROOT%\src\cmacchiato\colorv\interactions.css" "%ROOT%\src\cmacchiato\colorv\other.css" "%ROOT%\src\cmacchiato\colorv\text.css" "%ROOT%\src\cmacchiato\trans.css" "%ROOT%\src\cmacchiato\api.css"> "%ROOT%\build\dist\cmacchiato\colorv\style.css"