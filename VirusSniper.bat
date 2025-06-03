@echo off

color 0A

set /p usb=Enter your USB drive letter (e.g. G): 

echo.
echo Scanning and cleaning drive %usb%...
echo ------------------------------------------

if not exist %usb%:\ (
    echo [ERROR] Drive %usb%:\ not found!
    pause
    exit
)

attrib -s -h -r %usb%:\*.* /s /d

echo Deleting known malicious files...
del /f /s /q %usb%:\autorun.inf 2>nul
del /f /s /q %usb%:\*.lnk 2>nul
del /f /s /q %usb%:\*.vbs 2>nul
del /f /s /q %usb%:\*.scr 2>nul

echo Searching for suspicious EXE files...
for /r %usb%:\ %%f in (*.exe) do (
    echo Found: %%~nxf
    echo [WARNING] Suspicious EXE found: %%~nxf >> %usb%:\virus_report.txt
)

echo Checking for fake folders...
for /f "delims=" %%d in ('dir /a:d /b %usb%:\') do (
    if exist "%usb%:\%%d.exe" (
        echo [WARNING] Fake folder detected: %%d (has .exe) >> %usb%:\virus_report.txt
        echo Suspicious folder: %%d
    )
)

echo.
if exist %usb%:\virus_report.txt (
    echo [!] Threats found. Report saved as virus_report.txt in your USB.
) else (
    echo [✓] No serious threats found.
)

echo ------------------------------------------
echo Cleaning completed successfully!
echo Hidden files are now visible again.
echo ------------------------------------------

pause
exit

