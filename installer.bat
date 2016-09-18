@ECHO off
SETLOCAL enabledelayedexpansion
MODE 120,30
SET "cmdwidth=120"
cURL -o "C:\Windows\BRM Computers\oem.bmp" "https://raw.githubusercontent.com/TheJumpyWizard/BRM-Installer/master/oem.bmp" --insecure
cURL -o "C:\Windows\BRM Computers\kaspersky.nupkg" "https://raw.githubusercontent.com/TheJumpyWizard/BRM-Installer/master/kaspersky.nupkg" --insecure
cURL -o "C:\Windows\BRM Computers\SetTaskbar.vbs" "https://raw.githubusercontent.com/TheJumpyWizard/BRM-Installer/master/SetTaskbar.vbs" --insecure
cURL -o "C:\Windows\BRM Computers\PinTo10.exe" "https://raw.githubusercontent.com/TheJumpyWizard/BRM-Installer/master/PinTo10.exe" --insecure
cURL -o "C:\Windows\BRM Computers\cleanup.bat" "https://raw.githubusercontent.com/TheJumpyWizard/BRM-Installer/master/cleanup.bat" --insecure
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
@ECHO.				------------------------------------------------------
@ECHO.						BRM Installer 3.1.2.1
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
:QUESTION
@ECHO 1. Install all programs.
@ECHO 2. Install all programs except for Kaspersky Internet Security.
@ECHO 3. Install all programs except for LibreOffice.
@ECHO 4. Install all programs except for Kaspersky Internet Security and LibreOffice.
@ECHO.
@ECHO.
SET /P MODE=What version would you like to install: 
IF "%MODE%" == "1" GOTO 1
IF "%MODE%" == "2" GOTO 2
IF "%MODE%" == "3" GOTO 3
IF "%MODE%" == "3" GOTO 4
:1
@ECHO Installing BRM OEM ...
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Logo /t REG_SZ /d "C:\Windows\BRM Computers\oem.bmp" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Manufacturer /t REG_SZ /d "BRM Computers" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportHours /t REG_SZ /d "Mon-Fri 9am-5pm - Sat 9am-4pm" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportPhone /t REG_SZ /d "08712 244129" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportURL /t REG_SZ /d "http://www.brmcomputers.co.uk" /reg:64 /f
@ECHO Installing Microsoft .NET 4.5
CHOCO install dotnet4.5 --confirm
@ECHO Installing Google Chrome ...
CHOCO install googlechrome --confirm
@ECHO Installing Firefox ...
CHOCO install firefox --confirm
@ECHO Installing Kaspersky Internet Security 2017 ...
CHOCO install "C:\Windows\BRM Computers\kaspersky.nupkg" --confirm
@ECHO Installing VLC Media Player ...
CHOCO install vlc --confirm
@ECHO Installing 7zip ...
CHOCO install 7zip --confirm
@ECHO Installing Adobe Flash Player ...
CHOCO install flashplayerplugin --confirm
@ECHO Installing Java ...
CHOCO install javaruntime --confirm
@ECHO Installing Adobe Reader ...
CHOCO install adobereader --confirm
@ECHO Installing LibreOffice ...
CHOCO install libreoffice  --confirm
@ECHO Installing TeamViewer ...
CHOCO install teamviewer --confirm
GOTO END
:2
@ECHO Installing BRM OEM ...
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Logo /t REG_SZ /d "C:\Windows\BRM Computers\oem.bmp" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Manufacturer /t REG_SZ /d "BRM Computers" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportHours /t REG_SZ /d "Mon-Fri 9am-5pm - Sat 9am-4pm" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportPhone /t REG_SZ /d "08712 244129" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportURL /t REG_SZ /d "http://www.brmcomputers.co.uk" /reg:64 /f
@ECHO Installing Microsoft .NET 4.5
CHOCO install dotnet4.5 --confirm
@ECHO Installing Google Chrome ...
CHOCO install googlechrome --confirm
@ECHO Installing Firefox ...
CHOCO install firefox --confirm
@ECHO Installing VLC Media Player ...
CHOCO install vlc --confirm
@ECHO Installing 7zip ...
CHOCO install 7zip --confirm
@ECHO Installing Adobe Flash Player ...
CHOCO install flashplayerplugin --confirm
@ECHO Installing Java ...
CHOCO install javaruntime --confirm
@ECHO Installing Adobe Reader ...
CHOCO install adobereader --confirm
@ECHO Installing LibreOffice ...
CHOCO install libreoffice  --confirm
@ECHO Installing TeamViewer ...
CHOCO install teamviewer --confirm
GOTO END
:3
@ECHO Installing BRM OEM ...
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Logo /t REG_SZ /d "C:\Windows\BRM Computers\oem.bmp" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Manufacturer /t REG_SZ /d "BRM Computers" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportHours /t REG_SZ /d "Mon-Fri 9am-5pm - Sat 9am-4pm" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportPhone /t REG_SZ /d "08712 244129" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportURL /t REG_SZ /d "http://www.brmcomputers.co.uk" /reg:64 /f
@ECHO Installing Microsoft .NET 4.5
CHOCO install dotnet4.5 --confirm
@ECHO Installing Google Chrome ...
CHOCO install googlechrome --confirm
@ECHO Installing Firefox ...
CHOCO install firefox --confirm
@ECHO Installing Kaspersky Internet Security 2017 ...
CHOCO install "C:\Windows\BRM Computers\kaspersky.nupkg" --confirm
@ECHO Installing VLC Media Player ...
CHOCO install vlc --confirm
@ECHO Installing 7zip ...
CHOCO install 7zip --confirm
@ECHO Installing Adobe Flash Player ...
CHOCO install flashplayerplugin --confirm
@ECHO Installing Java ...
CHOCO install javaruntime --confirm
@ECHO Installing Adobe Reader ...
CHOCO install adobereader --confirm
@ECHO Installing TeamViewer ...
CHOCO install teamviewer --confirm
GOTO END
:4
@ECHO Installing BRM OEM ...
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Logo /t REG_SZ /d "C:\Windows\BRM Computers\oem.bmp" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Manufacturer /t REG_SZ /d "BRM Computers" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportHours /t REG_SZ /d "Mon-Fri 9am-5pm - Sat 9am-4pm" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportPhone /t REG_SZ /d "08712 244129" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportURL /t REG_SZ /d "http://www.brmcomputers.co.uk" /reg:64 /f
@ECHO Installing Microsoft .NET 4.5
CHOCO install dotnet4.5 --confirm
@ECHO Installing Google Chrome ...
CHOCO install googlechrome --confirm
@ECHO Installing Firefox ...
CHOCO install firefox --confirm
@ECHO Installing VLC Media Player ...
CHOCO install vlc --confirm
@ECHO Installing 7zip ...
CHOCO install 7zip --confirm
@ECHO Installing Adobe Flash Player ...
CHOCO install flashplayerplugin --confirm
@ECHO Installing Java ...
CHOCO install javaruntime --confirm
@ECHO Installing Adobe Reader ...
CHOCO install adobereader --confirm
@ECHO Installing TeamViewer ...
CHOCO install teamviewer --confirm
GOTO END
:END
VER | FINDSTR /i "6\.1\." > nul
IF %ERRORLEVEL% EQU 0 GOTO WINDOWS7
VER | FINDSTR /i "6\.2\." > nul
IF %ERRORLEVEL% EQU 0 GOTO WINDOWS8
VER | FINDSTR /i "6\.3\." > nul
IF %ERRORLEVEL% EQU 0 GOTO WINDOWS8.1
VER | FINDSTR /i "10\.0\." > nul
IF %ERRORLEVEL% EQU 0 GOTO WINDOWS10
:WINDOWS7
@ECHO This PC is running Windows 7
>NUL TIMEOUT /t 4 /NOBREAK
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
SC config gpsvc start= disabled
SC config SysMain start= disabled
SC config SysMain start= disabled
@ECHO Settings taskbar icons ...
"C:\Windows\BRM Computers\SetTaskbar.vbs"
GOTO CLEANUP
:WINDOWS8
@ECHO This PC is running Windows 8
>NUL TIMEOUT /t 4 /NOBREAK
@ECHO Setting taskbar icons ...
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "Favorites" /t REG_BINARY /d "ff" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesChanges" /t REG_DWORD /d "00000010" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesVersion" /t REG_DWORD /d "00000002" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesRemovedChanges" /t REG_DWORD /d "00000001" /f
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Mozilla Firefox.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Google Chrome.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\Windows" /PTFILE:"Explorer.exe"
GOTO CLEANUP
:WINDOWS8.1
@ECHO This PC is running Windows 8.1
>NUL TIMEOUT /t 4 /NOBREAK
@ECHO Setting taskbar icons ...
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "Favorites" /t REG_BINARY /d "ff" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesChanges" /t REG_DWORD /d "00000010" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesVersion" /t REG_DWORD /d "00000002" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesRemovedChanges" /t REG_DWORD /d "00000001" /f
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Mozilla Firefox.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Google Chrome.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\Windows" /PTFILE:"Explorer.exe"
GOTO CLEANUP
:WINDOWS10
@ECHO This PC is running Windows 10
>NUL TIMEOUT /t 4 /NOBREAK
@ECHO Setting explorer to open to This PC ...
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v LaunchTo /t REG_DWORD /d 1 /f
@ECHO Disabling hibernation mode ...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /V HiberbootEnabled /T REG_DWORD /D 0 /F
@ECHO Setting taskbar icons ...
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "Favorites" /t REG_BINARY /d "ff" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesChanges" /t REG_DWORD /d "00000010" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesVersion" /t REG_DWORD /d "00000002" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" /v "FavoritesRemovedChanges" /t REG_DWORD /d "00000001" /f
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Mozilla Firefox.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /PTFILE:"Google Chrome.lnk"
"C:\Windows\BRM Computers\PinTo10.exe" /PTFOL:"C:\Windows" /PTFILE:"Explorer.exe"
GOTO CLEANUP
:CLEANUP
"C:\Windows\BRM Computers\cleanup.bat"
