# MSI Installation

## Overview

Use the MSI installer when you need Windows Installer deployment, managed installation properties, or enterprise software distribution.

The MSI installer supports current-user and all-users installation modes. Do not install the MSI version over an EXE installation; uninstall the EXE version first.

## Prerequisites

- Windows 7 or later.
- Java 8 or newer.
- The `mocaclient-setup.msi` installer.
- Administrator rights only when installing for all users.

## Installation

### Default Installation

```bat
msiexec.exe /i "mocaclient-setup.msi"
```

This opens the MSI wizard. The default mode is **Run as User**, which installs Smart MOCA Client for the current user.

1. On **Choose installation mode**, click **Next** to continue with **Run as User (current user only)** selected.

   **Run as User** installs Smart MOCA Client for the current user only and does not need administrator rights. **Run as Administrator** installs for all users, and Windows will ask for administrator approval.

   ![MSI installer installation mode screen with Run as User selected](../.attachments/msi-install-mode-selection.png)

2. On **Welcome to the Smart MOCA Client Setup Wizard**, click **Next**.

   ![MSI installer welcome screen with Next button](../.attachments/MSIInstallation1.png)

3. On **End-User License Agreement**, click **Next** after **I accept the terms in the License Agreement** is selected.

   ![MSI installer license agreement screen with acceptance checkbox selected](../.attachments/MSIInstallation2.png)

4. On **Custom Setup**, click **Next** to install the Smart MOCA Client files.

   ![MSI installer custom setup screen showing Smart MOCA Client Files and Next button](../.attachments/MSIInstallation3.png)

5. On **Ready to install Smart MOCA Client**, click **Install**.

   ![MSI installer ready to install screen with Install button](../.attachments/MSIInstallation4.png)

6. On **Installing Smart MOCA Client**, wait while the setup wizard installs Smart MOCA Client.

   ![MSI installer progress screen showing validating install status](../.attachments/MSIInstallation5.png)

7. On **Completed the Smart MOCA Client Setup Wizard**, click **Finish**.

   ![MSI installer completion screen with Finish button](../.attachments/MSIInstallation6.png)

### Custom Installation

To install for all users, select **Run as Administrator (all users)** in the wizard. Windows requests administrator approval when installation starts.

Use a custom installation directory only when you need Smart MOCA Client installed outside the default folder.

```bat
msiexec.exe /i "mocaclient-setup.msi" INSTALLDIR="D:\SmartMOCAClient"
```

### Silent Installation

```bat
msiexec.exe /i "mocaclient-setup.msi" /qn /norestart ACCEPT_EULA=1
```

This installs silently with the MSI defaults: current-user mode, automatic updates enabled, and the default current-user installation folder.

Install silently for all users:

```bat
msiexec.exe /i "mocaclient-setup.msi" /qn /norestart ALLUSERS=1 INSTALLMODE=Machine ACCEPT_EULA=1
```

Install silently with a custom folder:

```bat
msiexec.exe /i "mocaclient-setup.msi" /qn /norestart ACCEPT_EULA=1 INSTALLDIR="D:\SmartMOCAClient"
```

Install silently with a specific Java executable:

```bat
msiexec.exe /i "mocaclient-setup.msi" /qn /norestart ACCEPT_EULA=1 JAVA_PATH="C:\Program Files\Java\jdk-22\bin\javaw.exe"
```

Create a verbose installation log:

```bat
msiexec.exe /i "mocaclient-setup.msi" /qn /norestart ACCEPT_EULA=1 /L*V "%TEMP%\smc-msi-install.log"
```

## Installation Options

| Option | Default | Description |
| --- | --- | --- |
| `ALLUSERS` | `2` | Windows Installer installation context. With `MSIINSTALLPERUSER=1`, this selects current-user mode. Use `ALLUSERS=1` for all-users mode. |
| `MSIINSTALLPERUSER` | `1` | Enables per-user MSI installation. Use with `ALLUSERS=2` for current-user mode. |
| `INSTALLMODE` | `User` | Smart MOCA Client installation mode. Use `User` for current-user mode or `Machine` for all-users mode. |
| `INSTALLDIR` | `%APPDATA%\SmartMOCAClient` for current-user mode; `%PROGRAMDATA%\SmartMOCAClient` for all-users mode. A saved install path is reused when present. | Installation directory for Smart MOCA Client application files. |
| Oracular MOCA Client data folder | Resolved interactive user's `%APPDATA%\Oracular MOCA Client`. | Saved Smart MOCA Client data. This is not changed by `INSTALLDIR`. |
| Oracular Automated Testing data folder | Resolved interactive user's `%APPDATA%\Oracular Automated Testing`. | Automated testing data used by Smart MOCA Client. This is not changed by `INSTALLDIR`. |
| `ACCEPT_EULA` | Not set | Required for silent MSI installation. Use `ACCEPT_EULA=1`. |
| `AUTOUPDATE` | `YES` in current-user mode; `NO` in all-users mode. | Controls the generated Smart MOCA Client update check setting. Use `YES` or `NO`. |
| `JAVA_PATH` | Auto-detected Java 8 or newer `javaw.exe`; a saved value is reused when present. | Java executable used by installed shortcuts. The folder must also contain `java.exe`. |

## Examples

Current-user installation with explicit defaults:

```bat
msiexec.exe /i "mocaclient-setup.msi" /qn /norestart ALLUSERS=2 MSIINSTALLPERUSER=1 INSTALLMODE=User ACCEPT_EULA=1 AUTOUPDATE=YES
```

All-users installation with custom folder, Java path, and automatic updates disabled:

```bat
msiexec.exe /i "mocaclient-setup.msi" /qn /norestart ALLUSERS=1 INSTALLMODE=Machine ACCEPT_EULA=1 AUTOUPDATE=NO INSTALLDIR="D:\SmartMOCAClient" JAVA_PATH="C:\Program Files\Java\jdk-22\bin\javaw.exe"
```

## Related Pages

- [MSI Uninstallation](#/./getting-started/msi-uninstallation)
- [EXE Installation](#/./getting-started/exe-installation)
