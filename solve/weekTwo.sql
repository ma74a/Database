Problem (1) Weather Observation Station 1

select CITY, STATE from STATION;

--------------------------------

Problem (2) Weather Observation Station 3

select distinct CITY from STATION
where ID % 2 = 0;

--------------------------------

Problem (3) Revising Aggregations - The Sum Function

select sum(population) from city
where district = 'California'

--------------------------------

Problem (4) Revising Aggregations - The Count Function

select count(id) from city
where population > 100000

--------------------------------

Problem (5) Type of Triangle

SELECT 
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND A = C AND B = C THEN 'Equilateral'
        WHEN A <> B AND A <> C AND B <> C THEN 'Scalene'
        ELSE 'Isosceles'
    END
FROM TRIANGLES;