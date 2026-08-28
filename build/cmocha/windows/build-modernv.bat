@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmocha\modernv" mkdir "%ROOT%\build\dist\cmocha\modernv"

type "%ROOT%\src\cmocha\colorv\interactions.css" "%ROOT%\src\cmocha\colorv\other.css" "%ROOT%\src\cmocha\colorv\text.css" "%ROOT%\src\cmocha\modernv\fonts.css" "%ROOT%\src\cmocha\modernv\margins.css" "%ROOT%\src\cmocha\trans.css" "%ROOT%\src\cmocha\api.css" > "%ROOT%\build\dist\cmocha\modernv\style.css"
