@echo off
title ToolInjector v2.0.0 - Windows Desktop Application
cd /d "%~dp0"
py gui_app.py
if errorlevel 1 (
    echo.
    echo Python failed or customtkinter is missing. Installing customtkinter...
    py -m pip install customtkinter Pillow
    py gui_app.py
)
pause
