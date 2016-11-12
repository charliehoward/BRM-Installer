@ECHO off
SETLOCAL enabledelayedexpansion
MODE 120,30
SET "cmdwidth=120"
cURL -o "C:\Windows\BRM Computers\oem.bmp" "https://raw.githubusercontent.com/TheJumpyWizard/BRM-Installer/master/oem.bmp" --insecure
cURL -o "C:\Windows\BRM Computers\kaspersky.nupkg" "https://raw.githubusercontent.com/TheJumpyWizard/BRM-Installer/master/kaspersky.nupkg" --insecure
cURL -o "C:\Windows\BRM Computers\SetTaskbar.vbs" "https://raw.githubusercontent.com/TheJumpyWizard/BRM-Installer/master/SetTaskbar.vbs" --insecure
cURL -o "C:\Windows\BRM Computers\PinTo10.exe" "https://raw.githubusercontent.com/TheJumpyWizard/BRM-Installer/master/PinTo10.exe" --insecure
cURL -o "C:\Windows\BRM Computers\cleanup.bat" "https://raw.githubusercontent.com/TheJumpyWizard/BRM-Installer/master/cleanup.bat" --insecure
cURL -o "C:\Windows\BRM Computers\KB3020369-x64.msu" "https://github.com/TheJumpyWizard/BRM-Installer/releases/download/v3.0.0.0/KB3020369-x64.msu" --insecure
cURL -o "C:\Windows\BRM Computers\KB3020369-x86.msu" "https://github.com/TheJumpyWizard/BRM-Installer/releases/download/v3.0.0.0/KB3020369-x86.msu" --insecure
cURL -o "C:\Windows\BRM Computers\KB3050265-x64.msu" "https://github.com/TheJumpyWizard/BRM-Installer/releases/download/v3.0.0.0/KB3050265-x64.msu" --insecure
cURL -o "C:\Windows\BRM Computers\KB3050265-x86.msu" "https://github.com/TheJumpyWizard/BRM-Installer/releases/download/v3.0.0.0/KB3050265-x86.msu" --insecure
cURL -o "C:\Windows\BRM Computers\KB3172605-x64.msu" "https://github.com/TheJumpyWizard/BRM-Installer/releases/download/v3.0.0.0/KB3172605-x64.msu" --insecure
cURL -o "C:\Windows\BRM Computers\KB3172605-x86.msu" "https://github.com/TheJumpyWizard/BRM-Installer/releases/download/v3.0.0.0/KB3172605-x86.msu" --insecure
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO. BRM Installer   v3.1.5.0   2016-11-12
@ECHO. Powered by Chocolatey
@ECHO.
@ECHO.				------------------------------------------------------
@ECHO.						BRM Installer 3.1.5.0
@ECHO. 				------------------------------------------------------
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO.
@ECHO 1. Install all programs.
@ECHO 2. Install all programs except for Kaspersky Internet Security.
@ECHO 3. Install all programs except for LibreOffice.
@ECHO 4. Install all programs except for Kaspersky Internet Security and LibreOffice.
@ECHO.
@ECHO.
CHOICE /C 1234 /N /T 120 /D 1 /M "What version would you like to install: "
IF %ERRORLEVEL% == 1 GOTO 1
IF %ERRORLEVEL% == 2 GOTO 2
IF %ERRORLEVEL% == 3 GOTO 3
IF %ERRORLEVEL% == 4 GOTO 4
:1
@ECHO Installing BRM OEM ...
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V Logo /T REG_SZ /D "C:\Windows\BRM Computers\oem.bmp" /reg:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V Manufacturer /T REG_SZ /D "BRM Computers" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportHours /T REG_SZ /D "Mon-Fri 9am-5pm - Sat 9am-4pm" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportPhone /T REG_SZ /D "08712 244129" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportURL /T REG_SZ /D "http://www.brmcomputers.co.uk" /REG:64 /F
@ECHO Installing Microsoft .NET 4.5
CHOCO install dotnet4.5 --confirm --allow-empty-checksums
@ECHO Installing Google Chrome ...
CHOCO install googlechrome --confirm --allow-empty-checksums
@ECHO Installing Firefox ...
CHOCO install firefox --confirm --allow-empty-checksums
@ECHO Installing Kaspersky Internet Security 2017 ...
CHOCO install "C:\Windows\BRM Computers\kaspersky.nupkg" --confirm --allow-empty-checksums
@ECHO Installing VLC Media Player ...
CHOCO install vlc --confirm --allow-empty-checksums
@ECHO Installing 7zip ...
CHOCO install 7zip.install --confirm --allow-empty-checksums
@ECHO Installing Adobe Flash Player ...
CHOCO install flashplayerplugin --confirm --allow-empty-checksums
@ECHO Installing Java ...
CHOCO install jre8 --confirm --allow-empty-checksums
@ECHO Installing Adobe Reader ...
CHOCO install adobereader --confirm --allow-empty-checksums
@ECHO Installing LibreOffice ...
CHOCO install libreoffice  --confirm --allow-empty-checksums
@ECHO Installing TeamViewer ...
CHOCO install teamviewer --confirm --allow-empty-checksums --ignore-checksums
GOTO END
:2
@ECHO Installing BRM OEM ...
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V Logo /T REG_SZ /D "C:\Windows\BRM Computers\oem.bmp" /reg:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V Manufacturer /T REG_SZ /D "BRM Computers" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportHours /T REG_SZ /D "Mon-Fri 9am-5pm - Sat 9am-4pm" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportPhone /T REG_SZ /D "08712 244129" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportURL /T REG_SZ /D "http://www.brmcomputers.co.uk" /REG:64 /F
@ECHO Installing Microsoft .NET 4.5
CHOCO install dotnet4.5 --confirm --allow-empty-checksums
@ECHO Installing Google Chrome ...
CHOCO install googlechrome --confirm --allow-empty-checksums
@ECHO Installing Firefox ...
CHOCO install firefox --confirm --allow-empty-checksums
@ECHO Installing VLC Media Player ...
CHOCO install vlc --confirm --allow-empty-checksums
@ECHO Installing 7zip ...
CHOCO install 7zip --confirm --allow-empty-checksums
@ECHO Installing Adobe Flash Player ...
CHOCO install flashplayerplugin --confirm --allow-empty-checksums
@ECHO Installing Java ...
CHOCO install javaruntime --confirm --allow-empty-checksums
@ECHO Installing Adobe Reader ...
CHOCO install adobereader --confirm --allow-empty-checksums
@ECHO Installing LibreOffice ...
CHOCO install libreoffice  --confirm --allow-empty-checksums
@ECHO Installing TeamViewer ...
CHOCO install teamviewer --confirm --allow-empty-checksums --ignore-checksums
GOTO END
:3
@ECHO Installing BRM OEM ...
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V Logo /T REG_SZ /D "C:\Windows\BRM Computers\oem.bmp" /reg:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V Manufacturer /T REG_SZ /D "BRM Computers" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportHours /T REG_SZ /D "Mon-Fri 9am-5pm - Sat 9am-4pm" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportPhone /T REG_SZ /D "08712 244129" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportURL /T REG_SZ /D "http://www.brmcomputers.co.uk" /REG:64 /F
@ECHO Installing Microsoft .NET 4.5
CHOCO install dotnet4.5 --confirm --allow-empty-checksums
@ECHO Installing Google Chrome ...
CHOCO install googlechrome --confirm --allow-empty-checksums
@ECHO Installing Firefox ...
CHOCO install firefox --confirm --allow-empty-checksums
@ECHO Installing Kaspersky Internet Security 2017 ...
CHOCO install "C:\Windows\BRM Computers\kaspersky.nupkg" --confirm --allow-empty-checksums
@ECHO Installing VLC Media Player ...
CHOCO install vlc --confirm --allow-empty-checksums
@ECHO Installing 7zip ...
CHOCO install 7zip --confirm --allow-empty-checksums
@ECHO Installing Adobe Flash Player ...
CHOCO install flashplayerplugin --confirm --allow-empty-checksums
@ECHO Installing Java ...
CHOCO install javaruntime --confirm --allow-empty-checksums
@ECHO Installing Adobe Reader ...
CHOCO install adobereader --confirm --allow-empty-checksums
@ECHO Installing TeamViewer ...
CHOCO install teamviewer --confirm --allow-empty-checksums--ignore-checksums
GOTO END
:4
@ECHO Installing BRM OEM ...
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V Logo /T REG_SZ /D "C:\Windows\BRM Computers\oem.bmp" /reg:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V Manufacturer /T REG_SZ /D "BRM Computers" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportHours /T REG_SZ /D "Mon-Fri 9am-5pm - Sat 9am-4pm" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportPhone /T REG_SZ /D "08712 244129" /REG:64 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /V SupportURL /T REG_SZ /D "http://www.brmcomputers.co.uk" /REG:64 /F
@ECHO Installing Microsoft .NET 4.5
CHOCO install dotnet4.5 --confirm --allow-empty-checksums
@ECHO Installing Google Chrome ...
CHOCO install googlechrome --confirm --allow-empty-checksums
@ECHO Installing Firefox ...
CHOCO install firefox --confirm --allow-empty-checksums
@ECHO Installing VLC Media Player ...
CHOCO install vlc --confirm --allow-empty-checksums
@ECHO Installing 7zip ...
CHOCO install 7zip --confirm --allow-empty-checksums
@ECHO Installing Adobe Flash Player ...
CHOCO install flashplayerplugin --confirm --allow-empty-checksums
@ECHO Installing Java ...
CHOCO install javaruntime --confirm --allow-empty-checksums
@ECHO Installing Adobe Reader ...
CHOCO install adobereader --confirm --allow-empty-checksums
@ECHO Installing TeamViewer ...
CHOCO install teamviewer --confirm --allow-empty-checksums --ignore-checksums
GOTO END
:END
VER | FINDSTR /I "6\.1\." > NUL
IF %ERRORLEVEL% EQU 0 GOTO WINDOWS7
VER | FINDSTR /I "6\.2\." > NUL
IF %ERRORLEVEL% EQU 0 GOTO WINDOWS8
VER | FINDSTR /I "6\.3\." > NUL
IF %ERRORLEVEL% EQU 0 GOTO WINDOWS8.1
VER | FINDSTR /I "10\.0\." > NUL
IF %ERRORLEVEL% EQU 0 GOTO WINDOWS10
:WINDOWS7
@ECHO This PC is running Windows 7
>NUL TIMEOUT /T 4 /NOBREAK
@ECHO Disabling unnecessary services ...
SC config SensrSvc start= disabled
SC config BDESVC start= disabled
SC config defragsvc start= disabled
SC config TrkWks start= disabled
SC config EFS start= disabled
SC config HomeGroupListener start= disabled
SC config HomeGroupProvider start= disabled
SC config SharedAccess start= disabled
SC config iphlpsvc start= disabled
SC config WPDBusEnum start= disabled
SC config RemoteRegistry start= disabled
SC config RemoteAccess start= disabled
SC config WbioSrvc start= disabled
SC config WinDefend start= disabled
SC config WSearch start= disabled
SC config ALG start= disabled
SC config CertPropSvc start= disabled
SC config Fax start= disabled
SC config SysMain start= disabled
SC config SysMain start= disabled
@ECHO Settings taskbar icons ...
"C:\Windows\BRM Computers\SetTaskbar.vbs"
IF %PROCESSOR_ARCHITECTURE% EQU x86 GOTO x86
IF %PROCESSOR_ARCHITECTURE% EQU AMD64 GOTO AMD64
:x86
@ECHO Installing Windows Updates ...
"C:\Windows\System32\wusa.exe" "C:\Windows\BRM Computers\KB3020369-x86.msu" /quiet /norestart
"C:\Windows\System32\wusa.exe" "C:\Windows\BRM Computers\KB3050265-x86.msu" /quiet /norestart
"C:\Windows\System32\wusa.exe" "C:\Windows\BRM Computers\KB3172605-x86.msu" /quiet /norestart
GOTO CLEANUP
:AMD64
@ECHO Installing Windows Updates ...
"C:\Windows\System32\wusa.exe" "C:\Windows\BRM Computers\KB3020369-x64.msu" /quiet /norestart
"C:\Windows\System32\wusa.exe" "C:\Windows\BRM Computers\KB3050265-x64.msu" /quiet /norestart
"C:\Windows\System32\wusa.exe" "C:\Windows\BRM Computers\KB3172605-x64.msu" /quiet /norestart
GOTO CLEANUP
:WINDOWS8
@ECHO This PC is running Windows 8
>NUL TIMEOUT /T 4 /NOBREAK
@ECHO Setting taskbar icons ...
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "Favorites" /T REG_BINARY /D "ff" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "FavoritesChanges" /T REG_DWORD /D "00000010" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "FavoritesVersion" /T REG_DWORD /D "00000002" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "FavoritesRemovedChanges" /T REG_DWORD /D "00000001" /F
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Mozilla Firefox.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Google Chrome.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\Windows" /PTFILE:"Explorer.exe"
GOTO CLEANUP
:WINDOWS8.1
@ECHO This PC is running Windows 8.1
>NUL TIMEOUT /T 4 /NOBREAK
@ECHO Setting taskbar icons ...
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "Favorites" /T REG_BINARY /D "ff" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "FavoritesChanges" /T REG_DWORD /D "00000010" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "FavoritesVersion" /T REG_DWORD /D "00000002" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "FavoritesRemovedChanges" /T REG_DWORD /D "00000001" /F
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Mozilla Firefox.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Google Chrome.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\Windows" /PTFILE:"Explorer.exe"
GOTO CLEANUP
:WINDOWS10
@ECHO This PC is running Windows 10
>NUL TIMEOUT /T 4 /NOBREAK
@ECHO Setting explorer to open to This PC ...
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /V LaunchTo /T REG_DWORD /D 1 /F
@ECHO Disabling hibernation mode ...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /V HiberbootEnabled /T REG_DWORD /D 0 /F
@ECHO Disabling Action Centre ...
REG ADD "HKLM\Software\Policies\Microsoft\Windows\Explorer" /V DisableNotificationCenter /T REG_DWORD /D 1 /F
@ECHO Setting taskbar icons ...
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "Favorites" /T REG_BINARY /D "ff" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "FavoritesChanges" /T REG_DWORD /D "00000010" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "FavoritesVersion" /T REG_DWORD /D "00000002" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /V "FavoritesRemovedChanges" /T REG_DWORD /D "00000001" /F
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Mozilla Firefox.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Google Chrome.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\Windows" /PTFILE:"Explorer.exe"
GOTO CLEANUP
:CLEANUP
"C:\Windows\BRM Computers\cleanup.bat"
