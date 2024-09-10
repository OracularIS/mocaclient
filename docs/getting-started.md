## Get started with Smart Moca Client

This section will guide you through the initial steps to get you up and running with our powerful and intuitive software. 

Follow these instructions to ensure a smooth installation and setup process.

## System Requirements

Before you begin, make sure your system meets the following minimum requirements:

- Operating System:
    <dd>- Windows 7 or later</dd>
- Processor:
    <dd>- Intel Core i3 or equivalent
- Memory:
    <dd>- 4 GB RAM</dd>
- Storage:
    <dd>- 500 MB available space</dd>
- Internet Connection: 
    <dd>- Required for initial setup and updates</dd>

## Installation

  1. Download the Installer
       
      - Visit the [Smart IS](https://www.smart-is.com/what-we-do/smart-product/smart-is-moca-client/) website and navigate to Our Products > MOCA Client.
       
        ![Start In](./.attachments/StartIn.png)

      - Click the "Get MOCA Client" button. Complete the form that appears with your information to download the latest version of the installer.

        ![Install1](./.attachments/install1.png)

      - After filling out the form, you will receive an email with a link to the download page.

        ![Install2](./.attachments/install2.png)

      - Now open an email you received from Smart IS and click the **Download MOCA Client** link provided in the email to navigate to the download page download the latest version of the installer by clicking Download Moca Client button.

        ![Install3](./.attachments/install3.png)

  2. Run the Installer
   
      - Locate the downloaded file (mocaclient<**version**>.exe) and double-click to run the installer.

        ![Wizard1](./.attachments/Wizard1.png)

      - Follow the on-screen instructions to complete the installation process.
        
        ![Wizard2](./.attachments/Wizard2.png)
  
  3. Launch the Application
   
      - Once installed, launch Smart MOCA Client by double-clicking the desktop icon or searching for it in the start menu. Once an application gets started, you will see below interface:
  
        ![MocaLaunch](./.attachments/MocaLaunch.png)

---

## Managing moca.jar files in Smart MOCA Client

In latest versions of Blueyonder, by default **`moca.jar`** is not required. Therefore, on Smart MOCA Client installation, the installer will place **`ossimoca.jar`** file in `C:\Program Files (x86)\Oracular MOCA Client\lib` instead of moca.jar.

![OSSIMOCAJAR](./.attachments/mocajar1.png)

However, it is recommended that you use BlueYonder's moca.jar instead of ossimoca.jar

### Replacing `ossimoca.jar` with `moca.jar`

Follow the steps below to replace ossimoca.jar with BlueYonder's moca.jar:

1. Navigate to the 'lib' folder located in your Moca Installation folder. It is generally found at C:\Program Files (x86)\Oracular MOCA Client\lib but could be found at other places based on the install preferences.
2. Remove the existing `ossimoca.jar` file.
3. Place your `moca.jar` file in the same location.

    ![OSSIMOCAJAR1](./.attachments/mocajar2.png)

This process will allow you to use the necessary moca.jar file with the Smart MOCA Client.

### Important Note on Reinstallation

During the reinstallation of Smart MOCA Client, the installer will not place the `ossimoca.jar` file in the `lib` folder if a moca.jar file is already present. However, if no moca.jar file is found, the installer will automatically add ossimoca.jar to the directory.

By managing these files correctly, you can ensure compatibility with various versions of Blue Yonder and other systems.










