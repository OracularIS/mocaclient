# Source Code Menu

The Source Code menu provides options to manage application code directly from the MOCA Client.

## MSA (Moca Static Analysis Tool)

The **Moca Static Analysis** tool is a feature in Moca designed to ensure that all code contributions conform to BY (Blue Yonder) standards.  

MSA checks the implementation against predefined coding guidelines and best practices. If the submitted code violates these standards, MSA will reject the code and return an error report with details of the issues.  

This ensures that only compliant, clean, and maintainable code is integrated into Moca.

This ensures that only compliant, clean, and maintainable code is integrated into Moca.

### Accessing MSA

Users can access MSA from two places within the Moca client.

#### From the Editor Frame

To apply MSA on a single command, you can run it directly from the editor without checking the entire file.

1. Click the Run MSA button. The local syntax must be loaded by “mbuild” first. 

<div style="text-align: left;">
  <img src="./.attachments/msap/msa8.jpg"
       alt="undirectedmenu"
       style="height: 200px; margin: auto; display: block; cursor: zoom-in;
              border: 2px solid #000000; border-radius: 4px;"
       onclick="this.style.height='400px'; this.style.cursor='zoom-out';"
       ondblclick="this.style.height='200px'; this.style.cursor='zoom-in';">
   </div>

#### From the Menu Bar

To apply MSA on a file hierarchy, you can follow the below mentioned steps.

1. Go to your **Moca client environment** and select MSA checks.

<div style="text-align: left;">
  <img src="./.attachments/msap/MSA.png"
       alt="undirectedmenu"
       style="height: 200px; margin: auto; display: block; cursor: zoom-in;
              border: 2px solid #000000; border-radius: 4px;"
       onclick="this.style.height='400px'; this.style.cursor='zoom-out';"
       ondblclick="this.style.height='200px'; this.style.cursor='zoom-in';">
   </div>

2. If commands have not been loaded yet, you must first run:  

        bash
         list active commands 

3. You will be directed to the MSA Screen.

<div style="text-align: left;">
  <img src="./.attachments/msap/MSA2.png"
       alt="undirectedmenu"
       style="height: 200px; margin: auto; display: block; cursor: zoom-in;
              border: 2px solid #000000; border-radius: 4px;"
       onclick="this.style.height='400px'; this.style.cursor='zoom-out';"
       ondblclick="this.style.height='200px'; this.style.cursor='zoom-in';">
   </div>

4. Select a MLVL and click the Find button 

<div style="text-align: left;">
  <img src="./.attachments/msap/MSA3.png"
       alt="undirectedmenu"
       style="height: 200px; margin: auto; display: block; cursor: zoom-in;
              border: 2px solid #000000; border-radius: 4px;"
       onclick="this.style.height='400px'; this.style.cursor='zoom-out';"
       ondblclick="this.style.height='200px'; this.style.cursor='zoom-in';">
   </div>

5. Click on a row to see the syntax (if Local Syntax) 

<div style="text-align: left;">
  <img src="./.attachments/msap/msa4.jpg"
       alt="undirectedmenu"
       style="height: 200px; margin: auto; display: block; cursor: zoom-in;
              border: 2px solid #000000; border-radius: 4px;"
       onclick="this.style.height='400px'; this.style.cursor='zoom-out';"
       ondblclick="this.style.height='200px'; this.style.cursor='zoom-in';">
   </div>

6. Click the Run MSA button to run the msa program 

    - If selecting a specific row, that is the only command checked 

    - If a MLVL is chosen, only that MLVL will be checked 

    - If the Name textfield is not empty, that will be used to filter the commands 

    - Otherwise, all commands will be checked 

    <div style="text-align: left;">
     <img src="./.attachments/msap/msa5.png"
       alt="undirectedmenu"
       style="height: 200px; margin: auto; display: block; cursor: zoom-in;
              border: 2px solid #000000; border-radius: 4px;"
       onclick="this.style.height='400px'; this.style.cursor='zoom-out';"
       ondblclick="this.style.height='200px'; this.style.cursor='zoom-in';">
   </div>

   When you run MSA, a dialog window will appear showing the command being executed. 

   
- **`-l`** → Specifies the analysis level.  
- **`-n`** → Specifies the command or description being checked.  

> ⚠️ **Important:** Do not cancel the dialog immediately.  
> MSA may take a short time to complete the analysis. Wait until the process finishes before taking any further action.  


7. When the program finishes, the text from the command line is shown in MSA Output.

<div style="text-align: left;">
  <img src="./.attachments/msap/msa6.jpg"
       alt="undirectedmenu"
       style="height: 200px; margin: auto; display: block; cursor: zoom-in;
              border: 2px solid #000000; border-radius: 4px;"
       onclick="this.style.height='400px'; this.style.cursor='zoom-out';"
       ondblclick="this.style.height='200px'; this.style.cursor='zoom-in';">
   </div>

8. The HTML is shown in MSA HTML tab.

<div style="text-align: left;">
  <img src="./.attachments/msap/msa7.png"
       alt="undirectedmenu"
       style="height: 200px; margin: auto; display: block; cursor: zoom-in;
              border: 2px solid #000000; border-radius: 4px;"
       onclick="this.style.height='400px'; this.style.cursor='zoom-out';"
       ondblclick="this.style.height='200px'; this.style.cursor='zoom-in';">
   </div>



---


