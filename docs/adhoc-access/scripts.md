# Scripts

The Scripts Concept in Smart MOCA Client allows users to streamline their workflow by creating and executing custom scripts. This functionality enhances productivity by automating repetitive tasks and providing quick access to commonly used commands.

Below, we explore various aspects of the Scripts Concept, including running shortcuts via #, script storage, and adding new scripts.

## Executing Shortcuts

The Smart MOCA Client supports running predefined shortcuts for frequently used commands using the `#` symbol. This feature saves time by allowing users to execute complex commands with simple, memorable shortcuts.

- To run a shortcut, type `#` followed by the shortcut name in the command text box and press ENTER (i.e. to run Find_Command#cmd.msql, type #cmd <command_name>, run #mbuild.msql by typing #mbuild). 
  
  ![script](../.attachments/script1.png)

## Where are the Scripts stored?

Scripts are stored in the `%APPDATA%\Oracular MOCA Client\Scripts` directory.

- The directory contains all user-created scripts and any predefined scripts provided with the application. Users can navigate to this directory to view, edit, or delete existing scripts.
- Place custom scripts in the Usr-Scripts folder. If a custom script has the same path as a script in the Scripts folder, it will override it (just like RP's usrint cmd lvl).

## Adding New Scripts

Creating and adding new scripts to the Smart MOCA Client is straightforward. 

1. **Add file manually:**

    Script can be created manually by following below steps:

   - Navigate to the script storage directory: %ProgramData%\Oracular MOCA Client\Scripts.
   - Create a new text file with a .msql extension and save it. For example, 'Find_Command#cmd.msql'.
   - The file will have some of MOCA commands or script logic. Each line can contain a separate command or part of your script logic.

2. **Script Editor:**

    The Script Editor includes functionalities for saving scripts in groups, viewing script directory content, and saving scripts as macros.

    Script can be created manually by following below steps:

   - Navigate to the Script Editor from the Scripts menu and select "Script Editor" to open the editor interface.
  
      ![script](../.attachments/script2.png)

   - In the editor window, type your script (i.e. MOCA commands or any custom script logic). The editor supports syntax highlighting and real-time error checking to ensure your scripts are accurate.
   - After writing your script, Assign a name to your script in text box, choose group from the provided list and press Save button.

      ![script](../.attachments/script3.png)

## Viewing Script Directory Content

The Script Editor includes a directory viewer on the left side of the interface, displaying the content of the Scripts folder.

- The directory viewer shows all scripts stored in %ProgramData%\Oracular MOCA Client\Scripts.
- You can navigate through folders, view existing scripts, and organize your script files.
- Click on any script in the directory viewer to open it in the editor.
This allows you to quickly edit existing scripts or review their content.

## Saving Scripts as Macros

The Script Editor enables users to save their scripts as macros, making them easily accessible for repeated use.

- Write your script in the editor.and press "Save as Macro" button to save script as macro.
- Assign a shortcut key or a macro name for quick execution in pop up.

  ![script](../.attachments/script4.png)
  
- Macros can be executed using the assigned shortcut or by selecting them from the macros menu.