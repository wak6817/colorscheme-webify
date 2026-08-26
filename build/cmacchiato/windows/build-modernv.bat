@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"

if not exist "%ROOT%\build\dist\cmacchiato\modernv" mkdir "%ROOT%\build\dist\cmacchiato\modernv"

type "%ROOT%\src\cmacchiato\colorv\interactions.css" "%ROOT%\src\cmacchiato\colorv\other.css" "%ROOT%\src\cmacchiato\colorv\text.css" "%ROOT%\src\cmacchiato\modernv\fonts.css" "%ROOT%\src\cmacchiato\modernv\margins.css" "%ROOT%\src\cmacchiato\trans.css" > "%ROOT%\build\dist\cmacchiato\modernv\style.css"
