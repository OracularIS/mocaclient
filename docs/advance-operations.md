## Advance System Operations

The Advanced System Operations in the Smart MOCA Client offer a comprehensive suite of tools designed to enhance productivity, improve data management, and streamline various tasks. This section outlines the key features available under Advanced System Operations.

## Oracular File Manager

- **Centralized File Management:** The File Browser allows users to navigate and manage various file system objects like commands, reports, logs, and scripts from a centralized interface.

- **Structured Directory Access:** Key directories such as usrint (for custom commands) and varint (for system commands) are organized for easy access and proper separation of user-created and system-defined files.

- **Rich Editing & Development Tools:** Integrated tools and tabs support file operations (open, edit, save), command validation, schema modifications, text formatting, and MOCA-specific development actions.

- **Execution Level Control:** Users can define and control execution levels and sequences using directories like usrint.mlvl and varint.mlvl, which dictate the order of command execution during triggers or transactions.

- **User-Friendly Interface:** Offers an intuitive, tab-driven environment with powerful features for browsing, editing, and organizing files, making it easier to maintain and extend MOCA-based applications.

To learn more about Oracular File Manager, follow [Oracular File Manager](./oracular-file-manager.md)

---

## Database Trace

- **Real-Time Trace Analysis:** The Database Trace feature enables users to monitor and analyze live database operations, including SQL queries and command execution, aiding in performance tuning and troubleshooting.

- **Easy Access via MOCA Log:** Users can access the Trace Analysis window through the **MOCA Log → Database Trace Console**, allowing seamless integration with Smart MOCA’s diagnostic tools.

- **Automatic Data Insertion:** By specifying a trace filename and clicking **Insert into DB**, Smart MOCA creates and populates temporary tables with relevant trace data for detailed analysis.

- **Quick Access to Recent Logs:** The **Load Recent** option allows users to instantly view traces generated on the current day, improving efficiency in locating recent activities.

- **Advanced Search Capabilities:** Users can search trace data using fields such as Command, Command Arguments, Bound SQL, and Unbound SQL—facilitating deep analysis of database behavior and debugging.

