load data local infile 'Data/Master_s_Degrees_Awarded.csv'
into table Staging_Master_s_Degrees_Awarded
fields terminated by ','
(Citizenship, Field_Name, Institution_Type, Race_and_Ethnicity, Gender, Academic_Year, Degrees_Awarded)
set Degrees_Awarded_ID = NULL;