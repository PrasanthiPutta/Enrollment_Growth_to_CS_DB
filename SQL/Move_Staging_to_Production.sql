/*Moving data from STAGING tables to PRODUCTION tables*/

INSERT INTO Field_Of_Study (Field_ID, Field_Name)
SELECT Field_ID, Field_Name 
FROM Staging_Field_Of_Study;

INSERT INTO Institution_Type(Institution_Type_ID, Institution_Type)
SELECT Institution_Type_ID, Institution_Type
FROM Staging_Institution_Type;

INSERT INTO Race_and_Ethnicity(Race_and_Ethnicity_ID, Race_and_Ethnicity)
SELECT Race_and_Ethnicity_ID, Race_and_Ethnicity
FROM Staging_Race_and_Ethnicity;

INSERT INTO Support_Mechanism(Support_Mechanism_ID, Support_Mechanism)
SELECT Support_Mechanism_ID, Support_Mechanism
FROM Staging_Support_Mechanism;

INSERT INTO Graduate_Enrollment(Graduate_Enrollment_ID, Field_ID, Academic_Year, Citizenship, Graduate_Enrollment)
SELECT Graduate_Enrollment_ID, Field_ID, Academic_Year, Citizenship, Graduate_Enrollment
FROM Staging_Graduate_Enrollment;

INSERT INTO Graduate_Financial_Support(Financial_Support_ID, Support_Mechanism_ID, Field_ID, Academic_Year, Students_On_Financial_Aid, Percentage_Of_Students_On_Financial_Aid)
SELECT Financial_Support_ID, Support_Mechanism_ID, Field_ID, Academic_Year, Students_On_Financial_Aid, Percentage_Of_Students_On_Financial_Aid
FROM Staging_Graduate_Financial_Support;

INSERT INTO International_Graduate_Enrollment(International_Graduate_Enrollment_ID, Field_ID, Place_of_origin, Academic_Year, International_Graduate_Enrollment)
SELECT International_Graduate_Enrollment_ID, Field_ID, Place_of_origin, Academic_Year, International_Graduate_Enrollment
FROM Staging_International_Graduate_Enrollment;

INSERT INTO Master_s_Degrees_Awarded(Degrees_Awarded_ID, Citizenship, Field_ID, Institution_Type_ID, Race_and_Ethnicity_ID, Gender, Academic_Year,Degrees_Awarded)
SELECT Degrees_Awarded_ID, Citizenship, Field_ID, Institution_Type_ID, Race_and_Ethnicity_ID, Gender, Academic_Year,Degrees_Awarded
FROM Staging_Master_s_Degrees_Awarded;