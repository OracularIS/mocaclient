## DevOps

The Smart MOCA Client offers a robust set of DevOps features designed to streamline file system management, source code maintenance, change management, and more. 

This document outlines these features and their functionalities.

## DB Trace

**Database Tracing** is a powerful diagnostic feature that allows users to monitor and analyze database operations in real time. It helps in tracking SQL queries, identifying performance issues, and capturing detailed logs of database activity for troubleshooting and in-depth analysis.

### Database Trace Console

- Navigate to **MOCALog** --> **Database Trace Console** to open **Trace Analysis** window.
  
  ![DBTrace](./.attachments/trace5.png)

- **Insert into DB**: 
  - Click on the **Insert** button in the **Trace Analysis** window.
  - Enter a **trace filename** (note: providing the full path to the log directory is not required).
  - After entering the filename, click **Insert into DB**.

  ![DBTrace1](./.attachments/trace6.png)

  ![DBTrace2](./.attachments/trace8.png)

- This action triggers the Log/Load into DB script, which performs the following:

  - Creates two temporary tables:
    - usr_temp_sql_trace_analysis
    - usr_temp_cmd_trace_analysis
  - Loads these tables with relevant entries from the specified trace file.

- **Load Recent:**
  - Click the Load Recent button to populate the trace selection dropdown.
  - This dropdown will display traces from the current day by default, allowing for quick access to the most recent entries.
   
  ![DBTrace](./.attachments/trace7.png)


### Moca Log and Trace

Database Tracing helps you track SQL activity in real time, making it easier to identify performance issues and troubleshoot database operations.

To learn more about Tracing, follow [Database Trace](./database-trace.md)

---

## Change Management

### Issue Assignment
The **Issue Assignment** feature in Smart MOCA Client helps manage tasks and bugs by assigning them to team members, setting priorities, and tracking progress. It streamlines issue resolution and supports efficient project management across the development lifecycle.

To learn more about Issue Assignment, follow [Issue Assignment](./issue-assignment.md)

---

## Rollout Management

### Rollout
A **Rollout** in the Smart MOCA Client is a deployment package that bundles commands, files, tables, triggers, and configurations, enabling seamless delivery of updates or new features as part of a release.

To learn more about Rollouts, follow [Rollout](./rollouts.md)

---

## Report Viewer

The Report Viewer in the Smart MOCA Client allows users to preview and validate reports for layout, data accuracy, and formatting before finalizing or sharing, ensuring error-free output.

To learn more about Report Viewer, follow [Report Preview](./advance-operations.md#report-preview)

---

## Label Viewer

The Print Label Operations feature in the Smart MOCA Client simplifies label generation by allowing users to define inputs, preview output, and ensure print accuracy—ideal for manufacturing, logistics, and inventory use.

To learn more about Label Viewer, follow [Print Label Operations](./advance-operations.md#print-label-operations)

## MOCA Command Tree

Feature to view the hierarchy of MOCA commands. 

- Navigate to **Addons --> Smart Innovations --> View Moca Command Tree**. The 'Command Tree Viewer' containing text area to enter code and 'Generate' button to generate tree.

  ![CommandTree](./.attachments/commandtree.png)

- Now enter block of code and press 'Generate' button. At bottom window, tree will be generated.

  ![CommandTree1](./.attachments/commandtree1.png)

- Press 'Transfer' button if you want to transfer code to another server.

  ![CommandTree2](./.attachments/commandtree2.png)

