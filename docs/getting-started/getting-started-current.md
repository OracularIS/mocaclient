# Get started with Smart MOCA Client-Current

Guide for connecting to a server using the latest MOCA Client interface.

## Download Smart MOCA Client
       
- Visit the [Smart IS](https://www.smart-is.com/what-we-do/smart-product/smart-is-moca-client/) website and navigate to **Our Products > MOCA Client.**
       
  ![Start In](../.attachments/NewWebPage.png)

- Click the **Download Now** button and complete the form that appears with your information to download the latest version of the installer.

  ![Install1](../.attachments/NewWebPage2.png)

- After filling out the form, you will receive an email with a link to the download page.

  ![Install2](../.attachments/NewWebPage3.png)

- Now open an email you received from Smart IS and Select the **Download MOCA Client** link provided in the email to navigate to the download page.

  ![](../.attachments/run027.png)

**Installation Options**
  
The following are the three options for installation: 

1. EXE Installer  
2. Portable  
3. MSI Installer  

---

### Download the EXE Installer
  
- On the download page, select **Installer** and click on **Download** button.

  ![Install3](../.attachments/NewWebPageExeInstaller.png)

- After clicking **"Download"**, the installation setup will begin downloading.

  ![Install4](../.attachments/NewWebPageExeDownloaded.png)

#### Run the EXE Installer
   
- Unzip the downloaded zip folder (mocaclient-setup<**version**>.zip) and open it.
 
  ![](../.attachments/run001.png)
 
- Now double click on (mocaclient<**version**>.exe) file and run this installer.

  ![](../.attachments/run002.png)

- Now follow the on-screen instructions to complete the installation process.

  ![](../.attachments/run003.png)
  ![](../.attachments/run004.png)
  ![](../.attachments/run005.png)
  ![](../.attachments/run006.png)
  ![](../.attachments/run007.png)
  ![](../.attachments/run008.png)
  ![](../.attachments/run009.png) 
  ![](../.attachments/run010.png) 
 
#### Verify Installation

- The folder named `Oracular MOCA Client` and `SmartMOCAClient` should be created at the following path:

  ![](../.attachments/run011.png)
  ![](../.attachments/run012.png)

- Once the installation process via the Installer is complete, you can verify it by checking the designated installation directory.

---

### Download the Portable 

- On the download page, select **Portable** and click on **Download** button.

  ![Install5](../.attachments/NewWebPagePortableInstaller.png)

- After clicking **"Download"**, the portable setup will begin downloading.
  
  ![Install6](../.attachments/NewWebPageportableDownloaded.png)

#### Run the Portable

- Unzip the downloaded zip folder (mocaclient-portable<**version**>.zip) and open it.
   
  ![](../.attachments/run023.png)

- Now double click on Run Setup and it will Download **Smart MOCA Client** using PowerShell.

  ![](../.attachments/run024.png)
  ![](../.attachments/run025.png)

#### Verify Installation

Follow [Verify Installation](#verify-installation) to verify correct installation of Smart MOCA Client.

---

### Download the MSI Installer
  
- On the download page, select **MSI Installer** and click on **Download** button.

  ![Install3](../.attachments/NewWebPageMSIInstaller.png)

- After clicking **"Download"**, the MSI setup will begin downloading.

  ![Install4](../.attachments/NewWebPageMSIDownloaded.png)

#### Run the MSI Installer
   
- Click on MSI file (mocaclient-setup<**version**>.msi) and open it.
 
  ![](../.attachments/NewDownloadsMSI.png)
 
- Now double click on (mocaclient-setup<**version**>.msi) file and run this MSI file.

  ![](../.attachments/MSIInstallation1.png)

- Follow the on-screen instructions to complete the installation process.

  ![](../.attachments/MSIInstallation2.png)
  ![](../.attachments/MSIInstallation3.png)
  ![](../.attachments/MSIInstallation4.png)
  ![](../.attachments/MSIInstallation5.png)
  ![](../.attachments/MSIInstallation6.png)

#### Verify Installation

- The folder named `Oracular MOCA Client` and `SmartMOCAClient` should be created at the following path:

  ![](../.attachments/run011.png)
  ![](../.attachments/run012.png)

- Once the MSI installation process is complete, you can verify it by checking the designated installation directory.

---

## Install, Uninstall, and Silent Setup

Smart MOCA Client supports user-mode and administrator-mode installation for both EXE and MSI installers. This section includes the install mode screens, silent installation commands, uninstall commands, and CMD/PowerShell command differences.

## Before Running a Command

- Command Prompt and PowerShell use different syntax in some places.
- CMD examples use `%TEMP%`, `%APPDATA%`, and `%PROGRAMDATA%`.
- PowerShell examples use `$env:TEMP`, `$env:APPDATA`, and `$env:PROGRAMDATA` unless `msiexec.exe --%` is used.
- PowerShell needs the call operator `&` before a quoted executable path.
- PowerShell's `--%` stop-parsing token is only for PowerShell. Do not use `--%` in CMD.
- Run silent all-users installation and uninstall from a terminal opened with **Run as administrator**. Silent flags do not grant administrator privileges or bypass UAC.
- Use one installer format per installation. If Smart MOCA Client was installed by MSI, uninstall with MSI. If it was installed by EXE, uninstall with the EXE uninstaller.
- EXE/Inno Setup commands use slash switches such as `/CURRENTUSER`, `/ALLUSERS`, and `/DIR=`.
- MSI commands use Windows Installer public properties such as `ALLUSERS=1`, `INSTALLMODE=Machine`, and `ACCEPT_EULA=1`.

## Installers at a Glance

| | EXE Installer | MSI Installer |
| --- | --- | --- |
| File | `setup.exe` | `setup.msi` or `mocaclient-setup.msi` |
| Installer technology | Inno Setup | WiX MSI |
| Product ID | `{2DC3A291-5F00-4794-8955-BF3E6F8A7956}` | `{2DC3A291-5F00-4794-8955-BF3E6F8A7956}` |
| Install modes | Run as User, Run as Administrator | Run as User, Run as Administrator |
| Uninstall behavior | Supports keeping settings or removing everything | Supports keeping settings or removing everything |

## Install Mode Selection

Smart MOCA Client supports user-mode and administrator-mode installation.

| Install Mode | Application Folder | Shortcut Location | Administrator Required |
| --- | --- | --- | --- |
| Run as User | `%APPDATA%\SmartMOCAClient` | Current user's Start Menu and Desktop | No |
| Run as Administrator | `%PROGRAMDATA%\SmartMOCAClient` | All users Start Menu and Desktop | Yes |

The `Oracular MOCA Client` data folder follows the selected installation mode. User mode stores data under the current user's AppData location. Administrator mode stores shared data under ProgramData.

### EXE Installer (Inno Setup)

The EXE installer starts with a setup install mode selection.

- **Run as User:** installs Smart MOCA Client for the current user only.
- **Run as Administrator:** installs Smart MOCA Client for all users. Windows may show a UAC approval prompt.

![EXE install mode selection](../.attachments/exe-install-mode-selection.png)

### MSI Installer

The MSI installer shows a **Choose installation mode** page.

- **Run as User (current user only):** installs in AppData without administrator privileges.
- **Run as Administrator (all users):** installs in ProgramData and requires administrator approval.

![MSI install mode selection](../.attachments/msi-install-mode-selection.png)

If Smart MOCA Client is already installed in a different installation mode, uninstall the existing version before switching between user mode and administrator mode.

## EXE / Inno Silent Installation

### CMD - Current User

```bat
"D:\Projects\mocaclient13122024\MocaClient\Output\setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER /LOG="%TEMP%\smc-exe-install-user.log"
```

### CMD - All Users

Run from administrator CMD.

```bat
"D:\Projects\mocaclient13122024\MocaClient\Output\setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /LOG="%TEMP%\smc-exe-install-admin.log"
```

### CMD - Custom Current User Folder

```bat
"D:\Projects\mocaclient13122024\MocaClient\Output\setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER /DIR="D:\SmartMocaClient" /LOG="%TEMP%\smc-exe-install-user.log"
```

### CMD - Custom All Users Folder

Run from administrator CMD.

```bat
"D:\Projects\mocaclient13122024\MocaClient\Output\setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /ALLUSERS /DIR="D:\SmartMocaClient" /LOG="%TEMP%\smc-exe-install-admin.log"
```

### PowerShell - EXE Install

PowerShell needs `&` before a quoted EXE path and uses `$env:TEMP` for the log path.

```powershell
& "D:\Projects\mocaclient13122024\MocaClient\Output\setup.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER /DIR="D:\SmartMocaClient" /LOG="$env:TEMP\smc-exe-install.log"
```

For a machine installation, replace `/CURRENTUSER` with `/ALLUSERS` and run PowerShell as administrator.

## MSI Silent Installation

### CMD - Current User

```bat
msiexec.exe /i "D:\Projects\mocaclient13122024\MocaClient\PackageContents\setup.msi" /qn /norestart ALLUSERS=2 MSIINSTALLPERUSER=1 INSTALLMODE=User ACCEPT_EULA=1 AUTOUPDATE=YES /L*V "%TEMP%\smc-msi-install-user.log"
```

### CMD - All Users

Run from administrator CMD.

```bat
msiexec.exe /i "D:\Projects\mocaclient13122024\MocaClient\PackageContents\setup.msi" /qn /norestart ALLUSERS=1 INSTALLMODE=Machine ACCEPT_EULA=1 AUTOUPDATE=NO /L*V "%TEMP%\smc-msi-install-admin.log"
```

### CMD - Current User with Java Path

```bat
msiexec.exe /i "D:\Projects\mocaclient13122024\MocaClient\PackageContents\setup.msi" /qn /norestart ALLUSERS=2 MSIINSTALLPERUSER=1 INSTALLMODE=User ACCEPT_EULA=1 AUTOUPDATE=YES JAVA_PATH="C:\Program Files\Java\jdk-22\bin\javaw.exe" /L*V "%TEMP%\smc-msi-install-user.log"
```

### CMD - All Users with Custom Folder and Java Path

Run from administrator CMD.

```bat
msiexec.exe /i "D:\Projects\mocaclient13122024\MocaClient\PackageContents\setup.msi" /qn /norestart ALLUSERS=1 INSTALLMODE=Machine ACCEPT_EULA=1 AUTOUPDATE=NO INSTALLDIR="D:\SmartMocaClient" JAVA_PATH="C:\Program Files\Java\jdk-22\bin\javaw.exe" /L*V "%TEMP%\smc-msi-install-admin.log"
```

### PowerShell - MSI Install

Use `msiexec.exe --%` in PowerShell to stop PowerShell from interpreting the remaining native-command arguments. After `--%`, use literal paths or `%TEMP%`; do not use `$env:TEMP` after `--%`.

```powershell
msiexec.exe --% /i "D:\Projects\mocaclient13122024\MocaClient\PackageContents\setup.msi" /qn /norestart ALLUSERS=2 MSIINSTALLPERUSER=1 INSTALLMODE=User ACCEPT_EULA=1 AUTOUPDATE=YES /L*V "%TEMP%\smc-msi-install-user.log"
```

For all-users MSI installation, run PowerShell as administrator and use `ALLUSERS=1 INSTALLMODE=Machine`.

## EXE / Inno Supported Switches

These switches apply only to the EXE installer or the EXE uninstaller generated by Inno Setup. Do not use MSI public properties with the EXE installer.

| Switch | Applies To | Description |
| --- | --- | --- |
| `/CURRENTUSER` | EXE install | Selects current-user installation mode. |
| `/ALLUSERS` | EXE install | Selects all-users installation mode. Run elevated. |
| `/DIR="path"` | EXE install | Sets a custom EXE installation folder. |
| `/VERYSILENT` | EXE install/uninstall | Runs without installer wizard pages. |
| `/SUPPRESSMSGBOXES` | EXE install/uninstall | Suppresses message boxes during silent mode. |
| `/NORESTART` | EXE install/uninstall | Prevents automatic restart. |
| `/LOG="path"` | EXE install/uninstall | Writes an Inno Setup log file. |
| `/REMOVE_USER_DATA=1` | EXE uninstall | Requests complete deletion during uninstall. |

For EXE uninstall, omit `/REMOVE_USER_DATA=1` to keep settings and Oracular data. `/REMOVE_USER_DATA=0` is not required for EXE uninstall because keeping data is the default behavior.

## MSI Supported Properties

These properties apply only to MSI commands run through `msiexec.exe`. Do not use EXE/Inno slash switches with MSI, except standard Windows Installer options such as `/i`, `/x`, `/qn`, `/qf`, `/norestart`, and `/L*V`.

| Property | Applies To | Description |
| --- | --- | --- |
| `ALLUSERS=2 MSIINSTALLPERUSER=1 INSTALLMODE=User` | MSI install | Selects current-user installation mode. |
| `ALLUSERS=1 INSTALLMODE=Machine` | MSI install | Selects all-users installation mode. Run elevated. |
| `ACCEPT_EULA=1` | MSI install | Required for silent MSI installation. |
| `AUTOUPDATE=YES` or `AUTOUPDATE=NO` | MSI install | Enables or disables automatic updates. |
| `INSTALLDIR="path"` | MSI install | Sets a custom MSI installation folder. |
| `JAVA_PATH="path"` | MSI install | Specifies the Java executable path. |
| `REMOVE_USER_DATA=0` | MSI uninstall | Keeps settings and Oracular data. Default behavior. |
| `REMOVE_USER_DATA=1` | MSI uninstall | Requests complete deletion during uninstall. |

Do not confuse MSI `/a` with administrator installation. MSI `/a` creates an administrative installation image; it does not select Smart MOCA Client all-users mode.

## Uninstall Choices

| Option | Result |
| --- | --- |
| Keep my settings and saved data | Removes application files and shortcuts, but keeps configuration and user data for future installations. |
| Remove everything | Removes the application, settings, registry entries, and Smart MOCA Client data folders. This cannot be undone. |

![Uninstall keep settings or remove everything](../.attachments/uninstall-keep-or-remove.png)

## EXE / Inno Uninstall Commands

Run the installed uninstaller, normally `unins000.exe`, from the actual application folder. There is no `/CURRENTUSER` or `/ALLUSERS` uninstall flag; Inno remembers the installation scope.

### CMD - Current User, Keep Data

```bat
"%APPDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc-exe-uninstall-user.log"
```

### CMD - All Users, Keep Data

Run from administrator CMD.

```bat
"%PROGRAMDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc-exe-uninstall-admin.log"
```

### CMD - Current User, Remove Everything

```bat
"%APPDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /REMOVE_USER_DATA=1 /LOG="%TEMP%\smc-exe-uninstall-complete.log"
```

### CMD - All Users, Remove Everything

Run from administrator CMD.

```bat
"%PROGRAMDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /REMOVE_USER_DATA=1 /LOG="%TEMP%\smc-exe-uninstall-complete-admin.log"
```

### PowerShell - EXE Uninstall

```powershell
& "$env:APPDATA\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="$env:TEMP\smc-exe-uninstall.log"
```

Add `/REMOVE_USER_DATA=1` only when complete deletion is intended. Replace the path with `$env:PROGRAMDATA\SmartMOCAClient\unins000.exe` for an all-users installation and run PowerShell as administrator.

Do not use `/SP-` on uninstall commands. `/SP-` is a setup startup-prompt switch for the installer.

## MSI Uninstall Commands

Use the same Windows account for a per-user product. Use administrator CMD or administrator PowerShell for silent all-users removal.

### CMD - Silent Uninstall and Keep Settings

```bat
msiexec.exe /x "{2DC3A291-5F00-4794-8955-BF3E6F8A7956}" /qn /norestart REMOVE_USER_DATA=0 /L*V "%TEMP%\smc-msi-uninstall-keep.log"
```

### CMD - Silent Uninstall and Remove Everything

```bat
msiexec.exe /x "{2DC3A291-5F00-4794-8955-BF3E6F8A7956}" /qn /norestart REMOVE_USER_DATA=1 /L*V "%TEMP%\smc-msi-uninstall-complete.log"
```

### CMD - Interactive Uninstall with Radio Buttons

```bat
msiexec.exe /x "{2DC3A291-5F00-4794-8955-BF3E6F8A7956}" /qf /norestart /L*V "%TEMP%\smc-msi-uninstall-wizard.log"
```

### PowerShell - MSI Uninstall and Keep Settings

```powershell
msiexec.exe --% /x "{2DC3A291-5F00-4794-8955-BF3E6F8A7956}" /qn /norestart REMOVE_USER_DATA=0 /L*V "%TEMP%\smc-msi-uninstall-keep.log"
```

For the wizard, replace `/qn` with `/qf`. For silent complete deletion, use `REMOVE_USER_DATA=1`. Never put `--%` in a CMD command.

Do not supply `ACCEPT_EULA`, `AUTOUPDATE`, or installation-scope switches for uninstall. Windows Installer uses the registered installation context.

## Troubleshooting

| Symptom | Cause and Fix |
| --- | --- |
| MSI says the product is already installed | Uninstall the existing Smart MOCA Client version before installing again or switching install mode. |
| Administrator mode shows a Windows approval window | This is the UAC prompt. Run from an elevated terminal or deploy with administrator rights. |
| PowerShell says a quoted EXE path is not recognized | Add `&` before the quoted executable path. |
| PowerShell treats `/x` or `/i` as an operator | Use CMD, or use PowerShell's stop-parsing token with `msiexec.exe --%`. |
| `%TEMP%` appears literally in a normal PowerShell command | Use `$env:TEMP` unless the command uses `--%`. |
| `unins000.exe` is missing | The application may have been installed by MSI. Use the MSI uninstall command instead. |

---
### Launch Smart MOCA Client
   
- Once installed, launch Smart MOCA Client by double-clicking on the desktop icon or searching for it in the start menu.

  ![](../.attachments/run013.png)

  <mark>**Note:** In case shortcuts are not created, the following shortcut can be used to launch Smart MOCA Client.</mark>

  ![](../.attachments/run026.png)

- Once the application starts, you will see the following interface:

  ![](../.attachments/run014.png)

Note: *Follow [Password Security](./connections/secure-server-connections.md) for details about the **Security** popup*.


## Add Server

Follow [Add/Update/Remove Server](./connections/add-connect-remoteserver.md) to add server in Smart MOCA Client.


## Download `moca.jar`

Following are the methods to download `moca.jar` in Smart MOCA Client:

1. Download upon Server Connection
2. Download via Tools Menu


### Download upon Server Connection

- Upon the first server connection, the Smart MOCA Client detects the absence of `moca.jar` and following popup appears:

  ![](../.attachments/run015.png)

- Click on the **Download and Use the `moca.jar` from this environment** button and the system will begin downloading the moca.pending_jar file .

  ![](../.attachments/run016.png)
  ![](../.attachments/run017.png)

- Navigate to the directory and ensure that the **moca.pending_jar** file has been successfully downloaded.

  ![](../.attachments/run018.png)

- Now click on **OK** button and **restart** Smart MOCA Client. The system will automatically rename **moca.pending_jar** to **moca.jar** and will use `moca.jar` instead of labelzoom.jar.

  ![](../.attachments/run020.png)

- Finally, verify the usage of `moca.jar` by navigating **Help --> About Smart MOCA and SQL Client**.

  ![](../.attachments/run019.png)

### Download via Tools Menu

- If you have skipped [Download upon Server Connection](#download-upon-server-connection), then you can download the `moca.jar` later by navigating to **Tools --> Download moca.jar**.

  ![](../.attachments/run021.png)

<mark>**Note:** *moca.jar should be compatible with current java version.*</mark>
