# Silent Install with MSI

> **At a glance**
>
> | Item | Details |
> | --- | --- |
> | Applies to | MSI installer |
> | Administrator rights | Required for Administrator-mode deployment |
> | Time needed | About 5 minutes |

Use this page to run the MSI installer without the setup wizard.

## Before You Begin

- Download the MSI installer package.
- Open Command Prompt in the folder that contains `setup.msi`.
- For Administrator-mode deployment, open Command Prompt with **Run as administrator**.

> **Note:** `ACCEPT_EULA=1` is required for a silent MSI install.

> **Note:** A Windows UAC prompt cannot be hidden. For Administrator installs, run the command from an already elevated Command Prompt.

## Silent Install

### Current User Installation

Run the default current-user silent MSI install command:

```bat
msiexec /i "setup.msi" /qn ACCEPT_EULA=1 AUTOUPDATE=YES /l*v "%TEMP%\smc_install.log"
```

Set a Java executable path when needed:

```bat
msiexec /i "setup.msi" /qn ACCEPT_EULA=1 AUTOUPDATE=YES JAVA_PATH="C:\path\to\java.exe" /l*v "%TEMP%\smc_install.log"
```

### Administrator Installation

Run Administrator-mode silent install from an elevated Command Prompt:

```bat
msiexec /i "setup.msi" /qn ALLUSERS=1 ACCEPT_EULA=1 AUTOUPDATE=NO /l*v "%TEMP%\smc_admin_install.log"
```

Set a Java executable path for Administrator-mode deployment when needed:

```bat
msiexec /i "setup.msi" /qn ALLUSERS=1 ACCEPT_EULA=1 AUTOUPDATE=NO JAVA_PATH="C:\path\to\java.exe" /l*v "%TEMP%\smc_admin_install.log"
```

## Default Installation Folders

| Installation type | Default folder |
| --- | --- |
| Current user installation | `%APPDATA%\SmartMOCAClient` |
| Administrator installation | `C:\ProgramData\SmartMOCAClient` |

## Command Options

| Option | What It Does | Default | Used In |
| --- | --- | --- | --- |
| `/i "setup.msi"` | Installs the MSI package. | None. | All MSI install commands |
| `/qn` | Runs without installer UI. | Not used: the setup wizard is shown. | All silent install commands |
| `ALLUSERS=1` | Installs in Administrator mode for all users. Run from an elevated Command Prompt. | Not used: installs for the current user. | Administrator installation |
| `ACCEPT_EULA=1` | Accepts the license agreement. Required for silent MSI installation. | Not used: silent installation does not continue. | All silent install commands |
| `AUTOUPDATE=YES` | Enables automatic updates. | Current-user installs can use automatic updates. | Current user installation |
| `AUTOUPDATE=NO` | Disables automatic updates. | Administrator deployments should be updated by IT. | Administrator installation |
| `JAVA_PATH="C:\path\to\java.exe"` | Sets a Java executable path. | Not used: no custom Java path is set. | Java path installation |
| `/l*v "%TEMP%\smc_install.log"` | Writes a verbose MSI log file. | Not used: no verbose log is written. | All silent install commands |

## What You Should See When It Worked

- The command finishes without opening the setup wizard.
- The log file is created at the path you selected.
- Smart MOCA Client opens from the installed shortcut.

## Common Problems

For silent install issues, see [Troubleshooting](/getting-started/troubleshooting.md).

## Related Pages

- [Install with the MSI installer](/getting-started/msi-installation.md)
- [Silent Uninstall with MSI](/getting-started/msi-silent-uninstallation.md)
- [Uninstall MSI](/getting-started/msi-uninstallation.md)
- [Troubleshooting](/getting-started/troubleshooting.md)

## Next Steps

After installation, return to [Current Version: Overview and Download](/getting-started/getting-started-current.md) to verify the installation and launch Smart MOCA Client.
