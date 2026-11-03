# Uninstall EXE

> **At a glance**
>
> | Item | Details |
> | --- | --- |
> | Applies to | Installations created by the EXE installer |
> | Administrator rights | Needed if Smart MOCA Client was installed with **Run as Administrator** |
> | Time needed | About 5 minutes |

Use this page only when Smart MOCA Client was installed with the EXE installer. If it was installed with MSI, use [Uninstall MSI](#/./getting-started/msi-uninstallation).

## Before You Begin

- Close Smart MOCA Client.
- Back up anything you cannot afford to lose.
- Decide whether to keep saved settings or remove everything.

> **Warning:** **Remove everything** permanently deletes settings and Oracular MOCA Client data, including saved scripts and history. This cannot be undone.

## Uninstall Smart MOCA Client

1. Open **Apps & features** or run the EXE uninstaller from the installation folder.
2. Choose one uninstall option:
   - **Keep my settings and saved data (recommended):** removes the application folder except the `config` folder and removes shortcuts. It does not touch the `Oracular MOCA Client` folder.
   - **Remove everything:** removes the application, settings, registry entries, and all Oracular MOCA Client data.

   ![Uninstall options](../.attachments/uninstall-options.png)

3. Select **Uninstall**.
4. Wait for the uninstall to finish.

## Silent Uninstall

Use `start /wait` because the EXE uninstaller restarts itself:

```bat
start /wait "" "<install folder>\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc_uninstall.log"
```

## What You Should See When It Worked

- Smart MOCA Client shortcuts are removed.
- The application files are removed.
- The uninstall log is created when you use the silent command.

## Common Problems

For uninstall issues, see [Troubleshooting](#/./getting-started/troubleshooting).

## Related Pages

- [Install with the EXE installer](#/./getting-started/exe-installation)
- [Silent install with EXE](#/./getting-started/exe-silent-installation)
- [Uninstall MSI](#/./getting-started/msi-uninstallation)
- [Troubleshooting](#/./getting-started/troubleshooting)

## Next Steps

If you plan to reinstall, return to [Current Version: Overview and Download](#/./getting-started/getting-started-current).
