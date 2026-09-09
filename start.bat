@echo off
REM ---------------------------------------------------------------
REM  PIXO landing page - local preview server
REM  Double-click this file. Your browser opens the site and the
REM  YouTube trailer plays in-page. Keep this window open while
REM  you view the site; close it to stop the server.
REM ---------------------------------------------------------------
cd /d "%~dp0"
set PORT=5500
set URL=http://localhost:%PORT%/pixo-landing-page.html

echo Starting local server at %URL%
echo Keep this window open. Close it to stop.
echo.

start "" "%URL%"

python -m http.server %PORT%
if %errorlevel% neq 0 py -m http.server %PORT%
if %errorlevel% neq 0 (
  echo.
  echo Could not start the server - Python was not found.
  echo Install Python from https://www.python.org/downloads/
  echo During setup, tick "Add python.exe to PATH", then run this file again.
  echo.
  pause
)
