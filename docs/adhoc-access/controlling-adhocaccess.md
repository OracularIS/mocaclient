# Controlling Adhoc Access

Controlling ad-hoc access is crucial for maintaining the security and integrity of your production environment. 

This section outlines how to use sys_audit and other security measures to monitor and control ad-hoc command executions.

## Monitoring Access with 'sys_audit'

The sys_audit system is designed to log and monitor all ad-hoc commands executed by users. This helps in keeping track of who is executing which commands, and when. This is directly supported by the `LOG_TO_SYS_AUDIT` setting, which forces audit logging even if auditing is disabled at the policy level.

  ![sysaudit](../.attachments/adhoc4.png)

Here's how you can utilize sys_audit for monitoring:

- **Enable Auditing:** Enable `LOG_TO_SYS_AUDIT` to ensure every command execution is recorded.
- **Log Entries:** Each ad-hoc command executed is logged with details such as the username, command text, timestamp, and execution status. These logs can be reviewed to track user activities.
- **Regular Reviews:** Set up regular reviews of the audit logs to identify any suspicious or unauthorized activities. Automated alerts can also be configured for certain types of commands or access patterns.

## Controlling Production Access

Restricting ad-hoc access in production environments is essential to prevent unintended disruptions or security breaches. Here are some measures to control access:

- **Role-Based Access Control (RBAC):** Implement RBAC to ensure that only authorized users can execute ad-hoc commands in the production environment. Assign roles based on the principle of least privilege.
- **Access Policies:** Define and enforce access policies that specify who can perform ad-hoc executions and under what circumstances. These policies should be clearly documented and communicated to all users.
- **Approval Workflows:** Set up approval workflows for executing sensitive commands in production. This ensures that any potentially impactful commands are reviewed and approved by a designated authority before execution.
- **Logging and Alerts:** In addition to sys_audit, configure detailed logging and alert mechanisms for ad-hoc access. This includes real-time alerts for unauthorized access attempts or execution of high-risk commands.

By effectively monitoring and controlling ad-hoc access, you can maintain a secure and stable production environment, minimize the risk of unauthorized activities, and ensure compliance with organizational policies and standards.