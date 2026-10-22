# Get started with Smart MOCA Client-Current

Guide for connecting to a server using the latest MOCA Client interface.

## Download Smart MOCA Client
       
- Visit the [Smart IS](https://www.smart-is.com/what-we-do/smart-product/smart-is-moca-client/) website and navigate to **Our Products > MOCA Client.**
       
  ![Start In](../.attachments/NewWebPage.png)

- Click the **Download Now** button and complete the form that appears with your information to download the latest version of the installer.

  ![Install1](../.attachments/NewWebPage2.png)

- After filling out the form, you will receive an email with a link to the download page.

  ![Install2](../.attachments/NewWebPage3.png)

- Now open an email you received from Smart IS and Select the **Download MOCA Client** link provided in the email to navigate to the download page.

  ![](../.attachments/run027.png)

**Installation Options**
  
The following are the three options for installation: 

1. EXE Installer  
2. Portable  
3. MSI Installer  

---

### Download the EXE Installer
  
- On the download page, select **Installer** and click on **Download** button.

  ![Install3](../.attachments/NewWebPageExeInstaller.png)

- After clicking **"Download"**, the installation setup will begin downloading.

  ![Install4](../.attachments/NewWebPageExeDownloaded.png)

#### Run the EXE Installer
   
- Unzip the downloaded zip folder (mocaclient-setup<**version**>.zip) and open it.
 
  ![](../.attachments/run001.png)
 
- Now double click on (mocaclient<**version**>.exe) file and run this installer.

  ![](../.attachments/run002.png)

- Now follow the on-screen instructions to complete the installation process.

  ![](../.attachments/run003.png)
  ![](../.attachments/run004.png)
  ![](../.attachments/run005.png)
  ![](../.attachments/run006.png)
  ![](../.attachments/run007.png)
  ![](../.attachments/run008.png)
  ![](../.attachments/run009.png) 
  ![](../.attachments/run010.png) 
 
#### Verify Installation

- The folder named `Oracular MOCA Client` and `SmartMOCAClient` should be created at the following path:

  ![](../.attachments/run011.png)
  ![](../.attachments/run012.png)

- Once the installation process via the Installer is complete, you can verify it by checking the designated installation directory.

---

### Download the Portable 

- On the download page, select **Portable** and click on **Download** button.

  ![Install5](../.attachments/NewWebPagePortableInstaller.png)

- After clicking **"Download"**, the portable setup will begin downloading.
  
  ![Install6](../.attachments/NewWebPageportableDownloaded.png)

#### Run the Portable

- Unzip the downloaded zip folder (mocaclient-portable<**version**>.zip) and open it.
   
  ![](../.attachments/run023.png)

- Now double click on Run Setup and it will Download **Smart MOCA Client** using PowerShell.

  ![](../.attachments/run024.png)
  ![](../.attachments/run025.png)

#### Verify Installation

Follow [Verify Installation](#verify-installation) to verify correct installation of Smart MOCA Client.

---

### Download the MSI Installer
  
- On the download page, select **MSI Installer** and click on **Download** button.

  ![Install3](../.attachments/NewWebPageMSIInstaller.png)

- After clicking **"Download"**, the MSI setup will begin downloading.

  ![Install4](../.attachments/NewWebPageMSIDownloaded.png)

#### Run the MSI Installer
   
- Click on MSI file (mocaclient-setup<**version**>.msi) and open it.
 
  ![](../.attachments/NewDownloadsMSI.png)
 
- Now double click on (mocaclient-setup<**version**>.msi) file and run this MSI file.

  ![](../.attachments/MSIInstallation1.png)

- Follow the on-screen instructions to complete the installation process.

  ![](../.attachments/MSIInstallation2.png)
  ![](../.attachments/MSIInstallation3.png)
  ![](../.attachments/MSIInstallation4.png)
  ![](../.attachments/MSIInstallation5.png)
  ![](../.attachments/MSIInstallation6.png)

#### Verify Installation

- The folder named `Oracular MOCA Client` and `SmartMOCAClient` should be created at the following path:

  ![](../.attachments/run011.png)
  ![](../.attachments/run012.png)

- Once the MSI installation process is complete, you can verify it by checking the designated installation directory.

---

## Install Modes and Default Locations

Smart MOCA Client supports two installation modes for both the EXE installer and the MSI installer.

| Install Mode | Application Folder | Shortcut Location | Administrator Required |
| --- | --- | --- | --- |
| Run as User | `%APPDATA%\SmartMOCAClient` | Current user's Start Menu and Desktop | No |
| Run as Administrator | `C:\ProgramData\SmartMOCAClient` | All users Start Menu and Desktop | Yes |

The `Oracular MOCA Client` data folder is created under the matching application data location for the selected install mode. User mode stores it under the current user's AppData location. Administrator mode stores shared data under ProgramData.

### EXE Install Mode Selection

The EXE installer starts with a setup install mode selection.

- **Run as User:** installs Smart MOCA Client for the current user only.
- **Run as Administrator:** installs Smart MOCA Client for all users. Windows may show a UAC approval prompt.

### MSI Install Mode Selection

The MSI installer shows a **Choose installation mode** page.

- **Run as User (current user only):** installs in AppData without administrator privileges.
- **Run as Administrator (all users):** installs in ProgramData and requires administrator approval.

If Smart MOCA Client is already installed in a different installation mode, uninstall the existing version before switching between user mode and administrator mode.

---

## Silent Installation

Silent installation is supported for both EXE and MSI installers. Run commands from Command Prompt, or use `&` before quoted paths in PowerShell.

### Silent Installation Parameters

| Parameter Name | Description | Sample Value | Required |
| --- | --- | --- | --- |
| `ACCEPT_EULA` | Accepts the End User License Agreement for MSI silent install. The MSI aborts if this is not set. | `1` | Yes for MSI silent install |
| `AUTOUPDATE` | Enables or disables automatic updates for Smart MOCA Client. | `YES` / `NO` | No |
| `INSTALLDIR` | Overrides the default installation directory. Use only when a custom location is required. | `C:\ProgramData\SmartMOCAClient` | No |
| `JAVA_PATH` | Specifies the Java executable path. | `C:\Program Files\Java\jdk-22\bin\javaw.exe` | No |

### MSI Silent Install

```bat
msiexec /i "mocaclient-setup.msi" /qn ACCEPT_EULA=1 AUTOUPDATE=YES /l*v "%TEMP%\smc_install.log"
```

To pass a custom Java path:

```bat
msiexec /i "mocaclient-setup.msi" /qn ACCEPT_EULA=1 AUTOUPDATE=YES JAVA_PATH="C:\Program Files\Java\jdk-22\bin\javaw.exe" /l*v "%TEMP%\smc_install.log"
```

### EXE Silent Install

```bat
setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG="%TEMP%\smc_exe_install.log"
```

To install to a custom folder:

```bat
setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /DIR="C:\ProgramData\SmartMOCAClient" /LOG="%TEMP%\smc_exe_install.log"
```

Administrator/all-users installation can still require Windows elevation. To avoid an interactive UAC prompt during deployment, run the command from an already elevated Command Prompt or deploy using a tool that runs with administrator rights.

---

## Uninstall Smart MOCA Client

Smart MOCA Client uninstall provides two choices.

| Option | Result |
| --- | --- |
| Keep my settings and saved data | Removes the application files and shortcuts, but keeps configuration and user data for future installations. |
| Remove everything | Removes the application, settings, registry entries, and Smart MOCA Client data folders. This cannot be undone. |

### MSI Uninstall

To uninstall with UI:

```bat
msiexec /x {2DC3A291-5F00-4794-8955-BF3E6F8A7956} /qf /norestart /l*v "%TEMP%\smc_uninstall.log"
```

To uninstall silently:

```bat
msiexec /x {2DC3A291-5F00-4794-8955-BF3E6F8A7956} /qn /norestart /l*v "%TEMP%\smc_uninstall.log"
```

### EXE Uninstall

The EXE uninstaller is `unins000.exe` inside the Smart MOCA Client installation folder.

User mode example:

```bat
start /wait "" "%APPDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc_uninstall.log"
```

Administrator mode example:

```bat
start /wait "" "C:\ProgramData\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /LOG="%TEMP%\smc_uninstall.log"
```

Use `start /wait` because the Inno uninstaller can relaunch itself and return control before uninstall is complete.

### Complete EXE Uninstall

To remove saved settings and data during EXE uninstall, pass the remove-user-data switch:

```bat
start /wait "" "%APPDATA%\SmartMOCAClient\unins000.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /REMOVE_USER_DATA=1 /LOG="%TEMP%\smc_uninstall.log"
```

---

## Troubleshooting Installation and Uninstall

| Symptom | Cause and Fix |
| --- | --- |
| MSI says the product is already installed | Uninstall the existing Smart MOCA Client version before installing again or switching install mode. |
| Administrator mode shows a Windows approval window | This is the UAC prompt. Run from an elevated Command Prompt or deploy with administrator rights. |
| Silent uninstall appears to finish too quickly | Use `start /wait` for the EXE uninstaller and write the log to an existing folder such as `%TEMP%`. |
| `unins000.exe` is missing | The application may have been installed by MSI. Use the MSI uninstall command instead. |
| PowerShell treats `/x` or `/i` as an operator | Use Command Prompt, or use PowerShell's stop-parsing token with `msiexec.exe --%`. |

### Launch Smart MOCA Client
   
- Once installed, launch Smart MOCA Client by double-clicking on the desktop icon or searching for it in the start menu.

  ![](../.attachments/run013.png)

  <mark>**Note:** In case shortcuts are not created, the following shortcut can be used to launch Smart MOCA Client.</mark>

  ![](../.attachments/run026.png)

- Once the application starts, you will see the following interface:

  ![](../.attachments/run014.png)

Note: *Follow [Password Security](./connections/secure-server-connections.md) for details about the **Security** popup*.


## Add Server

Follow [Add/Update/Remove Server](./connections/add-connect-remoteserver.md) to add server in Smart MOCA Client.


## Download `moca.jar`

Following are the methods to download `moca.jar` in Smart MOCA Client:

1. Download upon Server Connection
2. Download via Tools Menu


### Download upon Server Connection

- Upon the first server connection, the Smart MOCA Client detects the absence of `moca.jar` and following popup appears:

  ![](../.attachments/run015.png)

- Click on the **Download and Use the `moca.jar` from this environment** button and the system will begin downloading the moca.pending_jar file .

  ![](../.attachments/run016.png)
  ![](../.attachments/run017.png)

- Navigate to the directory and ensure that the **moca.pending_jar** file has been successfully downloaded.

  ![](../.attachments/run018.png)

- Now click on **OK** button and **restart** Smart MOCA Client. The system will automatically rename **moca.pending_jar** to **moca.jar** and will use `moca.jar` instead of labelzoom.jar.

  ![](../.attachments/run020.png)

- Finally, verify the usage of `moca.jar` by navigating **Help --> About Smart MOCA and SQL Client**.

  ![](../.attachments/run019.png)

### Download via Tools Menu

- If you have skipped [Download upon Server Connection](#download-upon-server-connection), then you can download the `moca.jar` later by navigating to **Tools --> Download moca.jar**.

  ![](../.attachments/run021.png)

<mark>**Note:** *moca.jar should be compatible with current java version.*</mark>
