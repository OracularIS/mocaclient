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

- Open Command Prompt.
- If Smart MOCA Client was installed in Administrator mode, open Command Prompt with **Run as administrator**.
- If it was installed for the current user, run the command as the same Windows user.

> **Note:** A Windows UAC prompt cannot be hidden. For Administrator uninstalls, run the command from an already elevated Command Prompt.

## Silent Uninstall

```bat
winget uninstall --name "Smart MOCA Client" --silent
```

## Command Options

| Option | What It Does | Default | Used In |
| --- | --- | --- | --- |
| `winget uninstall` | Removes an installed application. | None. | Silent uninstall |
| `--name "Smart MOCA Client"` | Finds the installed application by its name. | None. | Silent uninstall |
| `--silent` | Runs without prompts. | Not used: winget may ask for confirmation. | Silent uninstall |

## What Is Kept or Removed

| Setting | What happens |
| --- | --- |
| Keep my settings and saved data | Removes the application and shortcuts. Settings and Oracular MOCA Client data stay for a future installation. |
| Remove everything | Removes the application, settings, and all Oracular MOCA Client data. This cannot be undone. |

## What You Should See When It Worked

- The command finishes without opening a window.
- Smart MOCA Client no longer appears in **Settings > Apps > Installed apps**.
- The Start Menu shortcut is gone.

## Common Problems

For uninstall issues, see [Troubleshooting](/getting-started/troubleshooting.md).

## Related Pages

- [Uninstall MSI](/getting-started/msi-uninstallation.md)
- [Silent Install with MSI](/getting-started/msi-silent-installation.md)
- [Troubleshooting](/getting-started/troubleshooting.md)
