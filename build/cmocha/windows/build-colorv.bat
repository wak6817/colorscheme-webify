@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmocha\colorv" mkdir "%ROOT%\build\dist\cmocha\colorv"

type "%ROOT%\src\cmocha\colorv\interactions.css" "%ROOT%\src\cmocha\colorv\other.css" "%ROOT%\src\cmocha\colorv\text.css" "%ROOT%\src\cmocha\trans.css" "%ROOT%\src\cmocha\api.css" "%ROOT%\src\templates.css" > "%ROOT%\build\dist\cmocha\colorv\style.css"
