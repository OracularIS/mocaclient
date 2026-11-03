# Install with the EXE Installer

> **At a glance**
>
> | Item | Details |
> | --- | --- |
> | Applies to | EXE installer |
> | Administrator rights | Not needed for **Run as User**. Needed for **Run as Administrator**. |
> | Time needed | About 5 minutes |

Use this page for the normal interactive EXE installation. For unattended deployment, use [Silent install with EXE](/getting-started/exe-silent-installation.md).

## Before You Begin

- Download the EXE installer package.
- Close any running Smart MOCA Client windows.
- Choose the installation mode:
  - **Run as User (recommended):** installs for the current user only. No administrator privileges are needed.
  - **Run as Administrator:** installs for all users. Windows asks for administrator approval.

## Default Installation Folders

| Mode | Default folder |
| --- | --- |
| Run as User | `%APPDATA%\SmartMocaClient` |
| Run as Administrator | `C:\Program Files (x86)\SmartMOCAClient` |

## Install Smart MOCA Client

1. Extract the downloaded installer package.
2. Open the extracted folder.
3. Double-click `setup.exe`.
4. Choose **Run as User (recommended)** or **Run as Administrator**.

   ![EXE install mode](../.attachments/exe-install-mode.png)

5. Follow the setup wizard.
6. Select **Finish** when installation completes.

> **Note:** If you choose **Run as Administrator**, setup restarts with elevated permissions. After that, continue through the same setup wizard.

## What You Should See When It Worked

- Smart MOCA Client is installed in the selected installation folder.
- Smart MOCA Client shortcuts are available from the Start Menu or desktop.
- Smart MOCA Client opens from the shortcut.

## Common Problems

For installation issues, see [Troubleshooting](/getting-started/troubleshooting.md).

## Related Pages

- [Silent install with EXE](/getting-started/exe-silent-installation.md)
- [Uninstall EXE](/getting-started/exe-uninstallation.md)
- [Portable setup](/getting-started/portable.md)
- [Troubleshooting](/getting-started/troubleshooting.md)

## Next Steps

After installation, return to [Current Version: Overview and Download](/getting-started/getting-started-current.md) to verify the installation, launch Smart MOCA Client, and add a server.
