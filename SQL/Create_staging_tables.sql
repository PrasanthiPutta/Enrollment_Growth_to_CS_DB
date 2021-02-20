CREATE TABLE Staging_Field_Of_Study
(
	Field_ID             INTEGER NOT NULL AUTO_INCREMENT,
	Field_Name           VARCHAR(50) NOT NULL,
	CONSTRAINT SXPKField PRIMARY KEY (Field_ID)
);

CREATE TABLE Staging_Institution_Type
(
	Institution_Type_ID  INTEGER NOT NULL AUTO_INCREMENT,
	Institution_Type     VARCHAR(100) NULL,
	CONSTRAINT SXPKInstitution_Type PRIMARY KEY (Institution_Type_ID)
);

CREATE TABLE Staging_Race_and_Ethnicity
(
	Race_and_Ethnicity_ID INTEGER NOT NULL AUTO_INCREMENT,
	Race_and_Ethnicity   VARCHAR(50) NULL,
	CONSTRAINT SXPKRace_and_Ethnicity PRIMARY KEY (Race_and_Ethnicity_ID)
);


CREATE TABLE Staging_Support_Mechanism
(
	Support_Mechanism_ID INTEGER NOT NULL AUTO_INCREMENT,
	Support_Mechanism    VARCHAR(50) NULL,
	CONSTRAINT SXPKSupport_Mechanism PRIMARY KEY (Support_Mechanism_ID)
);

CREATE TABLE Staging_Graduate_Enrollment
(
	Graduate_Enrollment_ID INTEGER NOT NULL AUTO_INCREMENT,
	Field_Name             VARCHAR(50) NULL,
	Academic_Year        YEAR NULL,
	Citizenship          VARCHAR(50) NULL,
	Graduate_Enrollment  INTEGER NULL,
	CONSTRAINT SXPKGraduate_Enrollment PRIMARY KEY (Graduate_Enrollment_ID)
);

CREATE TABLE Staging_Graduate_Financial_Support
(
	Financial_Support_ID INTEGER NOT NULL AUTO_INCREMENT,
	Support_Mechanism    VARCHAR(50) NULL,
	Field_Name           VARCHAR(50) NULL,
	Academic_Year        YEAR NULL,
	Students_On_Financial_Aid INTEGER NULL,
	Percentage_Of_Students_On_Financial_Aid INTEGER NULL,
	CONSTRAINT SXPKGraduate_Financial_Support PRIMARY KEY (Financial_Support_ID)
);

CREATE TABLE Staging_International_Graduate_Enrollment
(
	International_Graduate_Enrollment_ID INTEGER NOT NULL AUTO_INCREMENT,
	Field_Name           VARCHAR(50) NULL,
	Place_of_origin      VARCHAR(50) NULL,
	Academic_Year        YEAR NULL,
	International_Graduate_Enrollment INTEGER NULL,
	CONSTRAINT SXPKInternational_Graduate_Enrollment PRIMARY KEY (International_Graduate_Enrollment_ID)
);

CREATE TABLE Staging_Master_s_Degrees_Awarded
(
	Degrees_Awarded_ID   INTEGER NOT NULL AUTO_INCREMENT,
	Citizenship          VARCHAR(50) NULL,
	Field_Name           VARCHAR(50) NULL,
	Institution_Type     VARCHAR(100) NULL,
	Race_and_Ethnicity   VARCHAR(50) NULL,
	Gender               VARCHAR(20) NULL,
	Academic_Year        YEAR NULL,
	Degrees_Awarded      INTEGER NULL,
	CONSTRAINT SXPKMaster_s_Degrees_Awarded PRIMARY KEY (Degrees_Awarded_ID)
);