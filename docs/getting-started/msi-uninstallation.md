# MSI Uninstallation

## Overview

Use MSI uninstallation only for Smart MOCA Client installations that were installed with the MSI installer.

The MSI product code is `{2DC3A291-5F00-4794-8955-BF3E6F8A7956}`.

## Prerequisites

- Use the same Windows account for a current-user installation.
- Use administrator rights for an all-users installation.
- Back up saved data before choosing complete removal.

## Uninstallation

### Default Uninstallation

```bat
msiexec.exe /x "{2DC3A291-5F00-4794-8955-BF3E6F8A7956}"
```

The wizard asks whether to keep settings and saved data or remove everything.

![Uninstall keep settings or remove everything](../.attachments/uninstall-keep-or-remove.png)

### Silent Uninstallation

```bat
msiexec.exe /x "{2DC3A291-5F00-4794-8955-BF3E6F8A7956}" /qn /norestart
```

This silently removes application files and shortcuts, while keeping configuration and Oracular MOCA Client data.

Silently remove everything:

```bat
msiexec.exe /x "{2DC3A291-5F00-4794-8955-BF3E6F8A7956}" /qn /norestart REMOVE_USER_DATA=1
```

Create a verbose uninstallation log:

```bat
msiexec.exe /x "{2DC3A291-5F00-4794-8955-BF3E6F8A7956}" /qn /norestart /L*V "%TEMP%\smc-msi-uninstall.log"
```

## Uninstallation Options

| Option | Default | Description |
| --- | --- | --- |
| `REMOVE_USER_DATA` | `0` | Controls cleanup during MSI uninstall. `0` keeps settings and saved data. `1` removes application files, settings, Oracular MOCA Client data, and Oracular Automated Testing data. |
| `REMOVEALL` | Not set | Optional alias for complete cleanup. Use `REMOVEALL=1` only when you want the same result as `REMOVE_USER_DATA=1`. |
| `/qn` | Not used | Runs without installer UI. |
| `/norestart` | Not used | Prevents automatic restart. |
| `/L*V "path"` | Not used | Writes a verbose Windows Installer log file. |

Do not pass installation-only properties such as `ACCEPT_EULA`, `AUTOUPDATE`, `INSTALLDIR`, or `JAVA_PATH` during uninstall.

## Examples

Silent uninstall and keep saved data:

```bat
msiexec.exe /x "{2DC3A291-5F00-4794-8955-BF3E6F8A7956}" /qn /norestart REMOVE_USER_DATA=0
```

Silent uninstall and remove all saved data:

```bat
msiexec.exe /x "{2DC3A291-5F00-4794-8955-BF3E6F8A7956}" /qn /norestart REMOVE_USER_DATA=1
```

## Related Pages

- [MSI Installation](./getting-started/msi-installation.md)
- [EXE Uninstallation](./getting-started/exe-uninstallation.md)
