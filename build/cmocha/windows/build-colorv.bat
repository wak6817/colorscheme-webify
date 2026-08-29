@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\cmocha\colorv" mkdir "%ROOT%\build\dist\cmocha\colorv"

type "%ROOT%\themes\cmocha\colorv\interactions.css" "%ROOT%\themes\cmocha\colorv\other.css" "%ROOT%\themes\cmocha\colorv\text.css" "%ROOT%\themes\cmocha\trans.css" "%ROOT%\themes\cmocha\api.css" > "%ROOT%\build\dist\cmocha\colorv\style.css"
