# Use Cases

## Setup Smart MOCA Client Feature File
We can place a file on the MOCA server in "data" folder called MOCADEV_FEATURES.txt.  This file can control certain features and functionality of the Smart MOCA Client when it is connected to 
that environment.  The overall syntax of this file is as follows:
```
ADD <feature>=<value>
```
Following features are supported

| Feature                 | Description              | What type of value we set        | Example                                 |
|-------------------------|--------------------------|----------------------------------|-----------------------------------------|
| MIN_VERSION             | Earliest moca version    | A moca version                   | xxx                                     |

## Options (les_mnu_opt) respected by Smart MOCA Client
Smart MOCA Client respects some menu options (entries in les_mnu_opt table) to control some pieces of functionality.  When these options
exist, then MOCA Client checks that the logged in user has access to that option

| Option                     | Description                                        | Comments                                                                       |
|----------------------------|----------------------------------------------------|--------------------------------------------------------------------------------|
| USROSSIORACULARMOCACLIENT  | Control access to smart moca client explicitlyt    | If option exists, then we enforce that logged in user should have accesss to it|



## Restricting MOCA Client Connectivity
Content to be added

## Controlling File Editing Permissions
Content to be added

## Managing DML Access by User Role
Content to be added

## Enforcing Ticket-Based Change Control
Content to be added
