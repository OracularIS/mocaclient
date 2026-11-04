# Silent Uninstall with MSI

> **At a glance**
>
> | Item | Details |
> | --- | --- |
> | Applies to | MSI installer |
> | Administrator rights | Required if Smart MOCA Client was installed in Administrator mode |
> | Time needed | About 2 minutes |

Use this page to remove Smart MOCA Client without the uninstall wizard.

## Before You Begin

- Close Smart MOCA Client.
- Open Command Prompt.
- If Smart MOCA Client was installed in Administrator mode, open Command Prompt with **Run as administrator**.
- If it was installed for the current user, run the command as the same Windows user.

> **Note:** A Windows UAC prompt cannot be hidden. For Administrator uninstalls, run the command from an already elevated Command Prompt.

## Silent Uninstall

Use `Uninstall.cmd` from the install folder when it is available. It starts the MSI uninstall and passes through the options you add.

### Current User Installation

Silent uninstall with the recommended option, **Keep my settings and saved data**:

```bat
"%APPDATA%\SmartMOCAClient\Uninstall.cmd" /qn /norestart /l*v "%TEMP%\smc_msi_uninstall_keep.log"
```

Silent uninstall and **Remove everything**:

```bat
"%APPDATA%\SmartMOCAClient\Uninstall.cmd" /qn REMOVEALL=1 /norestart /l*v "%TEMP%\smc_msi_uninstall_full.log"
```

### Administrator Installation

Silent Administrator uninstall with the recommended option, **Keep my settings and saved data**:

```bat
"C:\ProgramData\SmartMOCAClient\Uninstall.cmd" /qn /norestart /l*v "%TEMP%\smc_msi_admin_uninstall_keep.log"
```

Silent Administrator uninstall and **Remove everything**:

```bat
"C:\ProgramData\SmartMOCAClient\Uninstall.cmd" /qn REMOVEALL=1 /norestart /l*v "%TEMP%\smc_msi_admin_uninstall_full.log"
```

## Command Options

| Option | What It Does | Default | Used In |
| --- | --- | --- | --- |
| `/qn` | Runs silently with no uninstall UI. | Not used: the uninstall wizard is shown. | All silent uninstall commands |
| `/norestart` | Prevents Windows Installer from restarting Windows automatically. | Not used: Windows may restart if required. | All silent uninstall commands |
| `/l*v "path"` | Writes a verbose uninstall log file. | Not used: no verbose log is written. | All silent uninstall commands |
| `REMOVEALL=1` | Selects **Remove everything**. | Not used: uninstall keeps settings and saved data. | Remove everything commands |

## What Is Kept or Removed

| Setting | What happens |
| --- | --- |
| Keep my settings and saved data | Removes the application and shortcuts. Settings and Oracular MOCA Client data stay for a future installation. |
| Remove everything | Removes the application, settings, and all Oracular MOCA Client data. This cannot be undone. |

## What You Should See When It Worked

- The command finishes without opening a window.
- Smart MOCA Client no longer appears in **Settings > Apps > Installed apps**.
- The Start Menu shortcut is gone.
- The uninstall log is created at the path you selected.

## Common Problems

For uninstall issues, see [Troubleshooting](/getting-started/troubleshooting.md).

## Related Pages

- [Uninstall MSI](/getting-started/msi-uninstallation.md)
- [Silent Install with MSI](/getting-started/msi-silent-installation.md)
- [Troubleshooting](/getting-started/troubleshooting.md)
