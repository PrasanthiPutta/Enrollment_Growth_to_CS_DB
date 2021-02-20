Steps to recreate database and run queries

1. Unzip the CS571_Final_Project_Prasanthi Folder

2. Open the software FileZilla, connect to playground server and copy and paste the CS571_Final_Project_Prasanthi folder.

3. Open PuTTY and connect to playground server and change the directory to CS571_Final_Project_Prasanthi 
   cd CS571_Final_Project_Prasanthi 

4. Login to mysql: mysql –u s_sdolins –p

5. Select the database
   mysql> Use s_sdolins; 

6. Now, Run Main.sql file which does the following:
   mysql> source SQL/Main.sql;
	a) Drops tables if exists
	b) Creates Staging Tables
	c) Creates Production Tables
	d) Loads All Staging Tables
	e) Transforms Staging Tables
	f) Moves Data from Staging Tables to Production Tables
	g) Computes table Statistics
   

7. Run queries
   mysql> source SQL/Queries.sql

Directory Structure:
|--project
    |--Statement_Of_Work.docx
    |--Queries.docx
|--SQL/
    |--Compute_Statistics.sql <--------------------------- to compute table statistics
    |--Create_staging_tables.sql <------------------------ to create stagingtables
    |--Create_tables.sql <-------------------------------- to create production tables
    |--Drop_tables.sql  <--------------------------------- to drop tables
    |--Load_Staging_Field_Of_Study.sql
    |--Load_Staging_Graduate_Enrollment.sql
    |--Load_Staging_Graduate_Financial_Support.sql
    |--Load_Staging_Institution_Type.sql
    |--Load_Staging_International_Graduate_Enrollment.sql
    |--Load_Staging_Master_s_Degrees_Awarded.sql
    |--Load_Staging_Race_and_Ethnicity.sql
    |--Load_Staging_Support_Mechanism.sql
    |--Main.sql <----------------------------------------- to load data and run all the sql scripts
    |--Move_Staging_to_Production.sql <------------------- to move data from staging to production
    |--Queries.sql  <------------------------------------- to run queries
    |--Transform_Staging_Tables.sql <--------------------- to transform staging tables
|--Data/ <------------------------------------------------ data files
    |--Graduate_Enrollment.csv
    |--Graduate_Financial_Support.csv
    |--International_Graduate_Enrollment.csv
    |--Master_s_Degrees_Awarded.csv
|--/ER Diagram <------------------------------------------ ER Diagram
    |--ER_Diagram.emf
    |--ER_Diagram.erwin
    |--ER_Diagram.jpg







