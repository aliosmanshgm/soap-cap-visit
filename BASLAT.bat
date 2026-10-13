@echo off
cd /d "%~dp0"
start "" http://localhost:8765
py -3 -m http.server 8765 --bind 127.0.0.1
if errorlevel 1 (
 echo Python bulunamadi. index.html dosyasini Chrome veya Edge ile acabilirsiniz.
 pause
)
