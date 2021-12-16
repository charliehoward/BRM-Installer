[![built-in-Batch](https://img.shields.io/badge/Built%20in-Batch-lightgrey)](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.2) ![Choco](https://img.shields.io/badge/Powered%20by-Chocolatey-brown) ![Arch](https://img.shields.io/badge/Arch-x86%20|%20AMD64-blue) ![OS](https://img.shields.io/badge/OS-Windows%207%20|%20Windows%208%20|%20Windows%208.1-green)

__DEPRECATED__

CRC Installer PowerShell has been replaced by NorthPoint Instaler

 * https://github.com/charliehoward/NorthPoint-Installer

# BRM Installer version 3.2.0.0
###### Copyright (c) Charlie Howard 2016-2022 All rights reserved.

To the run the install download and run the applicable exe for your operating systems architecture.

When run you will get a choice that allows you to skip installing Kaspersky Internet Security and/or LibreOffice, if left for 120 seconds it will continue and install all programs.

Installs the BRM OEM information, 7zip, Adobe Flash Player, Adobe Reader, Google Chrome, Java, Kaspersky Internet Security 2017, LibreOffice, Microsoft .NET 4.5, Mozilla Firefox, TeamViewer, VLC Media Player.

If run on Windows 7 it disables a number of unnecessary services, sets the default taskbar and installs 3 Windows updates that fix the Windows update service.

If run on Windows 8, 8.1 it changes the default Explorer page to "This PC" and sets the default taskbar.

If run on Windows 10 it disables Windows 10 hibernation mode, changes the default Explorer page to "This PC" and sets the default taskbar.

**Update 3.2.0.0**

Final update as moving to new PowerShell version and to accomadate for username change.

**Update 3.1.5.0**

Added check for Windows 7 architecture and installs 3 Windows updates that fix the Windows update service applicable to the computers architecture.

**Update 3.1.4.3**

Changed the way 7zip and Java install.

**Update 3.1.4.2**

Powered by Chocolatey.

**Update 3.1.4.1**

Fixed issue with TeamViewer installation.

**Update 3.1.4.0**

Fixed issue with .NET4.5 installation and added registry tweak that disables Action Centre in Windows 10.

**Update 3.1.3.0**

Added 120 second timer to the question that selects mode 1 if left.

**Update 3.1.2.1**

Fixed formatting issues.

**Update 3.1.2.0**

Seperated the cleanup process into it's own batch file.

**Update 3.1.1.0**

Replaced Kaspersky Internet Security 2016 with Kaspersky Internet Security 2017.

**Update 3.1.0.0**

Added in choice system that allows to install all programs except for Kaspersky Internet Security and/or LibreOffice.
