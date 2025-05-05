# File Browser
The File Browser in the Smart MOCA Client provides a comprehensive set of functionalities that support efficient file navigation, organization, and management.

## Maintaining File System Objects
This section outlines how users can effectively utilize the File Browser for accessing and managing file system objects like commands, reports, logs, and custom scripts.

### File Structure

- The start directory is $LESDIR/src/cmdsrc.
- Within this directory, you’ll find key subfolders such as: 

    - **usrint:** Contains all custom commands developed by users for project-specific enhancements or extensions.

    - **varint:** Standard system commands provided by the application or created by system administrators. This directory should generally remain unmodified to maintain system stability.

    - **usrint.mlvl / varint.mlvl:** These define the command levels and execution sequences. For example, you can determine which custom or standard command runs first during a transaction or trigger.

    ![FileNavigation](./.attachments/filenavigation.png)

#### Working with usrint Directory

- For any customizations or new command development, the usrint directory is used.

- This is where modified versions of existing commands or entirely newly created commands can be placed.

    ![FileNavigation](./.attachments/File-browser_3.png)

#### Working with varint Directory

- varint directory serves as the location for all predefined system commands

- This directory should remain unchanged to preserve the integrity of system defaults.

    ![FileNavigation](./.attachments/File-browser_4.png)

- usrint and varint lvls can define the levels for command and trigger execution, which command to be executed first and which is next.

### File Navigation

- Navigate to **Data** --> **Edit Server Files** or press **F2** to launch **File Browser**. 

  ![FileBrowser](./.attachments/filebrowser.png)

- File Browser will get open where you can see all the directories and files.

- Within this window, users can easily view and manage **Files**, **Folders**, **Commands**, **Reports**, **Logs**, and more.

  ![FileBrowser1](./.attachments/filebrowser1.png)

### Buttons Functionality

- **Find:** This button is used to find File using path.
- **Open:** This button is used to open File.
- **Save:** This button is used to save the file.
- **Remove:** This button is used to Remove the file from Directory.

### File Operations

The following operations are available for managing files and directories:

- **Upload File:** It is used for uploading Existing file from the system and Opens it.

    ![FileBrowser1](./.attachments/Filebrowser-File.png)

- **Upload Text:** Upload plain text files to the server from System.

- **Upload Text w/Directories:** Upload text files along with their directory structure.

- **Upload Binary:** Upload binary files to the server from System.

    ![FileBrowser1](./.attachments/Uploadfile.png)

- **Download Text:** Download files as plain text.

- **Download Binary:** Download files in binary format.

    ![FileBrowser1](./.attachments/Uploadfile.png)

- **Create Directory:** It is used for creating directory.

    ![FileBrowser1](./.attachments/CreateDirectory.png)
       
- **Create New:** It is used for creating new command, triggers, tables and columns.

    ![FileBrowser1](./.attachments/Filebrowser-New.png)

    - **Create New Command:** It is used for creating new commands into System.

        ![FileBrowser1](./.attachments/CommandCreation.png)

    - **Create New Trigger:** It is used for creating new Triggers into System.

        ![FileBrowser1](./.attachments/CreateTrigger.png)

    - **Create New Table:** It is used for creating new Tables into System.

        ![FileBrowser1](./.attachments/Createtable.png)

    - **Create New Column:** It is used for creating new Columns into Tables.

        ![FileBrowser1](./.attachments/CreateColumn.png)

    - **Drop Column:** It is used for Dropping Columns from tables.

        ![FileBrowser1](./.attachments/DropColumn.png)

    - **Sequence:** Create a new sequence for database objects.

        ![FileBrowser1](./.attachments/CreateSequence.png)


## Edit Server Files

Editing files within the Smart MOCA Client is a seamless process. Users can access files through the Edit Server Files option and modify them directly using the integrated text editor, which offers a user-friendly and efficient environment for file editing.

- Navigate to **Data** --> **Edit Server Files** or press **F2** to launch **File Browser**. 

  ![FileBrowser](./.attachments/filebrowser.png)

- File Browser will get open where you can see all the directories and files.

    ![FileNavigation](./.attachments/File-browser_3.png)

- You can then Open Command By Double Click on it.

### Key Features of the Built-in File Editor

- Provides syntax highlighting for improved readability and code clarity.
- Displays line numbers to assist with navigation and referencing.
- Supports efficient editing through a user-friendly interface.
- Allows direct saving of changes to the file system without needing external tools.

    ![FileEdit](./.attachments/editfile.png)

### Edit File Operations
The following operations are available for managing files and directories:

- **Find/Replace:** It is used for finding any word inside the command or trigger.

    ![FileBrowser1](./.attachments/Findreplaceeditfile.png)


- **Cut:** It is used to cut something inside command.

    ![FileBrowser1](./.attachments/CutEditFile.png)


- **Copy:** It is used for copying something into the command.

    ![FileBrowser1](./.attachments/CopyEditFile.png)

- **Paste:** It is used for paste something into the command.

    ![FileBrowser1](./.attachments/PasteEditFile.png)

- **Convert text to uppercase or lowercase:** It is used for converting the letters into uppercase and lowercase.

    ![FileBrowser1](./.attachments/UpperLowerEditfile.png)

- **Source:** 
    - **Shift text:** Move lines left or right with a defined shift amount.
    - **Convert character sets:** Transform text encoding between different character sets as needed.
    - **Remove non-ASCII characters:** Clean files by removing any non-ASCII (special/unreadable) characters.
        
    ![FileBrowser1](./.attachments/editserverfile-source.png)
        

- **MOCA Tools:** It is used for adding arguments, documentation, retcol and exceptions.

    - **Add arguments:** It is used for adding arguments into the command.
            ![FileBrowser1](./.attachments/Argumentseditfile.png)

    - **Define exceptions:** It is used for adding exceptions into the command.
            ![FileBrowser1](./.attachments/Exceptioneditfile.png)

    - **Add Documentation:** It is used for Adding Documentations into the command.
            ![FileBrowser1](./.attachments/Documentationeditfile.png)

    - **Add Retcol:** It is used for Adding Retcol name and type into the command.
            ![FileBrowser1](./.attachments/Retcoleditfile.png)

    - **Format:** It is used for formatting of the command.

- **Options:** Modify interface settings such as enabling enter key modifiers or adjusting font size multipliers.
        
    ![FileBrowser1](./.attachments/Optionseditfile.png)

- **Help:** Provides assistance and reference material related to File Browser usage.

