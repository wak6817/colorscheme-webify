@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\clatte\modernv" mkdir "%ROOT%\build\dist\clatte\modernv"

type "%ROOT%\src\clatte\colorv\interactions.css" "%ROOT%\src\clatte\colorv\other.css" "%ROOT%\src\clatte\colorv\text.css" "%ROOT%\src\clatte\modernv\fonts.css" "%ROOT%\src\clatte\modernv\margins.css" "%ROOT%\src\clatte\trans.css" "%ROOT%\src\clatte\trans.css"> "%ROOT%\build\dist\clatte\modernv\style.css"
