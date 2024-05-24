# Moca Client

## 2024.5.1

Congratulations on choosing **Smart MOCA Client** - your all-in-one solution. This user guide is designed to help you make the most out of our powerful and intuitive software, guiding you through its features and functionality.

Whether you are a beginner or an experienced user, this comprehensive guide will walk you through the essential operations, from installation to mastering advanced features. 

### Purpose

Smart MOCA Client was initially developed to improve upon RedPrairie’s WinMSQL. At the time, WinMSQL could not open multiple tabs for connections and did not allow the user to cancel execution, which could force the user to close the window by force and start another, a time-consuming and unnecessary process. 

Moreover, Smart IS International realized that our developers need to be empowered with a development tool that can overcome the shortcomings of the Blue Yonder application, while respecting the challenges that each client’s infrastructure landscape may present. We worked to create one tool that can directly access all Blue Yonder data and render it to your needs. 

Smart Moca Client can perform several tasks in the most efficient manner possible and is more efficient and user-friendly.

### Key Features

#### Insert trace into DB

Use menu option MOCA Log->Database Trace with Script

#### Real-time formatting

Use menu option Options->Format in real-time?

#### Adding Servers

Choosing File -> Edit Servers brings up this dialog:

If entering a 2010 server like "http://localhost:4500/service", enter that as the host. Port does not need to be entered.

The servers already entered into RedPrairie are automatically loaded from the file C:\Documents and Settings\All Users\Application Data\RedPrairie\DLXClient\DLXClientConfig.xml

Critical servers start with Auto-Commit turned off and the user is prompted to confirm each execution.

#### Connecting

Choose a server name from the list loaded by the server dialog and click the Connect button or hit Alt-C.

If the server does not have a username or password defined, you will be prompted for it. The program now attempts to make a connection. This may take some time. If connection was successful, a new tab will be opened below. If not, a dialog will pop up indicating the error.

#### Executing Commands

Type a command in the text box and hit ENTER, Alt-E, F5, or click the Execute button to execute. The status bar below will change to “Executing…” and will change again when execution is complete. If any text is selected, that will be the command executed and not the entire contents of the text editor.

#### Queue Command

Press “Queue Cmd” or Ctrl-Q to execute the next command immediately after the current one has ended.

#### Cancelling Execution

Click the Cancel button in lower-right corner of the screen. This will also cancel MLoad with CTL if running.

#### Command Completion

Command completion was developed for commands that get a lot of use and can be successfully guessed, saving the user from typing the entire command out. For example, if you begin your command with “[“, the program will guess that you typing a select query and will fill out the command as “[select * from where rownum < 99]”. If the guess is correct and you would like to accept the command as shown, hit TAB, and the caret will be moved to the position where you would enter the table name. These stored commands are defined in %appdata%\Oracular MOCA Client\MOCADev-Commands.txt. “START” defines the position the user is taken when he or she hits TAB.

#### Trace Files

To turn on trace mode for a tab, hit Alt-T or click the Start Trace button in the center of the tab. Then, execute commands as normal until you are ready to stop tracing. Hit Alt-T again or click the Stop Trace button. You will be asked if you want to get the trace file now. If you select yes, the table will be filled with the trace file. All trace levels are included in the file. The index of a tab can be seen in the tooltip text of the “Start Trace” button. If the trace file is too large to be quickly opened, you will be given the option to retrieve the last X bytes of the file.
