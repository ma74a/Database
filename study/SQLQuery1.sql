use firstDatabase
-- DDL
create table EMP
(
  eid int Primary Key,
  ename varchar(20) not null,
  eage int,
  eaddress varchar(20) default 'cairo',
  hiredate date default getdate(),
  Dnum int
)

-- for adding new column
alter table EMP add sal int

-- for editing a column
alter table EMP alter column sal bigint

-- for deleting a column
alter table EMP drop column sal

-- for deleting a table
--drop table EMP
---------------------------------
-- DML
-- insert update delete --> data

-- to insert data
insert into EMP
values(1,'ali', 22, 'cairo', null,2)
insert into EMP
values(14, 'amr', 21, 'mansoura' ,null, 4)
insert into EMP(ename, eid)
values('ahmed', 8)

-- insert more than one column at a time
-- insert constructor
insert into EMP(ename, eid)
values('ali', 12), ('mahmoud', 4)

-- to update data
update EMP
	-- it will affect on all columns
	set ename = 'omar'
-- so we use that
where eid=1

-- another one
update EMP
	set eage += 1

-- set column to null
update EMP
	set eage = 24

update EMP
	set eage = 28
where eid = 1
-- to delete a table without deleting the table from database
--delete from EMP

-- to delete row
delete from EMP
where eid = 1
---------------
--DQL
-- show all table
select * from EMP

-- show spcific columns
select eid, ename from EMP

--show spcific columns and rows
select eid, ename from EMP
where eage >= 3

-- to reoder shwoing data
select * from EMP
order by eage

-- to show two columns with a spific way and give it an alias
select ename + ' ' + eaddress as nameaddress
from EMP

-- to show table and not showing in a column values that = null
select *
from EMP
where ename is not null and eaddress is not null

-- to show a column
select eid from EMP

-- to show uniqu values in a column [distinct also ordering]
select distinct ename from EMP

-- to show and search in rows [in() like array]                       --
select * from EMP													  --
where ename in('mahmoud', 'omar')									  --
-- that would work												      -- equal eachother
select * from EMP													  --
where ename = 'ahmed' or ename = 'mahmoud' or ename = 'ali'			  --

-- not error but logical error[not showing anything]
select * from EMP
where ename = 'ahmed' and ename = 'mahmoud'

-- person whose name is mahmoud and live in cairo
select * from EMP
where ename = 'mahmoud' and eaddress = 'cairo'

-- show range 
select * from EMP
where eage >= 20 and eage <= 27
--equal
select * from EMP
where eage between 20 and 27