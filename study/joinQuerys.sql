-- Cartesian Product
use Company_SD
select Fname, Dname from Employee, Departments
--equal cross join
select Fname, Dname from Employee cross join Departments

--inner join
select Fname, Dname from Employee, Departments
where Departments.Dnum = Employee.Dno
--equal 
select Fname, Dname from Employee inner join Departments
on Departments.Dnum = Employee.Dno

-- inner join [name of student and department information]
select Fname, Departments.* from Employee, Departments
where Dnum = Dno

--left outer join
select Fname, Dname from Employee left outer join Departments
on Departments.Dnum = Employee.Dno

--right outer join
select Fname, Dname from Employee right outer join Departments
on Departments.Dnum = Employee.Dno

--full outer join
select Fname, Dname from Employee full outer join Departments
on Departments.Dnum = Employee.Dno

--self join [X for child, Y for parent]
select X.Fname +' ' + X.Lname, Y.Fname +' ' + Y.Lname
from Employee X, Employee Y
where Y.SSN = X.Superssn --[Y has Pk, X has FK]

--join multiples table
select Fname, hour, Pname
from Employee, Works_for, Project
where Employee.SSN = Works_for.ESSn and Project.Pnumber = Works_for.Pno
--equal
select Fname, hour, Pname
from Employee inner join Works_for 
		on Employee.SSN = Works_for.ESSn
		inner join Project 
		on Project.Pnumber = Works_for.Pno

-- show the emps salary who works in DP1
select Salary
from Employee, Departments
where Employee.Dno = Departments.Dnum and Dname = 'DP1'
--join with DML
update Employee
	set Salary += 100
from Employee, Works_for, Project
where Employee.SSN = Works_for.ESSn and Works_for.Pno = Project.Pnumber
and City = 'Cairo_Alex Road'

