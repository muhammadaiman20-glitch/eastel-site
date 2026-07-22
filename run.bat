@echo off
cd /d "%~dp0"
echo Checking Node.js...
node -v >nul 2>&1 || (
    echo Node.js not found. Please install Node.js from https://nodejs.org
    pause
    exit /b 1
)
echo Installing dependencies...
call npm install
if %errorlevel% neq 0 (
    echo Failed to install dependencies.
    pause
    exit /b 1
)
echo Starting development server...
call npm run dev
pause