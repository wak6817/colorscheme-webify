@echo off

winget source update
winget install --id=Lua.Lua -e
winget install -e --id Git.Git

echo.
echo Lua installation complete.
lua -v

pause