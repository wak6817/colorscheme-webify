@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\clatte\colorv" mkdir "%ROOT%\build\dist\clatte\colorv"

type "%ROOT%\themes\clatte\colorv\interactions.css" "%ROOT%\themes\clatte\colorv\other.css" "%ROOT%\themes\clatte\colorv\text.css" "%ROOT%\themes\clatte\trans.css" "%ROOT%\themes\clatte\api.css"> "%ROOT%\build\dist\clatte\colorv\style.css"