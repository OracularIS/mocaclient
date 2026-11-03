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

1. On **Select Setup Install Mode**, click **Run as User (recommended)**.

   **Run as User** installs Smart MOCA Client for the current user only and needs no administrator rights. **Run as Administrator** installs for all users and Windows will ask for administrator approval (UAC).

   ![EXE installer install mode selection screen with Run as User and Run as Administrator options](../.attachments/exe-install-mode-selection.png)

2. On **Third Party Licenses and agreements**, click **Next** after **I accept the terms** is selected.

   ![EXE installer third party licenses screen with I accept the terms selected](../.attachments/dhl010.png)

3. On **Select Destination Location**, click **Next** to use the folder shown.

   ![EXE installer destination location screen with the installation folder and Next button](../.attachments/dhl011.png)

4. On **Select Start Menu Folder**, click **Next** to use the Smart MOCA Client folder shown.

   ![EXE installer Start Menu folder screen with Smart MOCA Client and Next button](../.attachments/dhl012.png)

5. On **Select Additional Tasks**, click **Next** to create the selected shortcuts.

   ![EXE installer additional tasks screen with desktop and Quick Launch shortcuts selected](../.attachments/dhl013.png)

6. On **Ready to Install**, click **Install**.

   ![EXE installer ready to install screen with destination, Start Menu folder, shortcuts, and Install button](../.attachments/dhl014.png)

7. On **Installing**, wait while the EXE installer copies the files.

   ![EXE installer progress screen showing Smart MOCA Client files being extracted](../.attachments/dhl015.png)

8. On **Completing the Smart MOCA Client Setup Wizard**, click **Finish**.

   ![EXE installer completion screen with Finish button](../.attachments/dhl006.png)

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
