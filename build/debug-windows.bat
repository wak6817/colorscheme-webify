@echo off
set "BUILD_DEBUG="
for /f "tokens=1,* delims==" %%A in ('findstr /b "build-debug=" "%~1\config.conf" 2^>nul') do set "BUILD_DEBUG=%%B"
if /i "%BUILD_DEBUG%"=="true" (
    echo root: %~1
    echo building: %~2 [####################] 100%%
)
