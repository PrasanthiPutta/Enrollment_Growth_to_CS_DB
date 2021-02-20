CREATE TABLE Field_Of_Study
(
	Field_ID             INTEGER NOT NULL AUTO_INCREMENT,
	Field_Name           VARCHAR(50) NULL,
	CONSTRAINT XPKField PRIMARY KEY (Field_ID)
);

CREATE TABLE Institution_Type
(
	Institution_Type_ID  INTEGER NOT NULL AUTO_INCREMENT,
	Institution_Type     VARCHAR(100) NULL,
	CONSTRAINT XPKInstitution_Type PRIMARY KEY (Institution_Type_ID)
);

CREATE TABLE Race_and_Ethnicity
(
	Race_and_Ethnicity_ID INTEGER NOT NULL AUTO_INCREMENT,
	Race_and_Ethnicity   VARCHAR(50) NULL,
	CONSTRAINT XPKRace_and_Ethnicity PRIMARY KEY (Race_and_Ethnicity_ID)
);

CREATE TABLE Support_Mechanism
(
	Support_Mechanism_ID INTEGER NOT NULL AUTO_INCREMENT,
	Support_Mechanism    VARCHAR(50) NULL,
	CONSTRAINT XPKSupport_Mechanism PRIMARY KEY (Support_Mechanism_ID)
);

CREATE TABLE Graduate_Enrollment
(
	Graduate_Enrollment_ID INTEGER NOT NULL AUTO_INCREMENT,
	Field_ID             INTEGER NULL,
	Academic_Year        YEAR NULL,
	Citizenship          VARCHAR(50) NULL,
	Graduate_Enrollment  INTEGER NULL,
	CONSTRAINT XPKGraduate_Enrollment PRIMARY KEY (Graduate_Enrollment_ID)
);


CREATE TABLE Graduate_Financial_Support
(
	Financial_Support_ID INTEGER NOT NULL AUTO_INCREMENT,
	Support_Mechanism_ID INTEGER NULL,
	Field_ID             INTEGER NULL,
	Academic_Year        YEAR NULL,
	Students_On_Financial_Aid INTEGER NULL,
	Percentage_Of_Students_On_Financial_Aid INTEGER NULL,
	CONSTRAINT XPKGraduate_Financial_Support PRIMARY KEY (Financial_Support_ID)
);


CREATE TABLE International_Graduate_Enrollment
(
	International_Graduate_Enrollment_ID INTEGER NOT NULL AUTO_INCREMENT,
	Field_ID             INTEGER NULL,
	Place_of_origin      VARCHAR(50) NULL,
	Academic_Year        YEAR NULL,
	International_Graduate_Enrollment INTEGER NULL,
	CONSTRAINT XPKInternational_Graduate_Enrollment PRIMARY KEY (International_Graduate_Enrollment_ID)
);

CREATE TABLE Master_s_Degrees_Awarded
(
	Degrees_Awarded_ID   INTEGER NOT NULL AUTO_INCREMENT,
	Citizenship          VARCHAR(50) NULL,
	Field_ID             INTEGER NULL,
	Institution_Type_ID  INTEGER NULL,
	Race_and_Ethnicity_ID INTEGER NULL,
	Gender               VARCHAR(20) NULL,
	Academic_Year        YEAR NULL,
	Degrees_Awarded      INTEGER NULL,
	CONSTRAINT XPKMaster_s_Degrees_Awarded PRIMARY KEY (Degrees_Awarded_ID)
);

ALTER TABLE Graduate_Enrollment
ADD CONSTRAINT R_3 FOREIGN KEY (Field_ID) REFERENCES Field_Of_Study (Field_ID);

ALTER TABLE Graduate_Financial_Support
ADD CONSTRAINT R_4 FOREIGN KEY (Field_ID) REFERENCES Field_Of_Study (Field_ID);

ALTER TABLE Graduate_Financial_Support
ADD CONSTRAINT R_6 FOREIGN KEY (Support_Mechanism_ID) REFERENCES Support_Mechanism (Support_Mechanism_ID);

ALTER TABLE International_Graduate_Enrollment
ADD CONSTRAINT R_2 FOREIGN KEY (Field_ID) REFERENCES Field_Of_Study (Field_ID);

ALTER TABLE Master_s_Degrees_Awarded
ADD CONSTRAINT R_5 FOREIGN KEY (Field_ID) REFERENCES Field_Of_Study (Field_ID);

ALTER TABLE Master_s_Degrees_Awarded
ADD CONSTRAINT R_8 FOREIGN KEY (Institution_Type_ID) REFERENCES Institution_Type (Institution_Type_ID);

ALTER TABLE Master_s_Degrees_Awarded
ADD CONSTRAINT R_9 FOREIGN KEY (Race_and_Ethnicity_ID) REFERENCES Race_and_Ethnicity (Race_and_Ethnicity_ID);
