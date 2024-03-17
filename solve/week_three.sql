Problem (1) -- African Cities

SELECT CITY.NAME
FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE AND CONTINENT = 'Africa'

#########################

Problem (2) -- Employee Salaries

SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10
ORDER BY EMPLOYEE_ID ASC

#########################

Problem (3) -- Population Census

SELECT SUM(CITY.POPULATION)
FROM CITY, COUNTRY
WHERE COUNTRY.CODE = CITY.COUNTRYCODE
AND CONTINENT = 'Asia'

#########################

Problem (4) -- 627. Swap Salary

UPDATE Salary
    SET sex = CASE
    WHEN sex = 'm' THEN 'f'
    ELSE 'm'
    END

#########################

Problem (5) -- Placements

SELECT S.NAME 
FROM STUDENTS S,FRIENDS F,PACKAGES P1,PACKAGES P2
WHERE P2.SALARY>P1.SALARY 
AND P1.ID=F.ID 
AND P2.ID=F.FRIEND_ID
AND S.ID=P1.ID
ORDER BY P2.SALARY;
