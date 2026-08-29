@echo off

winget source update
winget install -e --id Git.Git
winget install --id=Lua.Lua -e
winget install --id Python.Python

echo.
pause
