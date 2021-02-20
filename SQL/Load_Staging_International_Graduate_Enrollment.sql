load data local infile 'Data/International_Graduate_Enrollment.csv'
into table Staging_International_Graduate_Enrollment
fields terminated by ','
(Field_Name, Place_of_origin, Academic_Year, International_Graduate_Enrollment)
set International_Graduate_Enrollment_ID = NULL;