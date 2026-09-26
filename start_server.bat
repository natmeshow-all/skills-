@echo off
chcp 65001 >nul
title Technician Management Web Server
echo ========================================================
echo   ระบบบริหารและพัฒนาทักษะช่าง (Technician Portal)
echo ========================================================
echo.
echo กำลังเปิดระบบในเว็บเบราว์เซอร์ของคุณ...
echo.

:: ตรวจสอบว่ามี python หรือไม่
python -c "import http.server" >nul 2>&1
if %errorlevel% equ 0 (
    echo กำลังเริ่มทำงาน Web Server ที่ http://localhost:8080 ...
    start http://localhost:8080
    python -m http.server 8080
) else (
    echo ไม่พบ Python ในระบบ จะเปิดไฟล์ index.html ให้โดยตรง...
    start index.html
)

pause
