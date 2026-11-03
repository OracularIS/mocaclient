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

Run the default silent MSI install command:

```bat
msiexec /i "setup.msi" /qn ACCEPT_EULA=1 AUTOUPDATE=YES /l*v "%TEMP%\smc_install.log"
```

Set a Java executable path when needed:

```bat
msiexec /i "setup.msi" /qn ACCEPT_EULA=1 AUTOUPDATE=YES JAVA_PATH="C:\path\to\java.exe" /l*v "%TEMP%\smc_install.log"
```

## Default Installation Folders

| Installation type | Default folder |
| --- | --- |
| Current user installation | `%APPDATA%\smartmocaclient` |
| Administrator installation | `%PROGRAMDATA%\smartmocaclient` |

## Command Options

| Option | What It Does | Default | Used In |
| --- | --- | --- | --- |
| `/i "setup.msi"` | Installs the MSI package. | None. | Default silent installation |
| `/qn` | Runs without installer UI. | Not used: the setup wizard is shown. | Default silent installation |
| `ACCEPT_EULA=1` | Accepts the license agreement. Required for silent MSI installation. | Not used: silent installation does not continue. | Default silent installation |
| `AUTOUPDATE=YES` | Enables automatic updates. | Not used: automatic update behavior is not changed by this command. | Default silent installation |
| `JAVA_PATH="C:\path\to\java.exe"` | Sets a Java executable path. | Not used: no custom Java path is set. | Java path installation |
| `/l*v "%TEMP%\smc_install.log"` | Writes a verbose MSI log file. | Not used: no verbose log is written. | Default silent installation |

## What You Should See When It Worked

- The command finishes without opening the setup wizard.
- The log file is created at `%TEMP%\smc_install.log`.
- Smart MOCA Client opens from the installed shortcut.

## Common Problems

For silent install issues, see [Troubleshooting](/getting-started/troubleshooting.md).

## Related Pages

- [Install with the MSI installer](/getting-started/msi-installation.md)
- [Uninstall MSI](/getting-started/msi-uninstallation.md)
- [Troubleshooting](/getting-started/troubleshooting.md)

## Next Steps

After installation, return to [Current Version: Overview and Download](/getting-started/getting-started-current.md) to verify the installation and launch Smart MOCA Client.
