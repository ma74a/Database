use Company_SD

-- do not show which has null
select Fname from Employee
where Fname is not null

-- replace which has null with another value
select isnull(Fname, 'gedr') from Employee

-- concat function
select CONCAT(Fname, ' ', Lname, ' ', Address) from Employee

-- show all colums about 'Ahmed'
select * from Employee
where Fname = 'Ahmed'

-- gimme names which starts with letter 'a'
select * from Employee
where Fname like 'a%'

-- gimme names which ends with letter 'a'
select * from Employee
where Fname like '%a'

-- '%[%] that means string ends with %
-- '%[_]%' that means string has _ in it

-- show this columns ordered by first one
select Fname, Lname, SSN from Employee
order by 1

-- order by Salary but if two have same salary will order by SSN
select Fname, Lname, Salary from Employee
order by Salary , SSN