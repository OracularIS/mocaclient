# Silent Install with EXE

> **At a glance**
>
> | Item | Details |
> | --- | --- |
> | Applies to | EXE installer |
> | Administrator rights | Required for Administrator-mode deployment |
> | Time needed | About 5 minutes |

Use this page to run the EXE installer without the setup wizard.

## Before You Begin

- Download and extract the EXE installer package.
- Open Command Prompt in the folder that contains `setup.exe`.
- For Administrator-mode deployment, open Command Prompt with **Run as administrator**.

> **Note:** A Windows UAC prompt cannot be hidden. For Administrator installs, run the command from an already elevated Command Prompt.

## Silent Install

Run the default silent EXE install command:

```bat
setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG="%TEMP%\smc_exe_install.log"
```

Install to a custom folder by adding `/DIR`:

```bat
setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /DIR="C:\path" /LOG="%TEMP%\smc_exe_install.log"
```

## Command Options

| Option | Description |
| --- | --- |
| `/VERYSILENT` | Runs setup without wizard pages. |
| `/SUPPRESSMSGBOXES` | Suppresses setup message boxes where possible. |
| `/NORESTART` | Prevents an automatic restart. |
| `/SP-` | Disables the setup startup prompt. |
| `/DIR="C:\path"` | Installs to a custom folder. |
| `/LOG="%TEMP%\smc_exe_install.log"` | Writes an installer log file. |

## What You Should See When It Worked

- The command finishes without opening the setup wizard.
- The log file is created at `%TEMP%\smc_exe_install.log`.
- Smart MOCA Client opens from the installed shortcut.

## Common Problems

For silent install issues, see [Troubleshooting](#/./getting-started/troubleshooting).

## Related Pages

- [Install with the EXE installer](#/./getting-started/exe-installation)
- [Uninstall EXE](#/./getting-started/exe-uninstallation)
- [Troubleshooting](#/./getting-started/troubleshooting)

## Next Steps

After installation, return to [Current Version: Overview and Download](#/./getting-started/getting-started-current) to verify the installation and launch Smart MOCA Client.
