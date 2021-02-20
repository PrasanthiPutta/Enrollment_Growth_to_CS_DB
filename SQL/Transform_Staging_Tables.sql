
/*Transforming Staging_Graduate_Enrollment  table*/

ALTER TABLE Staging_Graduate_Enrollment ADD COLUMN Field_ID INT;

UPDATE Staging_Graduate_Enrollment STG_GE
JOIN Staging_Field_Of_Study STG_F
ON STG_GE.Field_Name = STG_F.Field_Name
SET STG_GE.Field_ID=STG_F.Field_ID;

ALTER TABLE Staging_Graduate_Enrollment DROP COLUMN Field_Name;


/*Transforming Staging_International_Graduate_Enrollment table*/

ALTER TABLE Staging_International_Graduate_Enrollment ADD COLUMN Field_ID INT;

UPDATE Staging_International_Graduate_Enrollment STG_IGE
JOIN Staging_Field_Of_Study STG_F
ON STG_IGE.Field_Name = STG_F.Field_Name
SET STG_IGE.Field_ID=STG_F.Field_ID;

ALTER TABLE Staging_International_Graduate_Enrollment DROP COLUMN Field_Name;

/*Transforming Staging_Graduate_Financial_Support table*/

ALTER TABLE Staging_Graduate_Financial_Support ADD COLUMN Field_ID INT;

UPDATE Staging_Graduate_Financial_Support STG_GFS
JOIN Staging_Field_Of_Study STG_F
ON STG_GFS.Field_Name = STG_F.Field_Name
SET STG_GFS.Field_ID=STG_F.Field_ID;

ALTER TABLE Staging_Graduate_Financial_Support DROP COLUMN Field_Name;


ALTER TABLE Staging_Graduate_Financial_Support ADD COLUMN Support_Mechanism_ID INT;

UPDATE Staging_Graduate_Financial_Support STG_GFS
JOIN Staging_Support_Mechanism STG_M
ON STG_GFS.Support_Mechanism = STG_M.Support_Mechanism
SET STG_GFS.Support_Mechanism_ID =STG_M.Support_Mechanism_ID;

ALTER TABLE Staging_Graduate_Financial_Support DROP COLUMN Support_Mechanism;

/*Transforming Staging_Master_s_Degrees_Awarded table*/

ALTER TABLE Staging_Master_s_Degrees_Awarded ADD COLUMN Field_ID INT;

UPDATE Staging_Master_s_Degrees_Awarded STG_DA
JOIN Staging_Field_Of_Study STG_F
ON STG_DA.Field_Name = STG_F.Field_Name
SET STG_DA.Field_ID=STG_F.Field_ID;

ALTER TABLE Staging_Master_s_Degrees_Awarded DROP COLUMN Field_Name;


ALTER TABLE Staging_Master_s_Degrees_Awarded ADD COLUMN Institution_Type_ID INT;

UPDATE Staging_Master_s_Degrees_Awarded STG_DA
JOIN Staging_Institution_Type STG_IT
ON STG_DA.Institution_Type = STG_IT.Institution_Type 
SET STG_DA.Institution_Type_ID=STG_IT.Institution_Type_ID;

ALTER TABLE Staging_Master_s_Degrees_Awarded DROP COLUMN Institution_Type;


ALTER TABLE Staging_Master_s_Degrees_Awarded ADD COLUMN Race_and_Ethnicity_ID INT;

UPDATE Staging_Master_s_Degrees_Awarded STG_DA
JOIN Staging_Race_and_Ethnicity STG_RE
ON STG_DA.Race_and_Ethnicity = STG_RE.Race_and_Ethnicity 
SET STG_DA.Race_and_Ethnicity_ID=STG_RE.Race_and_Ethnicity_ID;

ALTER TABLE Staging_Master_s_Degrees_Awarded DROP COLUMN Race_and_Ethnicity;