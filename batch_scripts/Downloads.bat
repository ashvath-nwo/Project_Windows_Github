@echo off
choco install anydesk -y --ignore-checksums --force --no-progress --pre
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/ashvath-nwo/Project_Windows_Github/refs/heads/main/batch_scripts/start.bat' -Outfile "start.bat"
pip install pyautogui --quiet
pip install psutil --quiet
set password=AshAuthority_localhost
cmd /c net localgroup
cmd /c net user AshVM /add
cmd /c net localgroup Admimnistrators AshVM /add
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
set password=AshAuthority_localhost
tzutil /s "Pacific Standard Time"
