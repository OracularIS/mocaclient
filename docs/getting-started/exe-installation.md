# EXE Installation

## Overview

Use the EXE installer for standard interactive installation. The EXE installer is built with Inno Setup and supports current-user and all-users installation modes.

Do not install the EXE version over an MSI installation; uninstall the MSI version first.

## Prerequisites

- Windows 7 or later.
- Java 8 or newer.
- The downloaded EXE installer, normally named `setup.exe` in the installer package.
- Administrator rights only when installing for all users.

## Installation

### Default Installation

```bat
"setup.exe"
```

The installer opens with the installation mode selection. The default mode is **Run as User**, which installs Smart MOCA Client for the current user.

![EXE install mode selection](../.attachments/exe-install-mode-selection.png)

### Custom Installation

To install for all users, select **Run as Administrator** in the setup mode window. Windows may request administrator approval.

To start the installer for all users from the command line:

```bat
"setup.exe" /ALLUSERS
```

To choose a custom installation directory:

```bat
"setup.exe" /DIR="D:\SmartMOCAClient"
```

### Silent Installation

```bat
"setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
```

This installs silently with the EXE defaults: current-user mode and the default current-user installation folder.

Install silently for all users:

```bat
"setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS
```

Install silently with a custom folder:

```bat
"setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /DIR="D:\SmartMOCAClient"
```

Create an installation log:

```bat
"setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG="%TEMP%\smc-exe-install.log"
```

## Installation Options

| Option | Default | Description |
| --- | --- | --- |
| `/CURRENTUSER` | Current-user mode is the default. | Installs Smart MOCA Client for the current user. |
| `/ALLUSERS` | Not used | Installs Smart MOCA Client for all users. Run with administrator rights. |
| `/DIR="path"` | `%APPDATA%\SmartMOCAClient` for current-user mode; `%PROGRAMDATA%\SmartMOCAClient` for all-users mode. | Installation directory for Smart MOCA Client application files. |
| Oracular MOCA Client data folder | Resolved interactive user's `%APPDATA%\Oracular MOCA Client`. | Saved Smart MOCA Client data. This is not changed by `/DIR`. |
| Oracular Automated Testing data folder | Resolved interactive user's `%APPDATA%\Oracular Automated Testing`. | Automated testing data used by Smart MOCA Client. This is not changed by `/DIR`. |
| Java path | Auto-detected Java 8 or newer `javaw.exe`. | Java executable used by installed shortcuts. The EXE installer does not expose a command-line Java path option. |
| `/TASKS="desktopicon,quicklaunchicon"` | Both tasks are selected on first install. | Controls optional desktop and Quick Launch shortcuts. |
| `/VERYSILENT` | Not used | Runs setup without wizard pages. |
| `/SUPPRESSMSGBOXES` | Not used | Suppresses message boxes during silent installation. |
| `/NORESTART` | Not used | Prevents automatic restart. |
| `/SP-` | Not used | Disables the Inno Setup startup prompt. |
| `/LOG="path"` | Not used | Writes an Inno Setup log file. |

The EXE installer does not expose command-line properties for `ACCEPT_EULA`, `AUTOUPDATE`, or `JAVA_PATH`. Java is detected by the installer. Automatic update checking is enabled for current-user installations and disabled for all-users installations.

## Examples

Silent current-user installation with an installation log:

```bat
"setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG="%TEMP%\smc-exe-install.log"
```

Silent all-users installation with a custom folder:

```bat
"setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /DIR="D:\SmartMOCAClient"
```

## Related Pages

- [EXE Uninstallation](./exe-uninstallation.md)
- [MSI Installation](./msi-installation.md)
