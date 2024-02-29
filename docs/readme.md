# Moca Client

## 2020.1.2

This is a test

_IMPORTANT_ Copy moca.jar
If you do not have moca.jar in C:\Program Files\Oracular MOCA Client (or wherever you installed the program), you must copy it from %MOCADIR%\lib from any working instance of RedPrairie. Without it, the program will not work. The version from 2005 is known not to work and the version from 2007 is known to work.

_New in 2010_ Copy MOCA/lib/moca-core.jar to C:\Program Files\Oracular MOCA Client\moca.jar (Yes, change the filename from moca-core.jar to moca.jar)

### Purpose

Smart MOCA Client was developed to improve upon RedPrairie’s WinMSQL. At the time, WinMSQL could not open multiple tabs for connections and did not allow the user to cancel execution, which could force the user to close the window by force and start another, a time-consuming and unnecessary process. Smart MOCA Client resolves these issues and is more efficient and user-friendly.

### Insert trace into DB

Use menu option MOCA Log->Database Trace with Script

### Real-time formatting

Use menu option Options->Format in real-time?

### Adding Servers

Choosing File -> Edit Servers brings up this dialog:

If entering a 2010 server like "http://localhost:4500/service", enter that as the host. Port does not need to be entered.

The servers already entered into RedPrairie are automatically loaded from the file C:\Documents and Settings\All Users\Application Data\RedPrairie\DLXClient\DLXClientConfig.xml

Critical servers start with Auto-Commit turned off and the user is prompted to confirm each execution.

### Connecting

Choose a server name from the list loaded by the server dialog and click the Connect button or hit Alt-C.

If the server does not have a username or password defined, you will be prompted for it. The program now attempts to make a connection. This may take some time. If connection was successful, a new tab will be opened below. If not, a dialog will pop up indicating the error.

### Executing Commands

Type a command in the text box and hit ENTER, Alt-E, F5, or click the Execute button to execute. The status bar below will change to “Executing…” and will change again when execution is complete. If any text is selected, that will be the command executed and not the entire contents of the text editor.

### Queue Command

Press “Queue Cmd” or Ctrl-Q to execute the next command immediately after the current one has ended.

### Cancelling Execution

Click the Cancel button in lower-right corner of the screen. This will also cancel MLoad with CTL if running.

### Command Completion

Command completion was developed for commands that get a lot of use and can be successfully guessed, saving the user from typing the entire command out. For example, if you begin your command with “[“, the program will guess that you typing a select query and will fill out the command as “[select * from where rownum < 99]”. If the guess is correct and you would like to accept the command as shown, hit TAB, and the caret will be moved to the position where you would enter the table name. These stored commands are defined in %appdata%\Oracular MOCA Client\MOCADev-Commands.txt. “START” defines the position the user is taken when he or she hits TAB.

_NEW in 2010.6.0_
Place custom commands in the Usr-MOCADev-Commands.txt file.

### Trace Files

To turn on trace mode for a tab, hit Alt-T or click the Start Trace button in the center of the tab. Then, execute commands as normal until you are ready to stop tracing. Hit Alt-T again or click the Stop Trace button. You will be asked if you want to get the trace file now. If you select yes, the table will be filled with the trace file. All trace levels are included in the file. The index of a tab can be seen in the tooltip text of the “Start Trace” button. If the trace file is too large to be quickly opened, you will be given the option to retrieve the last X bytes of the file.
