# Silent Install with EXE

> **At a glance**
>
> | Item | Details |
> | --- | --- |
> | Applies to | EXE installer |
> | Administrator rights | Required only for All users installation |
> | Time needed | About 5 minutes |

Use this page to run the EXE installer without the setup wizard.

## Before You Begin

- Download and extract the EXE installer package.
- Open Command Prompt in the folder that contains `setup.exe`.
- For All users installation, open Command Prompt with **Run as administrator**.

> **Note:** A Windows UAC prompt cannot be hidden. For All users installation, run the command from an already elevated Command Prompt.

## Choose Your Installation Type

| Installation type | What it means |
| --- | --- |
| Default installation | Installs for the current user only. Administrator rights are not required. |
| All users installation | Installs for every user on the PC. Administrator rights are required. |

## Default Installation (Current User)

### Command

Default current-user silent installation:

```bat
setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG="%TEMP%\smc_exe_install.log"
```

### Install to a Custom Folder

Current-user silent installation to a custom folder:

```bat
setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /DIR="C:\path" /LOG="%TEMP%\smc_exe_install.log"
```

### Where the Files Go

By default, the current-user installation goes to:

```text
%APPDATA%\SmartMocaClient
```

## All Users Installation (Administrator)

### Command

All users silent installation from an elevated Command Prompt:

```bat
setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG="%TEMP%\smc_exe_install.log"
```

### About the Windows UAC Prompt

Windows may ask for administrator approval before setup can install for all users. Run Command Prompt as administrator before starting the command.

### Where the Files Go

By default, the all-users installation goes to:

```text
C:\Program Files (x86)\SmartMOCAClient
```

## Command Options

| Option | What It Does | Default | Used In |
| --- | --- | --- | --- |
| `/VERYSILENT` | Runs setup without showing wizard pages. | Not used: the setup wizard is shown. | Default installation, All users installation |
| `/SUPPRESSMSGBOXES` | Suppresses setup message boxes where possible. | Not used: setup may show message boxes. | Default installation, All users installation |
| `/NORESTART` | Prevents setup from restarting Windows automatically. | Not used: setup may restart Windows if required. | Default installation, All users installation |
| `/SP-` | Skips the setup startup prompt. | Not used: setup may show the startup prompt. | Default installation, All users installation |
| `/DIR="C:\path"` | Installs Smart MOCA Client to a custom folder. | Current user folder or all-users folder, depending on the installation type. | Custom folder installation |
| `/LOG="%TEMP%\smc_exe_install.log"` | Writes an installation log file. | Not used: no log is written. | Default installation, All users installation |

## Check That the Installation Worked

- The command finishes without opening the setup wizard.
- The log file is created at `%TEMP%\smc_exe_install.log`.
- Smart MOCA Client opens from the installed shortcut.

## Common Problems

For silent install issues, see [Troubleshooting](/getting-started/troubleshooting.md).

## Related Pages

- [Install with the EXE installer](/getting-started/exe-installation.md)
- [Silent install with EXE](/getting-started/exe-silent-installation.md)
- [Silent uninstall with EXE](/getting-started/exe-silent-uninstallation.md)
- [Uninstall EXE](/getting-started/exe-uninstallation.md)
- [Troubleshooting](/getting-started/troubleshooting.md)

## Next Steps

After installation, return to [Current Version: Overview and Download](/getting-started/getting-started-current.md) to verify the installation and launch Smart MOCA Client.
