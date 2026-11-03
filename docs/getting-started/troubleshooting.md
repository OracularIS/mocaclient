# Installation and Uninstallation Troubleshooting

Use this page when installation, silent installation, or uninstallation does not behave as expected.

## Already Installed Message

**What it means:** Smart MOCA Client is already installed.

**What to do:**

1. Uninstall the existing Smart MOCA Client installation.
2. Install again using one installer type only: EXE or MSI.

## UAC Yes or No Window

**What it means:** Windows is asking for administrator approval.

**What to do:**

1. Select **Yes** if you have administrator approval.
2. If you are running a silent install, open Command Prompt with **Run as administrator** before running the command.

> **Note:** The Windows UAC prompt cannot be hidden by installer command-line options.

## Access Is Denied Running `unins000.exe`

**What it means:** Windows blocked the EXE uninstaller, or the product was installed by MSI and does not have `unins000.exe`.

**What to do:**

1. Confirm whether Smart MOCA Client was installed with the EXE installer or MSI installer.
2. If it was installed with MSI, use [Uninstall MSI](#/./getting-started/msi-uninstallation).
3. If it was installed with EXE, ask IT to check antivirus, AppLocker, or other application control policies.

## Silent Uninstall Seems to Do Nothing

**What it means:** The uninstall process may have restarted itself or finished without showing UI.

**What to do:**

1. For EXE uninstall, use `start /wait`.
2. Check the uninstall log in `%TEMP%`.
3. Confirm that Smart MOCA Client shortcuts and application files were removed.

## Quoted Path Does Not Run in PowerShell

**What it means:** PowerShell does not run a quoted executable path by itself.

**What to do:**

Add `&` before the quoted path when running an executable from PowerShell.

## MSI Error 1603

**What it means:** Windows Installer reported a fatal installation error.

**What to do:**

1. Open the MSI log file.
2. Check the end of the log for the first clear error.
3. Fix the reported cause and run the command again.

## Related Pages

- [Install with the EXE installer](#/./getting-started/exe-installation)
- [Silent install with EXE](#/./getting-started/exe-silent-installation)
- [Uninstall EXE](#/./getting-started/exe-uninstallation)
- [Install with the MSI installer](#/./getting-started/msi-installation)
- [Silent install with MSI](#/./getting-started/msi-silent-installation)
- [Uninstall MSI](#/./getting-started/msi-uninstallation)
