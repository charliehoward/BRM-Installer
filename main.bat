@ECHO off
@ECHO BRM Installer 2.2.2.4
>NUL TIMEOUT /t 10 /NOBREAK
cURL -o "C:\Windows\BRM Computers\oem.bmp" "http://files.brmcomputers.co.uk/uploads/oem.bmp"
cURL -o "C:\Windows\BRM Computers\kisbrm.nupkg" "http://files.brmcomputers.co.uk/uploads/kisbrm.nupkg"
cURL -o "C:\Windows\BRM Computers\SetTaskbar.vbs" "http://files.brmcomputers.co.uk/uploads/SetTaskbar.vbs"
cURL -o "C:\Windows\BRM Computers\PinTo10.exe" "http://files.brmcomputers.co.uk/uploads/PinTo10.exe"
:START
@ECHO Installing BRM OEM ...
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Logo /t REG_SZ /d "C:\Windows\BRM Computers\oem.bmp" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Manufacturer /t REG_SZ /d "BRM Computers" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportHours /t REG_SZ /d "Mon-Fri 9am-5pm - Sat 9am-4pm" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportPhone /t REG_SZ /d "08712 244129" /reg:64 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportURL /t REG_SZ /d "http://www.brmcomputers.co.uk" /reg:64 /f
@ECHO Installing Microsoft .NET 4.5
CHOCO install dotnet4.5 --confirm --allow-empty-checksums
@ECHO Installing Google Chrome ...
CHOCO install googlechrome --confirm --allow-empty-checksums
@ECHO Installing Firefox ...
CHOCO install firefox -packageParameters "l=en-GB" --confirm --allow-empty-checksums
@ECHO Installing VLC Media Player ...
CHOCO install vlc --confirm --allow-empty-checksums
@ECHO Installing 7zip ...
CHOCO install 7zip --confirm --allow-empty-checksums
@ECHO Installing Flash Player ...
CHOCO install flashplayerplugin --confirm --allow-empty-checksums
@ECHO Installing Java ...
CHOCO install javaruntime --confirm --allow-empty-checksums
@ECHO Installing Adobe Reader ...
CHOCO install adobereader --confirm --allow-empty-checksums
@ECHO Installing Kaspersky Internet Security ...
CHOCO install "C:\Windows\BRM Computers\kisbrm.nupkg" --confirm --allow-empty-checksums
@ECHO Installing LibreOffice ...
CHOCO install libreoffice  --confirm --allow-empty-checksums
@ECHO Installing TeamViewer ...
CHOCO install teamviewer --confirm --allow-empty-checksums
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
@ECHO Cleaning up ...
DEL "C:\Windows\BRM Computers\kisbrm.nupkg"
DEL "C:\Windows\BRM Computers\SetTaskbar.vbs"
DEL "C:\Windows\BRM Computers\PinTo10.exe"
@ECHO BRM Installer has completed, press any key to exit.
>NUL PAUSE
EXIT
