/*List the Field,Year,total number of science and engineering graduate students enrolled by field and year.*/

Select Field_Name,GE.Academic_Year,SUM(Graduate_Enrollment)
From Graduate_Enrollment GE, Field_Of_Study F
Where GE.Field_ID=F.Field_ID
Group by Field_Name,GE.Academic_Year;

/*List the growth/drop rate of international graduate enrollment in US Universities in Computer Science field from 2016 to 2017.*/

Select ((International_Graduate_Enrollment_2017-International_Graduate_Enrollment_2016)/International_Graduate_Enrollment_2016)*100 
From 
(Select SUM(International_Graduate_Enrollment) International_Graduate_Enrollment_2016 
From International_Graduate_Enrollment IG, Field_Of_Study F 
Where IG.Field_ID=F.Field_ID and Field_Name='Computer sciences' and IG.Academic_Year=2016) E2016, 
(Select SUM(International_Graduate_Enrollment) International_Graduate_Enrollment_2017 
From International_Graduate_Enrollment IG, Field_Of_Study F 
Where IG.Field_ID=F.Field_ID and Field_Name='Computer sciences' and IG.Academic_Year=2017) E2017;

/*List the top 3 fields in which most number of graduate students enrolled in the most recent year.*/

Select Field_Name, max(Graduate_Enrollment)
From Graduate_Enrollment GE, Field_Of_Study F
Where GE.Field_ID=F.Field_ID and GE.Academic_Year = (Select max(Academic_Year) from Graduate_Enrollment)
Group by Field_Name 
Order by max(Graduate_Enrollment) desc LIMIT 3;

/*List the total number of master’s degrees granted to Computer Science students from Doctoral/ research universities.*/

Select F.Field_Name,Institution_Type,SUM(Degrees_Awarded)
From
Master_s_Degrees_Awarded DA, Field_Of_Study F, Institution_Type IT
Where DA.Field_ID=F.Field_ID and IT.Institution_Type_ID=DA.Institution_Type_ID
and F.Field_Name='Computer sciences' and Institution_Type='Doctoral/ research universities'
Group by F.Field_Name,Institution_Type;

/*List the Field, top 2 support mechanisms and the maximum number the students got financial support by field and year.*/

Select Field_Name, Support_Mechanism, Academic_Year, SUM(Students_On_Financial_Aid)
From Graduate_Financial_Support FS, Field_Of_Study F, Support_Mechanism SM
Where FS.Field_ID=F.Field_ID and FS.Support_Mechanism_ID=SM.Support_Mechanism_ID and Support_Mechanism<>"All mechanisms"
Group by Field_Name, Support_Mechanism, Academic_Year
Order by SUM(Students_On_Financial_Aid) desc LIMIT 2;

/*List the total number of students enrolled in either Computer Science or Engineering from India,UK by year.*/

Select Academic_Year,Field_Name, Place_of_origin,SUM(International_Graduate_Enrollment)
From International_Graduate_Enrollment IG, Field_Of_Study F
Where IG.Field_ID=F.Field_ID and Field_Name in ('Computer sciences','Engineering') 
and Place_of_origin in ('India','United Kingdom')
Group by Academic_Year,Field_Name, Place_of_origin;

/*List the total number of master’s degrees granted to American Indian or Alaska Native students in Computer Science by year.*/

Select Field_Name, Race_and_Ethnicity,Academic_Year, SUM(Degrees_Awarded)
From Master_s_Degrees_Awarded DA, Field_Of_Study F, Race_and_Ethnicity RE
Where DA.Field_ID=F.Field_ID and RE.Race_and_Ethnicity_ID=DA.Race_and_Ethnicity_ID
and Field_Name='Computer sciences' and Race_and_Ethnicity='American Indian or Alaska Native'
Group by Field_Name, Race_and_Ethnicity, Academic_Year;

/*List the total number of degrees earned by students in Computer Science, Engineering from India by Gender.*/

Select Field_Name,Gender,SUM(Degrees_Awarded)
From Master_s_Degrees_Awarded DA, Field_Of_Study F
Where DA.Field_ID=F.Field_ID and Field_Name in ('Computer sciences','Engineering') and Gender<>"Both sexes"
Group by Field_Name,Gender;


