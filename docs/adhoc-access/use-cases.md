# Use Cases

## 1. Restrict access to LexEdit in my organization
Lexedit respects option ORBITAL-SERVICES-LEXTEDIT.  If this option exists then users must have this option.  You can create the option using following:
```
    create option 
    where opt_nam = 'ORBITAL-SERVICES-LEXTEDIT' 
    and opt_typ = 'O'
    and pmsn_mask = -1
    and ena_flg = 1
    and mls_text = 'Option-Allow access to Lexedit'
    and exec_nam = 'LEXEDIT'
    and locale_id = nvl(@@LOCALE_ID,'US_ENGLISH')
    and uc_force_inhibit_version_control = '1'
```
And then assign to users.  If you do not assign to anyone then access to Lexedit will be blocked completely.

## 2. Control who can access Smart MOCA Client in my organization
Smart MOCA Cliend respects option USROSSIORACULARMOCACLIENT.  If this option exists then users with this option are allowed to access Smart MOCA Client.  You can create the option using:

```
    create option 
    where opt_nam = 'USROSSIORACULARMOCACLIENT' 
    and opt_typ = 'O'
    and pmsn_mask = -1
    and ena_flg = 1
    and mls_text = 'Option-Smart MOCA Client'
    and exec_nam = 'ORACULAR-MOCA-CLIENT'
    and locale_id = nvl(@@LOCALE_ID,'US_ENGLISH')
    and uc_force_inhibit_version_control = '1'
```
You can then assign this option to the users who can access Smart MOCA Client.

## 3. Log all activity done by Smart MOCA Client to SYS_AUDIT table
MOCA supports this functionality via policy 

| Policy Column | Value                |
|---------------|----------------------|
| Polcod        | SYSTEM-AUDITING      |
| polvar        | INTERACTIVE-AUDITING |
| polval        | APPS-TO-AUDIT        |
| wh_id         | ----                 |
| srtseq        | Use next sequence    |
| rtstr1        | ORACMSQL             |
| rtnum1        | 1                    |

You can use following snippet to add it
```
create policy
where wh_id = '----'
and polcod = 'SYSTEM-AUDITING'
and polvar = 'INTERACTIVE-AUDITING'
and polval = 'APPS-TO-AUDIT'
and rtnum1 = 1
and rtstr1 = 'ORACMSQL'
and uc_force_inhibit_version_control = '1'
```

## 4. Controlling File Editing Permissions
We have following types of files and for each type of file has a specific role that controls who can access it.  Generally if the role does not exist at all then that access is not contolled.

| Type of Files                          | Role that controls it |
| ---------------------------------------|-----------------------|
| Source Code (files under $LESDIR/src)  | UC_OSSI_SRC_FILE      |
| DB files (files under $LESDIR/db)      | UC_OSSI_DB_FILE       |
| Data files (files under $LESDIR/data)  | UC_OSSI_DATA_FILE     |
| Feature file itself                    | UC_OSSI_FEATURE_FILE  |

To add all of these roles, use the following snippet

```
convert list
where string = 'UC_OSSI_SRC_FILE,UC_OSSI_DB_FILE,UC_OSSI_DATA_FILE'
and type = 'L'
|
{
    create role
    where role_id = @retstr
    and ena_flg = 1
    and grp_nam = 'SMART-MOCA-CLIENT-ROLE'
    and mls_text = @retstr
    and par_role_id = 'SUPER'
    and locale_id = nvl(@@LOCALE_ID,'US_ENGLISH')
    and uc_force_inhibit_version_control = '1'
}
```

Content to be added

## Managing DML (Data Manipulation Language) Access by User Role
Using MOCA we can run SQL statements that change data - such as delete, update, insert statements.  Data can be changed through MOCA commands as well.  We can control who is allowed to run DML statements through role.  
So to achieve this you will need to follow following steps:

* Create a file to be used to define DML.  See [Defining Filter Files](settings.md#feature-file-settings)

* Add setting DML_FILTER_FILE to the fearture file and point to this file.  See [Defining Feature File](settings.md#feature-file-settings)


## Enforcing Ticket-Based Change Control
We can enforce a rule that will ask the user to enter a ticket when performing an unsafe operation in a production environment.  Follow following steps:

* Set REQUIRE_INFO_FOR_UNSAFE to 1.  See [Defining Filter Files](settings.md#feature-file-settings)
* Define SAFE_FILTER_FILE filter file.  This has regular expressions for safe commands.  See [Defining Filter Files](settings.md#feature-file-settings)
* Define SAFE_SQL_FILTER_FILE filter file. This has regular expressions for safe SQL comamnds.See [Defining Filter Files](settings.md#feature-file-settings)
* The two settings will be added to the feature file
* The user should have access to run unsafe commads.  So UC_OSSI_ALLOW_UNSAFE role should be created and assigned to the user.  See [Role Based Settings](settings.md#role-based-settings)

## General Best Bractices for production systems
Following are general best practices:

* Set READ_SETTINGS_EVERY_TIME=1 

<br>

---

 

