## Advance System Operations

The Advanced System Operations in the Smart MOCA Client offer a comprehensive suite of tools designed to enhance productivity, improve data management, and streamline various tasks. This section outlines the key features available under Advanced System Operations.

## File Browser

The File Browser is an essential tool for navigating and managing files within the Smart MOCA Client.

- Navigate to Data --> Edit Server Files or press F2 to open file browser. 

  ![FileBrowser](./.attachments/filebrowser.png)

- File Browser will get open where you can see all the directories and files.

  ![FileBrowser1](./.attachments/filebrowser1.png)

### Key Features of file browser

- Browse directories and files seamlessly.
- Perform various file operations such as opening, editing, deleting, and moving files.
- Access detailed file information and properties.
- Execute file-related commands directly from the browser.

This feature provides an intuitive interface for users to efficiently manage their files and directories, ensuring easy access and organization.

---

## Database Trace

Database Tracing is a powerful feature for monitoring and debugging database operations. It enables users to track SQL queries and other database interactions in real-time, identify performance bottlenecks, and capture detailed logs of database activities for troubleshooting and analysis.

- Navigate to MOCALog --> Database Trace Console to open Trace Analysis window.
  
  ![DBTrace](./.attachments/trace5.png)

- **Insert into DB**: Click 'Insert' button on Trace Analysis window and then enter a trace filename (the full path to the log directory is not necessary). Finally click "Insert into DB".

  ![DBTrace1](./.attachments/trace6.png)

  ![DBTrace2](./.attachments/trace8.png)

  - It runs the script "Log/Load into DB" to create the tables usr_temp_sql_trace_analysis and usr_temp_cmd_trace_analysis and load them with the lines of the given trace file. 

- **Load Recent**: Click the button to load the combo box with recent traces (defaulted to the current day)
   
  ![DBTrace](./.attachments/trace7.png)

- **Search**: Check the SQL? box to search usr_temp_sql_trace_analysis or usr_temp_cmd_trace_analysis.

    - **Command:** usr_temp_cmd_trace_analysis.uc_cmd
    - **Command Arguments:** usr_temp_cmd_trace_analysis.uc_args
    - **Bound SQL:** usr_temp_sql_trace_analysis.uc_bound_sql
    - **Unbound SQL:** usr_temp_sql_trace_analysis.uc_unbound_sql

By leveraging these advanced DevOps features, users can efficiently manage files, maintain source code, handle change management, and perform comprehensive tracing and debugging within the Smart MOCA Client.

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

The Report Viewer in the Smart MOCA Client is a versatile tool designed for previewing generated reports like in report operations before they are finalized. 
   
This functionality ensures that users can review and validate report content, layout, and accuracy before publishing or distributing the final version.

- Navigate to Addons --> Smart Innovations --> Report Preview. The report Preview window will get open.

  ![ReportPreview](./.attachments/ReportPreview_1.png)

- Select the report you want to preview from the list of reports and press 'Preview' button. Also enter report parameters if any.

  ![ReportPreview1](./.attachments/reportpreview2.png)

- The report will be displayed in the preview window, allowing you to scroll through and examine the content in detail.

  ![ReportPreview2](./.attachments/reportpreview1.png)

---

## Print Label Operations

The Print Label Operations feature provides functionality for printing labels with specified content. 

- Navigate to Addons --> Smart Innovations --> Print Label Operations. The 'Labels' window will get open containing all labels along with their formats, descriptions, and default printers.
  
  ![PrintLabel](./.attachments/printlabel_1.png)

- Double-click on any label to open the Print Label Operations window.

  ![PrintLabel1](./.attachments/printlabel2.png)

- In the Print Label Operations window, enter the required arguments or commands to generate the label. The label's image will be displayed, allowing you to verify the output before printing.

  ![PrintLabel2](./.attachments/printlabel1.png)

This feature ensures accurate and efficient label printing by providing a comprehensive interface for defining, generating, and previewing labels.

