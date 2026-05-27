@echo off
setlocal
cd /d "%~dp0"

echo ========================================
echo  Redesign Maker Local Runner
echo ========================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo [ERROR] Node.js is not installed or not in PATH.
  echo Please install Node.js 20 LTS or newer, then run this file again.
  pause
  exit /b 1
)

where npm >nul 2>nul
if errorlevel 1 (
  echo [ERROR] npm is not installed or not in PATH.
  pause
  exit /b 1
)

if not exist ".env.local" (
  echo Creating .env.local from .env.example...
  copy ".env.example" ".env.local" >nul
)

if not exist "node_modules" (
  echo Installing dependencies. This may take a few minutes...
  npm ci
  if errorlevel 1 (
    echo [ERROR] npm ci failed.
    pause
    exit /b 1
  )
)

echo.
echo Starting local server on http://localhost:3002
echo Press Ctrl+C to stop.
echo.
npm run dev:local

pause
