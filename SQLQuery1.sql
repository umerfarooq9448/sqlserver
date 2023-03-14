use testdb

-- example of stored procedures
create procedure sp_studentdetails
as
begin
select * from student where id=1
end

exec sp_studentdetails

--creating a view
create view studentview2 as
select * from student



--stored procedures having view
create procedure sp_viewstudent1
as
begin
select * from studentview1
end

exec sp_viewstudent1

--join of table and view and creating a stored procedure

select student.id, studentview2.name from student inner join studentview2 on student.id = studentview2.id

create procedure  sp_viewandtable
as 
begin
select student.id, studentview2.name from student inner join studentview2 on student.id = studentview2.id
end

exec sp_viewandtable

--parameterized stored procedure					
													
create procedure sp_student3 @name varchar(20)		
as													
begin										
select * from student where name=@name
end

exec sp_student3 farooq


--parameterized stored procedure					
													
create procedure sp_student5 @name varchar(20), @age int	
as													
begin										
select * from student where name=@name and age =@age
end

exec sp_student5 farooq,22


