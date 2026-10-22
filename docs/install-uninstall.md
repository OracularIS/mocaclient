# Smart MOCA Client Install, Uninstall, and Silent Setup

This page describes how the Smart MOCA Client EXE and MSI installers install and uninstall, where files are placed, and how to run silent install or uninstall commands.

## Installers at a Glance

| | EXE Installer | MSI Installer |
| --- | --- | --- |
| File | `setup.exe` | `mocaclient-setup.msi` |
| Installer technology | Inno Setup | WiX MSI |
| Product ID | `{2DC3A291-5F00-4794-8955-BF3E6F8A7956}` | `{2DC3A291-5F00-4794-8955-BF3E6F8A7956}` |
| Install modes | Run as User, Run as Administrator | Run as User, Run as Administrator |
| Uninstall behavior | Supports keeping settings or removing everything | Supports keeping settings or removing everything |

## Install Mode Selection

Smart MOCA Client supports user-mode and administrator-mode installation.

| Install Mode | Application Folder | Shortcut Location | Administrator Required |
| --- | --- | --- | --- |
| Run as User | `%APPDATA%\SmartMOCAClient` | Current user's Start Menu and Desktop | No |
| Run as Administrator | `C:\ProgramData\SmartMOCAClient` | All users Start Menu and Desktop | Yes |

The `Oracular MOCA Client` data folder follows the selected installation mode. User mode stores data under the current user's AppData location. Administrator mode stores shared data under ProgramData.

### EXE Installer

The EXE installer starts with a setup install mode selection.

- **Run as User:** installs Smart MOCA Client for the current user only.
- **Run as Administrator:** installs Smart MOCA Client for all users. Windows may show a UAC approval prompt.

### MSI Installer

The MSI installer shows a **Choose installation mode** page.

- **Run as User (current user only):** installs in AppData without administrator privileges.
- **Run as Administrator (all users):** installs in ProgramData and requires administrator approval.

If Smart MOCA Client is already installed in a different installation mode, uninstall the existing version before switching between user mode and administrator mode.

## Silent Installation

Silent installation is supported for both EXE and MSI installers. Run commands from Command Prompt, or use `&` before quoted paths in PowerShell.

### MSI Silent Install

```bat
msiexec /i "mocaclient-setup.msi" /qn ACCEPT_EULA=1 AUTOUPDATE=YES /l*v "%TEMP%\smc_install.log"
```

To pass a custom Java path:

```bat
msiexec /i "mocaclient-setup.msi" /qn ACCEPT_EULA=1 AUTOUPDATE=YES JAVA_PATH="C:\Program Files\Java\jdk-22\bin\javaw.exe" /l*v "%TEMP%\smc_install.log"
```

### EXE Silent Install

```bat
setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG="%TEMP%\smc_exe_install.log"
```

To install to a custom folder:

```bat
setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /DIR="C:\ProgramData\SmartMOCAClient" /LOG="%TEMP%\smc_exe_install.log"
```

### Silent Installation Parameters

| Parameter | Applies To | Description | Required |
| --- | --- | --- | --- |
| `ACCEPT_EULA=1` | MSI | Accepts the End User License Agreement. The MSI silent install aborts without this value. | Yes |
| `AUTOUPDATE=YES` | MSI | Enables automatic updates. Use `NO` to disable automatic updates. | No |
| `INSTALLDIR="path"` or `/DIR="path"` | MSI / EXE | Overrides the default installation directory. | No |
| `JAVA_PATH="path"` | MSI | Specifies the Java executable path. | No |

Administrator/all-users installation can require Windows elevation. To avoid an interactive UAC prompt during deployment, run the command from an already elevated Command Prompt or deploy using a tool that runs with administrator rights.

## Uninstall Smart MOCA Client

Smart MOCA Client uninstall provides two choices.

| Option | Result |
| --- | --- |
| Keep my settings and saved data | Removes application files and shortcuts, but keeps configuration and user data for future installations. |
| Remove everything | Removes the application, settings, registry entries, and Smart MOCA Client data folders. This cannot be undone. |

### MSI Uninstall

To uninstall with UI:

```bat
msiexec /x {2DC3A291-5F00-4794-8955-BF3E6F8A7956} /qf /norestart /l*v "%TEMP%\smc_uninstall.log"
```

To uninstall silently:

```bat
msiexec /x {2DC3A291-5F00-4794-8955-BF3E6F8A7956} /qn /norestart /l*v "%TEMP%\smc_uninstall.log"
```

### EXE Uninstall

The EXE uninstaller is `unins000.exe` inside the Smart MOCA Client installation folder.

User mode example:

```bat
start /wait "" "%APPDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc_uninstall.log"
```

Administrator mode example:

```bat
start /wait "" "C:\ProgramData\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc_uninstall.log"
```

Use `start /wait` because the Inno uninstaller can relaunch itself and return control before uninstall is complete.

### Complete EXE Uninstall

To remove saved settings and data during EXE uninstall, pass the remove-user-data switch:

```bat
start /wait "" "%APPDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /REMOVE_USER_DATA=1 /LOG="%TEMP%\smc_uninstall.log"
```

## Troubleshooting

| Symptom | Cause and Fix |
| --- | --- |
| MSI says the product is already installed | Uninstall the existing Smart MOCA Client version before installing again or switching install mode. |
| Administrator mode shows a Windows approval window | This is the UAC prompt. Run from an elevated Command Prompt or deploy with administrator rights. |
| Silent uninstall appears to finish too quickly | Use `start /wait` for the EXE uninstaller and write the log to an existing folder such as `%TEMP%`. |
| `unins000.exe` is missing | The application may have been installed by MSI. Use the MSI uninstall command instead. |
| PowerShell treats `/x` or `/i` as an operator | Use Command Prompt, or use PowerShell's stop-parsing token with `msiexec.exe --%`. |