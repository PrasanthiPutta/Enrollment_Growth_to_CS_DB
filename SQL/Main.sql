/*Drop tables*/
SELECT 'Removing all existing tables' AS '';
source SQL/Drop_tables.sql;

/*Create STAGING tables*/
SELECT 'Creating STAGING tables' AS '';
source SQL/Create_staging_tables.sql;

/*Create PRODUCTION tables*/
SELECT 'Creating PRODUCTION tables' AS '';
source SQL/Create_tables.sql;

/* Load data into staging tables */
SELECT 'Loading Staging_Graduate_Enrollment table' AS '';
source SQL/Load_Staging_Graduate_Enrollment.sql;

SELECT 'Loading Staging_International_Graduate_Enrollment table' AS '';
source SQL/Load_Staging_International_Graduate_Enrollment.sql;

SELECT 'Loading Staging_Graduate_Financial_Support table' AS '';
source SQL/Load_Staging_Graduate_Financial_Support.sql;

SELECT 'Loading Staging_Master_s_Degrees_Awarded table' AS '';
source SQL/Load_Staging_Master_s_Degrees_Awarded.sql;

SELECT 'Loading Staging_Field_Of_Study table' AS '';
source SQL/Load_Staging_Field_Of_Study.sql;

SELECT 'Loading Staging_Institution_Type table' AS '';
source SQL/Load_Staging_Institution_Type.sql;

SELECT 'Loading Staging_Race_and_Ethnicity table' AS '';
source SQL/Load_Staging_Race_and_Ethnicity.sql;

SELECT 'Loading Staging_Support_Mechanism table' AS '';
source SQL/Load_Staging_Support_Mechanism.sql;

/* Transform staging tables */
SELECT 'Transforming Staging tables' AS '';
source SQL/Transform_Staging_Tables.sql;

/*Move Data from Staging tables to Production*/
SELECT 'Move Data from Staging tables to Production' AS '';
source SQL/Move_Staging_to_Production.sql;

/*Compute Statistics*/
SELECT 'Computing Statistics for all tables' AS '';
source SQL/Compute_Statistics.sql;