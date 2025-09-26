@echo off
REM pindah ke folder dashboard
cd /d C:\path\ke\folder\dashboard

REM jalankan python server (jalankan di background)
start "" cmd /c "python -m http.server 8080"

REM tunggu 2 detik supaya server siap
timeout /t 2 /nobreak >nul

REM buka Chrome dalam kiosk mode ke URL server lokal
start "" "chrome" --kiosk --app=http://localhost:8080/dashboard.html
exit
