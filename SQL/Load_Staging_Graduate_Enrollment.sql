load data local infile 'Data/Graduate_Enrollment.csv'
into table Staging_Graduate_Enrollment
fields terminated by ','
(Field_Name, Academic_Year, Citizenship, Graduate_Enrollment)
set Graduate_Enrollment_ID = NULL;	