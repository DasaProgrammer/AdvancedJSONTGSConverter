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

:: Input file from drag-and-drop
set "INPUT=%~1"

:: Get directory and base name (no extension)
for %%F in ("%INPUT%") do (
    set "DIR=%%~dpF"
    set "NAME=%%~nF"
)

set "OUTPUT=%DIR%%NAME%.tgs"

echo Input file:  "%INPUT%"
echo Output file: "%OUTPUT%"
echo.

:: Check if lottie_convert.py is available on PATH
where lottie_convert.py >nul 2>&1
if errorlevel 1 (
    echo ERROR: Could not find "lottie_convert.py" on PATH.
    echo.
    echo Make sure you've installed the Lottie CLI with:
    echo   pip install "lottie[cli]"
    echo and that Python/Scripts is on your PATH.
    echo.
    pause
    exit /b 1
)

echo Running:
echo   lottie_convert.py "%INPUT%" "%OUTPUT%" --output-format tgs --fps 60 --optimize 2
echo.

lottie_convert.py "%INPUT%" "%OUTPUT%" --output-format tgs --fps 60 --optimize 2

if errorlevel 1 (
    echo.
    echo Conversion FAILED.
    echo Check the error message above and verify:
    echo   - The JSON file is valid Lottie
    echo   - Python 3 and lottie[cli] are correctly installed
) else (
    echo.
    echo Conversion SUCCESSFUL!
    echo Created:
    echo   "%OUTPUT%"
)

echo.
pause
endlocal