To learn more about Database Trace, follow [Database Trace](./moca-log.md#database-trace-console)

---

## ZPL Preview

The ZPL Viewer in the Smart MOCA Client is a powerful feature designed to help users preview the display of ZPL (Zebra Programming Language) label .out files. 

This tool allows for the visualization and adjustment of label output before sending it to a printer, ensuring accuracy and efficiency in label printing processes.

###  Accessing the ZPL Viewer

The ZPL Viewer can be accessed through multiple avenues within the Smart MOCA Client, providing flexibility and convenience for users. 

- Navigate to the location of the .out file using the File Browser/Find Dialog/#cmd.
- Right-click on the .out file. Select the 'View ZPL as label' option from the context menu to open the ZPL Viewer.

    ![ZPLViewer](./.attachments/zpl1.png)

- Before previewing the label, the ZPL Viewer prompts you to send the file to a printer.

    ![ZPLViewer1](./.attachments/zpl2.png)

- By clicking 'No', ZPL viewer window will get open where you can see label output. You can also click the 'Display' button to generate and view the label preview.

    ![ZPLViewer2](./.attachments/zpl3.png)

By utilizing the ZPL Viewer, users can efficiently preview and adjust ZPL label outputs, reducing errors and ensuring high-quality label printing in their workflows.

Note: You can also use any online ZPL viewer like `Labelary` where you can see preview by pasting .out content in text window.

![ZPLViewer4](./.attachments/zpl4.png)

---

## Loading Data

The Smart MOCA Client provides robust features for loading data, accommodating both server-side and client-side operations. These features are designed to ensure efficient and seamless data loading processes.

### Server-Side MLoad (using mload.exe on the server):

The Server-side MLoad feature allows users to load data directly on the server using MLoad os commands. 

The .csv and .ctl file must reside on the server in db/data/load

- **Get Inserts/Updates/Result Set**: Get Inserts/Updates was developed to facilitate the moving of data from one environment to another. Get Inserts uses the active table to create an insert statement for each row of the table. Get Updates creates a sl_change gen_maint command for each row. All functions place the result in the clipboard for easy pasting to another window.

### Client-Side MLoad (NOT using mload.exe on the server): 

The Client-side Load feature provides several options for inserting, updating, loading, and unloading data within the current tab of the client interface.

- **MLoad current tab**: Allows you to load the data in the .csv’s selected into the environment of the current tab. Filenames are expected to be the table name to load, have the table name after 2 underscores (i.e. USR-DDA__dda_mst.csv), or have the table name then a dash (i.e prtmst-30870.csv). Any errors will displayed in a popup box.

- **MUnload current tab**: This works the same as MLoad, but removes the data instead.

- **MLoad with current tab as CTL**: Uses the tab’s text as though it were a .ctl file and processes each line of the file through it. This is useful for loading large CSVs as the entire file is not loaded, just line-by-line. The progress is shown in the status bar.

- **Get MLoad/MUnload commands**: Used for easily generating a script to load/unload.

---

## Compare

The Compare feature in the Smart MOCA Client enables users to compare various data sets and objects between different environments. This feature is essential for identifying discrepancies, ensuring data consistency, and facilitating migrations between environments. 
   
The Compare feature includes several specific options for different types of comparisons.

1. **DB Compare**: DB Compare allows users to compare missing or different data between two servers.
       
    - Navigate to Addons --> Smart Innovations --> Compare --> DB Compare. The DB Compare window will get open.

      ![Compare](./.attachments/DBCompare_1.png)

    - Now choose both servers and specify information on the basis of which you want comparison.

      ![Compare1](./.attachments/compare2.png)

    - Review the comparison results to analyze discrepancies and ensure data consistency.
  
2. **Cmdsrc Compare**: CmdSrc Compare allows users to compare commands between two servers. This helps in identifying differences in command definitions and ensuring uniformity across environments.
       
    - Navigate to Addons --> Smart Innovations --> Compare --> Cmdsrc Compare. The Command Compare window will get open.

      ![Compare2](./.attachments/DBCompare_2.png) 

    - Now choose both servers and press 'Find' button. It will show the missing files on both servers in comparison to each other.

      ![Compare3](./.attachments/compare4.png)

    - Review the comparison results to analyze discrepancies and ensure data consistency.

3. **Integrator Compare**: Integrator Compare allows users to compare integrator data between two environments. This is useful for ensuring that integrator configurations and data are consistent across different setups.
       
    - Navigate to Addons --> Smart Innovations --> Compare --> Integrator Compare. The Integrator Compare window will get open.

      ![Compare4](./.attachments/DBCompare_3.png) 

    - Now choose both servers and type of integrator object and then press 'Start' button. It will show the missing objects on both servers in comparison to each other.

      ![Compare5](./.attachments/compare6.png)

    - Review the comparison results to analyze discrepancies and ensure data consistency.

4. **Integrator Migrator**: Integrator Migrator allows users to migrate integrator objects from one environment to another. This feature facilitates the transfer of integrator configurations and objects, ensuring that environments can be synchronized effectively.
       
    - Navigate to Addons --> Smart Innovations --> Compare --> Integrator Migrator. The Integrator Migrator window will get open.

      ![Compare6](./.attachments/DBCompare_4.png) 

    - Now choose both servers and type of integrator object and then press 'Start' button. It will migrate object from one server to another server.

      ![Compare7](./.attachments/compare8.png)

    - Review the comparison results to analyze discrepancies and ensure data consistency.
  
---

## RP Console
   
The RP Console in the Smart MOCA Client is a powerful tool designed for managing and interacting with the Reporting (RP) Console across multiple nodes of a cluster. It allows users to fetch console data from various nodes and consolidate it for comprehensive analysis and management.

- Navigate to Addons --> Smart Innovations --> RP Console Tools. The Console window will get open.

 ![RPConsole](./.attachments/RpConsole.png)

- The RP Console has an information regarding several segments: Connections, Sessions, DB Connections, and Native Processes.

 ![RPConsole](./.attachments/RPConsole1.png)

---

## Report Preview


- **Purposeful Report Validation:** The Report Preview tool allows users to visually review reports before finalization, ensuring accuracy in layout, data, and formatting to minimize errors.

- **Easy Access:** Users can launch the tool via **Addons → Smart Innovations → Report Preview**, opening a dedicated window to manage and preview reports.

- **Interactive Parameter Input:** For reports that require user input (e.g., date ranges, IDs), parameter fields are available to customize the data being displayed.

- **Live Rendering of Reports:** After selection and parameter input, clicking **Preview** displays the report in real-time, allowing thorough examination of each section.

- **Efficient Review and Revisions:** Users can scroll, inspect formatting and data, and return to make edits as needed—offering a flexible, iterative way to perfect reports before export or distribution.

To learn more about Report Preview, follow [Report Preview](./report-preview.md).


## Print Label Operations

- **Streamlined Label Printing Interface:** Accessed via Addons → Smart Innovations → Print Label Operations, this tool offers a centralized window to manage and print various predefined label formats.

- **Detailed Label List View:** Users can view and select from a list of available labels, each with its name, format, description, and default printer, helping quickly identify the right label for printing.

- **User-Guided Data Input:** Upon selecting a label, users are prompted to enter specific arguments (like item code, quantity, batch number, etc.), ensuring accurate data population.

- **Live Label Preview:** A real-time preview displays the label layout and content, allowing users to validate positioning and formatting before printing to avoid errors.

- **Optimized for Operational Efficiency:** Designed for high-accuracy environments like manufacturing and logistics, the feature supports various printers and formats, enhancing speed, reliability, and output quality.

To learn more about Print Label Operations, follow [Print Label Operations](./print-label-operations.md).

