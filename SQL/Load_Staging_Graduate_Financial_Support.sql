load data local infile 'Data/Graduate_Financial_Support.csv'
into table Staging_Graduate_Financial_Support
fields terminated by ','
(Support_Mechanism, Field_Name, Academic_Year, Students_On_Financial_Aid, Percentage_Of_Students_On_Financial_Aid)
set Financial_Support_ID = NULL;