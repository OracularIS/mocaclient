# Uninstall MSI

> **At a glance**
>
> | Item | Details |
> | --- | --- |
> | Applies to | Installations created by the MSI installer |
> | Administrator rights | Needed if Smart MOCA Client was installed with **Run as Administrator** |
> | Time needed | About 5 minutes |

Use this page only when Smart MOCA Client was installed with the MSI installer. If it was installed with EXE, use [Uninstall EXE](/getting-started/exe-uninstallation.md).

## Before You Begin

- Close Smart MOCA Client.
- Back up anything you cannot afford to lose.
- Decide whether to keep saved settings or remove everything.

> **Warning:** **Remove everything** permanently deletes settings and Oracular MOCA Client data, including saved scripts and history. This cannot be undone.

## Uninstall Smart MOCA Client

You can start the MSI uninstall in any of these ways:

- Open **Apps & features** and uninstall **Smart MOCA Client**.
- Open the Start Menu folder **Smart MOCA Client**, then select **Uninstall Smart MOCA Client**.
- Run `Uninstall.cmd` from the install folder:
  - User install: `%APPDATA%\SmartMOCAClient\Uninstall.cmd`
  - Administrator install: `C:\ProgramData\SmartMOCAClient\Uninstall.cmd`

When the uninstall wizard opens:

1. Choose one uninstall option:
   - **Keep my settings and saved data (recommended):** removes the application folder except the `config` folder and removes shortcuts. It does not touch the `Oracular MOCA Client` folder.
   - **Remove everything:** removes the application, settings, registry entries, and all Oracular MOCA Client data.

   ![MSI uninstall options](../.attachments/msi-uninstall-options.png)

2. Select **Uninstall**.
3. Wait for the uninstall to finish.

## Uninstall Commands

Use `Uninstall.cmd` when it is available. It starts the Smart MOCA Client MSI uninstall and passes through any options you add.

Run normal uninstall with the wizard:

```bat
"%APPDATA%\SmartMOCAClient\Uninstall.cmd"
```

Run silent uninstall with the recommended option, **Keep my settings and saved data**:

```bat
"%APPDATA%\SmartMOCAClient\Uninstall.cmd" /qn /norestart
```

Run silent uninstall with the recommended option and a log file:

```bat
"%APPDATA%\SmartMOCAClient\Uninstall.cmd" /qn /norestart /l*v "%TEMP%\smc_uninstall_keep.log"
```

Run silent uninstall and **Remove everything**:

```bat
"%APPDATA%\SmartMOCAClient\Uninstall.cmd" /qn REMOVEALL=1 /norestart /l*v "%TEMP%\smc_uninstall_full.log"
```

For an Administrator install, use the ProgramData launcher path instead:

```bat
"C:\ProgramData\SmartMOCAClient\Uninstall.cmd" /qn /norestart /l*v "%TEMP%\smc_uninstall_keep.log"
```

Command parameters:

| Parameter | Meaning |
| --- | --- |
| `/qn` | Runs silently with no UI. If `REMOVEALL=1` is not included, the uninstall keeps settings and saved data. |
| `/qf` | Shows the full uninstall UI. |
| `/norestart` | Prevents Windows Installer from restarting Windows automatically. |
| `/l*v "path"` | Writes a verbose uninstall log to the selected path. |
| `REMOVEALL=1` | Selects **Remove everything** for silent uninstall. |

## What You Should See When It Worked

- Smart MOCA Client shortcuts are removed.
- The Start Menu uninstall shortcut is removed.
- `Uninstall.cmd` is removed with the application files.
- The application files are removed.
- The uninstall log is created when you use one of the command-line options.

## Common Problems

For uninstall issues, see [Troubleshooting](/getting-started/troubleshooting.md).

## Related Pages

- [Install with the MSI installer](/getting-started/msi-installation.md)
- [Silent install with MSI](/getting-started/msi-silent-installation.md)
- [Silent Uninstall with MSI](/getting-started/msi-silent-uninstallation.md)
- [Uninstall EXE](/getting-started/exe-uninstallation.md)
- [Troubleshooting](/getting-started/troubleshooting.md)

## Next Steps

If you plan to reinstall, return to [Current Version: Overview and Download](/getting-started/getting-started-current.md).