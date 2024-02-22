use Company_SD
select * from Employee

-- aggregate functions ignore NULL

-- get the min
select min(salary) from Employee

-- get the max
select max(salary) from Employee

-- get the average
select avg(salary) from Employee

-- get count
select count(Fname) from Employee

-- get the sum
select sum(salary) from Employee

select * from Employee

select min(Salary), Dno
from Employee
GROUP BY  Dno;

select count(SSN), Sex from Employee
group by Sex;

select sum(Salary), Dno from Employee
group by Dno

-- having
select sum(Salary), Dno from Employee
group by Dno
having sum(Salary) >= 3500

---------------------------------------

--subqueries
select * from Employee
where Salary > (select avg(Salary) from Employee)


-- show Departments which it has Employee
select Dname from Departments
where Dnum in (select distinct Dno from Employee 
				where Dno is not null)
-- equal but this is faster and better
select distinct Dname 
from Employee, Departments
where Departments.Dnum = Employee.Dno

-- subqueries + DML
-- update MEN employee salary 
update Employee
set Salary += 1000
where SSN in (select SSN from Employee
				where Sex = 'M')