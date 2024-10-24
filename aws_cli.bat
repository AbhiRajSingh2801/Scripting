@echo off
setlocal

:: Check if Python is installed
echo Checking if Python is installed...
python --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Python is not installed.
    echo Please install Python from: https://www.python.org/downloads/
) else (
    echo Python is installed.
)

:: Check if AWS CLI is installed
echo.
echo Checking if AWS CLI is installed...
aws --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo AWS CLI is not installed.
    echo Please install AWS CLI from: https://aws.amazon.com/cli/
) else (
    echo AWS CLI is installed.
)

echo.
echo Script completed.
pause
