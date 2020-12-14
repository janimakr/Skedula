# Skedula
Skedula is an Electron based desktop application for scheduling appointment in a Hospital. The database used is  MySQL database running on the Apache web sever. 

## Pre-requisites:
1. Node
2. Xaamp with the required database(table/trigger creation and insertion commands available in the ".src/Database" folder and also database available as a hmsdb.sql file) 

## Setting up the environment and opening the desktop app

### Step 1:
Navigate to the Applictaion folder in the IDE terminal/ command prompt and type "npm install" to install all the dependecy files and node modules required for the appliacation as mentioned in the .JSON file.

### Step 2:
Make sure all the tables are created in the database.Make sure that Apache and mysql servers are turned on from xaamp

### Step 3:
Navigate to the Applictaion folder in the IDE terminal/ command prompt and type "npm start" to start the electron based desktop app.



