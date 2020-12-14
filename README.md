# Skedula
Skedula is an Electron based desktop application for scheduling appointment in a Hospital. Skedula is designed to be a patient appointment scheduler which works on both online and offline mode (wherein the patient receives his/her appointment via the receptionist). 
The application caters to the following needs –
* Allows the patients to schedule an appointment with the doctor/physician of their choice.
* Provides the physician the ability to retrieve details of the patients (history of medical reports).
* Enables the patient to view their medical records and prescribed medicines all within a click of a button. 
* In addition, doctors will also have full access to his/her schedule and the rights to modify it according to their availability. It aims to serve as platform that can bridge the communication gap between the hospital and its patients.

The database used is  MySQL running on the Apache web sever. 

## Database Design:
### ER DIAGRAM:
<img src="Images/ER DIAGRAM.jpg" alt="ER DIAGRAM">
<p align="center">Most Updated version of the ER Diagram</p>  

### The Relational database model has the following tables:
* Doctor (DocID, pwd, f_name, s_name, Specialization, start time, end time, max today)   
* Receptionist (RID, pwd, f_name, s_name)  
* Patient (PatID, pwd, f_name, s_name, Addr_Line1, Addr_Line2) 
* Patient_mobile (PatID, mobile number)  
* Schedule (sID, Start time, PatID, DocID)  
* Doc_Sch (sID, DocID, Doc Report path)  
* Admin (aID, f_name, s_name)  
* AdminManipulate(aID, M_ID)  
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

#####NOTE:To check the database functionalities, navigate to the admin page as they are active only there and make sure to reenter database vaues to recheck.
