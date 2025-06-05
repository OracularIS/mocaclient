# Command Auto Completion

Command completion was developed for commands that get a lot of use and can be successfully guessed, saving the user from typing the entire command out. 

- For example, if you begin your command with “[“, the program will guess that you are typing a select query and will fill out the command as “[select * from where rownum < 99]”. 

  ![Completion](../.attachments/adhoc5.png)

- If the guess is correct and you would like to accept the command as shown, hit **TAB**, and the caret will be moved to the position where you would enter the table name. 
- These stored commands are defined in `%APPDATA%\Oracular MOCA Client\MOCADev-Commands.txt`. 