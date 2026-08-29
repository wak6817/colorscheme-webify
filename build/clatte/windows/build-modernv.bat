@echo off
set "ROOT=%~dp0..\..\.."
for %%I in ("%ROOT%") do set "ROOT=%%~fI"
if not exist "%ROOT%\build\dist\clatte\modernv\assets" mkdir "%ROOT%\build\dist\clatte\modernv\assets"

type "%ROOT%\src\clatte\colorv\interactions.css" "%ROOT%\src\clatte\colorv\other.css" "%ROOT%\src\clatte\colorv\text.css" "%ROOT%\src\clatte\modernv\fonts.css" "%ROOT%\src\clatte\modernv\margins.css" "%ROOT%\src\clatte\trans.css" "%ROOT%\src\clatte\trans.css" "%ROOT%\src\templates.css" > "%ROOT%\build\dist\clatte\modernv\style.css"

copy /y "%ROOT%\sounds\modernv\sound.js" "%ROOT%\build\dist\clatte\modernv\" > nul
copy /y "%ROOT%\sounds\modernv\clickbtn.wav" "%ROOT%\build\dist\clatte\modernv\assets\" > nul
