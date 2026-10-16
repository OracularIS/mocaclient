# SmartViu Management Console

## Overview

The SmartViu Management Console is a utility in the Smart MOCA Client that allows developers and administrators to view and export SmartViu metadata stored in a MOCA environment. SmartViu metadata is the configuration data that defines SmartViu reports, custom columns (variables) and message text. The console retrieves this data from the environment's database, presents it in grids for review, and exports it as CSV files.

The console is available from the **Addons** menu and provides three screens:

| Screen | Metadata area | Purpose |
|---|---|---|
| **Report** | SmartViu reports | Displays the records that define a report |
| **Custom Column** | Custom columns (variables) | Displays a variable's configuration, lookups and lookup fields |
| **Message Catalog** | Messages and translations | Displays catalog messages and their translated text by locale |

Primary functionality:

* **Search** the selected MOCA server by report, variable or message criteria. Most fields accept multiple comma-separated values.
* **Review** the results in grids, one tab per database table, with the number of rows shown on each tab.
* **Export** the results, or only the selected rows, as CSV files, either to a local directory (**Export to Local**) or to the selected server's load directory (**Export to Server**). The console asks for confirmation before replacing existing files and records each export in a log file.
* **Switch servers** using the **Server** list at the top of the window.

The console is read-only. It does not insert, update or delete database rows; the only files it creates are the exported CSV files.

For detailed instructions, see the [SmartViu Management Console documentation](https://oracularis.github.io/smartviu/#/./managementconsole).
