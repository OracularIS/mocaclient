## Smart Viu Management Console


The Smart Viu Management Console is a window for finding Smart Viu configuration data in a MOCA environment and exporting it. With it you can:

- **Search** the environment's database for a report, a variable (custom column), or messages in the message catalog.
- **Review** the matching records in grids, one tab per database table, with the number of rows on each tab.
- **Choose rows** with the **Select** check boxes, or leave them all unchecked to take everything found.
- **Export** the records as CSV files, either to a folder on your computer (**Export to Local**) or straight into a MOCA server's load folder (**Export to Server**).
- **Work with several environments** by picking the server to read from and export to in the **Server** list at the top.

The console only reads from the database (`select` queries); its only changes are the CSV files it writes. If an export would replace existing files, it asks for confirmation first and records the replacement in an audit log.

| Tab | What it finds |
|---|---|
| **Report** | A report and the records that define it |
| **Custom Column** | A variable (custom column) and its settings and lookups |
| **Message Catalog** | Messages and their translations |

For full details, see the [Smart Viu Management Console](https://oracularis.github.io/smartviu/#/./managementconsole) documentation.
