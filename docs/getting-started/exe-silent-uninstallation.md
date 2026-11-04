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

### Keep Settings and Saved Data

Default current-user silent uninstall keeps settings and saved data:

```bat
start /wait "" "%APPDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc_exe_uninstall_keep.log"
```

### Remove Everything

Current-user silent uninstall and remove everything:

```bat
start /wait "" "%APPDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /REMOVE_USER_DATA=1 /LOG="%TEMP%\smc_exe_uninstall_full.log"
```

## Silent Uninstall (All Users Installation)

### Keep Settings and Saved Data

All users silent uninstall from an elevated Command Prompt keeps settings and saved data:

```bat
start /wait "" "%PROGRAMDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc_exe_admin_uninstall_keep.log"
```

### Remove Everything

All users silent uninstall from an elevated Command Prompt and remove everything:

```bat
start /wait "" "%PROGRAMDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /REMOVE_USER_DATA=1 /LOG="%TEMP%\smc_exe_admin_uninstall_full.log"
```

## Command Options

| Option | What It Does | Default | Used In |
| --- | --- | --- | --- |
| `/VERYSILENT` | Runs uninstall without showing wizard pages. | Not used: the uninstall wizard is shown. | Default uninstall, All users uninstall |
| `/SUPPRESSMSGBOXES` | Suppresses uninstall message boxes where possible. | Not used: uninstall may show message boxes. | Default uninstall, All users uninstall |
| `/NORESTART` | Prevents the uninstaller from restarting Windows automatically. | Not used: uninstall may restart Windows if required. | Default uninstall, All users uninstall |
| `/REMOVE_USER_DATA=1` | Selects **Remove everything**. | Not used: uninstall keeps settings and saved data. | Remove everything commands |
| `/LOG="%TEMP%\smc_exe_uninstall.log"` | Writes an uninstall log file. | Not used: no log is written. | Default uninstall, All users uninstall |

## What Is Kept or Removed

| Choice | What it removes | Folders that stay |
| --- | --- | --- |
| Keep my settings and saved data | Removes the application folder except the `config` folder and removes shortcuts. | The `config` folder and the `Oracular MOCA Client` data folder stay. |
| Remove everything | Removes the application, settings, registry entries, and Oracular MOCA Client data. | No Smart MOCA Client folders are intentionally kept. |

## Check That the Uninstall Worked

- Smart MOCA Client shortcuts are removed.
- The application files are removed from the installation folder.
- The log file is created at the path you selected.

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
