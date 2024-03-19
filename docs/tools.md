## Tools Menu

- **Open Find Dialog**: Find commands, policies, DDAs by searching by filename or text.
- **Open New Editor Window**: Open Oracular Editor (not tied to any server).
- **Re-Cache Commands/Tables/Columns**: Reloads the lists used in the completion dialogs and other places.
- **Clear History File**: Delete the file in the History folder containing saved command execution history.
- **Reload Commands/Tables**: Reloads the lists used to generate the popup suggestions.
- **Local RP Instances**: Shows all the local RP instances on your machine and allows you to open LES, a command prompt with env.bat, mtfdevice, or KevTerm.
- **RF Picker**: Start Kevterm and pick everything on the wave with provided parameters.
- **Automated Task Editor**: Write scripts to automate common tasks (open RF to a specific screen, open GUI to a specific screen, etc).
- **New in 2010.4**: Write Groovy code within square brackets ([[String str = "abc"]]). To run a command, call edit.run(Command.<command>, params) (e.g. edit.run(Command.script, "putty")).
- **DDA Wizard**: Easily create DDAs by generating the CSVs needed from the given information.
- **DB Compare**: Allows comparison of a table between two servers. Options are available to ignore date/times, ignore certain columns, and generate the insert statements needed to move data from one environment to the other.
- **Barcodes**: Enter a part number in the first box and hit enter to see all the alternate part numbers.
- **Parse RDT from .dat**: Takes in a form name and the location of the .dat file (vehicle or handheld) and outputs the form in RDT format. This has not been put to practical use yet, so the output may not be 100% accurate.
- **Zebra Emulator**: Open a .OUT file containing ZPL and this will attempt to render an approximation of the label.
- **Rollout Generator**: Drag files from Windows Explorer to add to the rollout. Enter a name, press Generate, and a new rollout will be created in the Oracular MOCA Client\Rollouts folder.
- **Generate CTL from CSV**: Enter the table name and the number of primary key columns, choose a CSV file, and a dialog will pop up with the text needed.
- **Parse Seamles Log**: Parse logs produced by Integrator.
- **Parse SLExp**: Parse .slexp files (Integrator exports).
### Rollout Generator
**Steps:**
-  Open this from Oracular MOCA Client Tools menu
-  Drag and drop files/folders into the window that pops up
-  Enter a rollout name into the text box
-  Click the "Generate" button
-  All files in the list are added to the rollout
-  db/data files are followed by a LOADDATA statement
-  db/ddl files are followed by a RUNSQL/RUNMSQL/RUNSQLIGNOREERRORS statement
### Rollout Merger
**Steps**:
-  Open this from Oracular MOCA Client Tools menu
-  If your current server does not contain the file $LESDIR/scripts/ossi_rollout.pl, report an error and close
-   Drag and drop folders into the window that pops up
-  Enter a destination directory into the text box
-  Click the "Generate" button
-  All files from the rollouts in the list are merged into one rollout according to the order of the list
-  The script contains REPLACE statements for each file for each file that was not removed by the end of the list
-  The script contains RUNSQL/RUNMSQL/RUNSQLIGNOREERRORS statements for each db/ddl file (based on the extension)
-  The script contains LOADDATA *.csv for each db/data directory
-  The script ends with MBUILD and REBUILD LES
-  %LESDIR/scripts/ossi_rollout.pl is downloaded and saved as rollout.pl in the merged rollout directory
-  The merged rollout directory opens
