@echo off

echo Please install App Installer from the Microsoft Store if winget is unavailable.
echo.
echo Installing Lua with winget...

winget source update
winget install --id=Lua.Lua -e

echo.
echo Lua installation complete.
lua -v

pause