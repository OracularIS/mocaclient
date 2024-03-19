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
