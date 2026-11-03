# Silent Uninstall with EXE

> **At a glance**
>
> | Item | Details |
> | --- | --- |
> | Applies to | Installations created by the EXE installer |
> | Administrator rights | Required only if Smart MOCA Client was installed for all users |
> | Time needed | About 5 minutes |

Use this page to uninstall Smart MOCA Client without the setup wizard.

## Before You Begin

- Close Smart MOCA Client.
- Open Command Prompt.
- For an all-users installation, open Command Prompt with **Run as administrator**.
- Use `start /wait` so Command Prompt waits until the uninstaller finishes.

## Silent Uninstall (Default Installation)

### Command

Default current-user silent uninstall:

```bat
start /wait "" "%APPDATA%\smartmocaclient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc_exe_uninstall.log"
```

## Silent Uninstall (All Users Installation)

### Command

All users silent uninstall from an elevated Command Prompt:

```bat
start /wait "" "%PROGRAMDATA%\smartmocaclient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc_exe_uninstall.log"
```

## Command Options

| Option | What It Does | Default | Used In |
| --- | --- | --- | --- |
| `/VERYSILENT` | Runs uninstall without showing wizard pages. | Not used: the uninstall wizard is shown. | Default uninstall, All users uninstall |
| `/SUPPRESSMSGBOXES` | Suppresses uninstall message boxes where possible. | Not used: uninstall may show message boxes. | Default uninstall, All users uninstall |
| `/NORESTART` | Prevents the uninstaller from restarting Windows automatically. | Not used: uninstall may restart Windows if required. | Default uninstall, All users uninstall |
| `/LOG="%TEMP%\smc_exe_uninstall.log"` | Writes an uninstall log file. | Not used: no log is written. | Default uninstall, All users uninstall |

## What Is Kept or Removed

| Choice | What it removes | Folders that stay |
| --- | --- | --- |
| Keep my settings and saved data | Removes the application folder except the `config` folder and removes shortcuts. | The `config` folder and the `Oracular MOCA Client` data folder stay. |
| Remove everything | Removes the application, settings, registry entries, and Oracular MOCA Client data. | No Smart MOCA Client folders are intentionally kept. |

> **Note:** This checkout does not include the installer source that confirms a silent command-line switch for choosing **Keep my settings and saved data** or **Remove everything**.

## Check That the Uninstall Worked

- Smart MOCA Client shortcuts are removed.
- The application files are removed from the installation folder.
- The log file is created at `%TEMP%\smc_exe_uninstall.log`.

## Common Problems

For silent uninstall issues, see [Troubleshooting](/getting-started/troubleshooting.md).

## Related Pages

- [Install with the EXE installer](/getting-started/exe-installation.md)
- [Silent install with EXE](/getting-started/exe-silent-installation.md)
- [Silent uninstall with EXE](/getting-started/exe-silent-uninstallation.md)
- [Uninstall EXE](/getting-started/exe-uninstallation.md)
- [Troubleshooting](/getting-started/troubleshooting.md)

## Next Steps

If you plan to reinstall, return to [Current Version: Overview and Download](/getting-started/getting-started-current.md).
