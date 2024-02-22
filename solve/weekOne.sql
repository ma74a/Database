Problem (1) -- Select All

select * from CITY;

#########################

Problem (2) -- Select By ID

select * from CITY where ID = 1661;

#########################

Problem (3) -- Revising the Select Query I

select * from CITY
where POPULATION > 100000 and CountryCode = 'USA'

#########################

Problem (4) -- Japanese Cities' Names

select NAME from CITY where COUNTRYCODE = 'JPN';

#########################

Problem (5) -- Higher Than 75 Marks

select Name from STUDENTS
where marks > 75
order by right(Name, 3) , ID asc