# MOCA Client Settings
The MOCA Client Settings enable administrators to define operational rules, security restrictions, and workflow safeguards for all users connecting through the MOCA Client.
These settings are stored in a feature file and can be used to:

- Control how commands are executed.

- Restrict which files can be modified.

- Enforce confirmation prompts for sensitive operations.

- Enable detailed logging for compliance and troubleshooting.

In production environments, these settings are typically used to enforce safe practices, prevent accidental or unauthorized changes, and protect critical system data.

## Feature File Settings

Feature file settings determine the MOCA Client’s runtime behavior.
They are read from the `MOCADEV_FEATURES.txt` at startup, or before each execution if configured via READ_SETTINGS_EVERY_TIME.

| Category               | Feature Name               | Description                                                                                                                                             | Default / Notes                                  |
| ---------------------- | -------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------ |
| **Connection Control** | MIN_VERSION                | A client under this version is not allowed to connect.                                                                                                  | —                                                |
|                        | PROD_ENV                   | Applies the same behavior as the “Critical?” checkbox in the connection dialog.                                                                         | —                                                |
| **Execution Control**  | FORCE_READONLY             | If enabled, every command is executed with try/finally/rollback.                                                                                        | —                                                |
|                        | READONLY_LEADING_CLAUSE    | Used with FORCE_READONLY. Default value if not set is "comflg = 0 and uc_commit_flg = 0".                                                               | Default: `comflg = 0 and uc_commit_flg = 0`      |
|                        | AUTO_COMMIT_OFF            | Auto commit will be turned off.                                                                                                                         | —                                                |
|                        | AUTO_ROLLBACK_SECONDS      | Automatically rolls back execution after the specified seconds.                                                                                         | —                                                |
|                        | DISABLE_OS_ACCESS          | Disables `execute os command`, `sl_run system`, and `sl_run base_system`.                                                                               | —                                                |
| **File Access Control**| CONTROL_SERVER_FILES       | When modifying a server file, if enabled and `UC_OSSI_ALLOWED_FILE` is set, check the filepath against the list in UC_OSSI_ALLOWED_FILE. If not found, do not allow the file to be modified. | —                                                |
|                        | ALLOWED_FILE_FILTER_FILE   | Path to the file listing allowed files to modify.                                                                                                       | If empty, defaults to `$LESDIR/data`             |
|                        | DML_FILTER_FILE            | Path to the DML filter file.                                                                                                                            | —                                                |
|                        | DDL_FILTER_FILE            | Path to the DDL filter file.                                                                                                                            | —                                                |
|                        | SAFE_FILTER_FILE           | Path to the Safe filter file.                                                                                                                           | —                                                |
|                        | SAFE_SQL_FILTER_FILE       | Path to the Safe SQL filter file.                                                                                                                       | —                                                |
|                        | DISALLOWED_FILTER_FILE     | Path to the Disallowed filter file.                                                                                                                     | —                                                |
|                        | DISALLOWED_SQL_FILTER_FILE | Path to the Disallowed SQL filter file.                                                                                                                 | —                                                |
| **Confirmation Rules** | CONFIRM_EACH_DML           | Prompt to confirm each DML before execution.                                                                                                            | —                                                |
|                        | CONFIRM_EACH_DDL           | Prompt to confirm each DDL before execution.                                                                                                            | —                                                |
|                        | CONFIRM_EACH_UNSAFE        | Prompt to confirm each DML, DDL, and unsafe command.                                                                                                    | —                                                |
|                        | REQUIRE_INFO_FOR_UNSAFE    | Before running unsafe commands, request a comment to append at the top of the execution.                                                                | —                                                |
| **Logging & Refresh**  | READ_SETTINGS_EVERY_TIME   | Read these features before each execution.                                                                                                              | —                                                |
|                        | LOG_TO_SYS_AUDIT           | Forces logging to `sys_audit` even if policy is disabled.                                                                                               | —                                                |

---

## Role Based Settings

Roles determine what actions a user can perform within the MOCA Client.
They are assigned by system administrators to align with user responsibilities, ensuring only authorized users can perform high-risk operations.

| Role Name                         | Permission / Description                                                                |
| --------------------------------- | --------------------------------------------------------------------------------------- |
| **UC_OSSI_SRC_FILE**              | Allows editing files in `$LESDIR/src`. Extends to filter files mentioned above.         |
| **UC_OSSI_DB_FILE**               | Allows updating under `$LESDIR/db`.                                                     |
| **UC_OSSI_DATA_FILE**             | Allows modifying files in `$LESDIR/data` (including config files like registry).        |
| **UC_OSSI_MLOAD_FILE**            | Allows `mload` via right-click.                                                         |
| **UC_OSSI_INSTALLSQL**            | Allows `InstallSql` via right-click.                                                    |
| **UC_OSSI_ALLOW_UNSAFE**          | Required to run commands detected as unsafe. Without it, unsafe commands are blocked.   |
| **UC_OSSI_ALLOW_UPDATE**          | If absent, user is assumed read-only; if present, grants non-read-only mode.            |
| **UC_OSSI_FEATURE_FILE**          | Allows editing of the feature file.                                                     |
| **UC_OSSI_ALLOWED_FILE**          | Allows editing files that pass the filter in `ALLOWED_FILE_FILTER_FILE`.                |
| **UC_OSSI_OVERRIDE_DML**          | Overrides `FORCE_READONLY` for the user.                                                |


