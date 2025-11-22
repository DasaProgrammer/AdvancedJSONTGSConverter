@echo off
setlocal ENABLEDELAYEDEXPANSION

echo ==========================================
echo   Lottie JSON -> Telegram TGS Converter
echo ==========================================
echo.

:: Make sure a file was dropped
if "%~1"=="" (
    echo Usage:
    echo   Drag a Lottie .json file onto this .bat file.
    echo   It will create a .tgs file in the same folder.
    echo.
    pause
    exit /b 1
)

:: Input file
set "INPUT=%~1"

:: Extract directory and base name
for %%F in ("%INPUT%") do (
    set "DIR=%%~dpF"
    set "NAME=%%~nF"
)

set "OUTPUT=%DIR%%NAME%.tgs"

echo Input file:  "%INPUT%"
echo Output file: "%OUTPUT%"
echo.

:: Detect python or py
where python >nul 2>&1
if %errorlevel%==0 (
    set PYTHON=python
) else (
    where py >nul 2>&1
    if %errorlevel%==0 (
        set PYTHON=py
    ) else (
        echo ERROR: Python is not installed or not on PATH.
        echo.
        echo Install Python from https://www.python.org/downloads/
        echo Make sure to check "Add Python to PATH" during installation.
        echo.
        pause
        exit /b 1
    )
)

echo Using Python: %PYTHON%
echo.

:: Check if lottie_convert.py exists on PATH
where lottie_convert.py >nul 2>&1
if errorlevel 1 (
    echo ERROR: "lottie_convert.py" not found on PATH.
    echo.
    echo Install the Lottie CLI with:
    echo     pip install "lottie[cli]"
    echo.
    echo Then restart your terminal or reboot to update PATH.
    echo.
    pause
    exit /b 1
)

echo Running converter...
echo.

%PYTHON% - <<EOF

# Just display version info nicely
import os, subprocess
try:
    subprocess.run(["lottie_convert.py", "--help"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
except Exception:
    pass

EOF

lottie_convert.py "%INPUT%" "%OUTPUT%" --output-format tgs --fps 60 --optimize 2

if errorlevel 1 (
    echo.
    echo Conversion FAILED.
    echo Check:
    echo   - JSON file is valid Lottie format
    echo   - Your Python/Lottie CLI installation
    echo.
) else (
    echo.
    echo Conversion SUCCESSFUL!
    echo Created:
    echo   "%OUTPUT%"
)

echo.
pause
endlocal
