@echo off
chcp 65001 >nul
title ZhangXuefeng Quiz
echo.
echo  ==========================================
echo    ZhangXuefeng - Intelligent Career Advisor
echo  ==========================================
echo.

echo  [1/4] Checking Python...
python --version 2>nul
if errorlevel 1 (
    echo  [X] Python not found!
    echo  Download: https://www.python.org/downloads/
    echo  Check "Add Python to PATH" during install
    pause
    exit /b 1
)

echo  [2/4] Checking dependencies...
for %%p in (flask flask_cors anthropic ddgs) do (
    python -c "import %%p" 2>nul
    if errorlevel 1 (
        echo  [*] Installing %%p...
        pip install %%p -q
    )
)
echo  [OK] All dependencies ready

echo  [3/4] Checking API Key...
python -c "import os; k=os.environ.get('ANTHROPIC_AUTH_TOKEN','') or os.environ.get('ANTHROPIC_API_KEY',''); print('OK' if k else 'MISSING')" > _kc.txt 2>nul
set /p KS=<_kc.txt
del _kc.txt 2>nul
if "%KS%"=="MISSING" (
    echo  [!] No API Key - encyclopedia Q&A won't work
    echo      But database and assessment still work fine
) else (
    echo  [OK] API Key found
)

echo  [4/4] Starting...
echo.
echo  ==========================================
echo    Open: http://localhost:5000
echo    Press Ctrl+C to stop
echo  ==========================================
echo.

start http://localhost:5000
python app.py
pause
