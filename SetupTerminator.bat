@echo off
setlocal

echo ==========================================
echo   RunTerminator Setup and Extraction
echo ==========================================

:: 1. Check if the zip file exists
if not exist "RunTerminator.zip" (
    echo [!] Error: RunTerminator.zip not found in this folder.
    pause
    exit /b
)

:: 2. Extract the zip file
echo [*] Extracting RunTerminator.zip...
powershell -Command "Expand-Archive -Path '.\RunTerminator.zip' -DestinationPath '.\ExtractedFiles' -Force"

if %errorlevel% neq 0 (
    echo [!] Extraction failed.
    pause
    exit /b
)
echo [+] Extraction successful.

:: 3. Install requirements
echo [*] Installing dependencies (keyboard, psutil, pywin32)...
pip install keyboard psutil pywin32

if %errorlevel% neq 0 (
    echo [!] Dependency installation failed. Ensure Python and Pip are installed.
    pause
    exit /b
)

echo [+] All dependencies installed successfully.
echo.
echo Process complete. Your files are in the 'ExtractedFiles' folder.
pause