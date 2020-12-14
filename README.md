# Skedula
Skedula is an Electron based desktop application for scheduling appointment in a Hospital. The database used is  MySQL database running on the Apache web sever. 
## Database Design:
## ER DIAGRAM:
![](Skedula/Images/ER DIAGRAM.jpg)
#### The Relational database model has the following tables:
Doctor (DocID, pwd, f_name, s_name, Specialization, start time, end time, max today)   
Receptionist (RID, pwd, f_name, s_name)  
Patient (PatID, pwd, f_name, s_name, Addr_Line1, Addr_Line2) 
Patient_mobile (PatID, mobile number)  
Schedule (sID, Start time, PatID, DocID)  
Doc_Sch (sID, DocID, Doc Report path)  
Admin (aID, f_name, s_name)  
AdminManipulate(aID, M_ID)  

M_ID values are DocID or PatID or RID

## Pre-requisites:
1. Node
2. Xaamp with the required database( table / trigger creation and insertion commands available in the ".src/Database" folder and also database available as a hmsdb.sql file) 

## Setting up the environment and opening the desktop app
### Step 1:
Navigate to the Applictaion folder in the IDE terminal/ command prompt and type "npm install" to install all the dependecy files and node modules required for the appliacation as mentioned in the .JSON file.

### Step 2:
Make sure all the tables are created in the database.Make sure that Apache and mysql servers are turned on from xaamp

### Step 3:
Navigate to the Applictaion folder in the IDE terminal/ command prompt and type "npm start" to start the electron based desktop app.



