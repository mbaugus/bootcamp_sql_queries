select * from student
select * from class
select * from major
select * from schedule

ALTER TABLE student
	ADD phone varchar(12) 
ALTER TABLE student
	DROP COLUMN phone

alter procedure GetAllStudents
 @GPA decimal(4,1) = 0.0, @SAT int = 0, @LastName varchar(100) = ''
AS
BEGIN
	select Id, CONCAT(FirstName, ' ', LastName) as 'Name', GPA, SAT from student
	  WHERE @LastName != '' AND LastName = @LastName and GPA >= @GPA and SAT >= @SAT
	  order by LastName

END
go
exec GetAllStudents @SAT=2000