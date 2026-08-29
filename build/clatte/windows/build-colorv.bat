@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\clatte\colorv" mkdir "%ROOT%\build\dist\clatte\colorv"

type "%ROOT%\src\clatte\colorv\interactions.css" "%ROOT%\src\clatte\colorv\other.css" "%ROOT%\src\clatte\colorv\text.css" "%ROOT%\src\clatte\trans.css" "%ROOT%\src\clatte\api.css" "%ROOT%\src\templates.css" > "%ROOT%\build\dist\clatte\colorv\style.css"