@echo off

:START_ANYDESK
anydesk --start
powershell -Command "Start-Sleep -Seconds 5"
for /f "delims=" %%i in ('"C:\ProgramData\chocolatey\lib\anydesk.portable\tools\AnyDesk.exe" --get-id') do (
    set ID=%%i
)
if "%ID%"=="" (
    taskkill /f /im anydesk.exe > nul
    goto START_ANYDESK
)
if "%ID%"=="0" (
    taskkill /f /im anydesk.exe > nul
    goto START_ANYDESK
)

echo AshAuthority_localhost | anydesk.exe --set-password _full_access
start "" /MAX "C:\Users\Public\Desktop\VMQuickConfig"
python -c "import pyautogui as pag; pag.click(147, 489, duration=2)"
python -c "import pyautogui as pag; pag.click(156, 552, duration=2)"
python -c "import pyautogui as pag; pag.click(587, 14, duration=2)"
python -c "import pyautogui as pag; pag.click(916, 17, duration=2)"
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"

echo Go follow me on GitHub. bit.ly/AshGithub :)
echo the following Operating System is Windows Server 2025(server version of Windows 11)
echo AnyDesk ID is: %ID%
echo AnyDesk Password: AshAuthority_localhost
._^|__  /___.._.__...__^|_   _^|__..___^| ^|__...  
echo  _  ^| ^|/ _ \^| ^| ^| ^| / // _ \^| '_ \ / _ \^| ^|/ _ \/ __^| '_ \ 
echo ^| ^|_^| ^| ^|_^| ^| ^|_^| ^|/ /^| ^|_^| ^| ^| ^| ^|  __/^| ^|  __/ /__^| ^| ^| ^|
echo  \___/ \___/ \__, /____\___/^|_^| ^|_^|\___^|^|_^|\___^|\___^|_^| ^|_^|
echo .............^|___/..........................................
echo ............................................................
echo ............................................................
echo AnyDesk ID is: %ID%
echo AnyDesk Password: joyzonetech
echo You can login now!
