@echo off
:: SlidSum Launcher for Windows
title SlidSum CLI

cd /d %~dp0

if exist .venv\Scripts\activate.bat (
    call .venv\Scripts\activate.bat
) else if exist venv\Scripts\activate.bat (
    call venv\Scripts\activate.bat
)

python slidsum.py

if %ERRORLEVEL% neq 0 (
    echo.
    echo [!] Application crashed or failed to start.
    pause
)
