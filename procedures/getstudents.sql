select * from student
select * from class
select * from major
select * from schedule

create procedure ReplaceScheduledClass
	@OldClassName varchar(50) = null,  @NewClassName varchar(50) = null
AS
BEGIN
	IF @OldClassName = null or @NewClassName = null
	BEGIN
		PRINT 'Old class or new class was not supplied and is required'
		RETURN
	END
	--add new class
	INSERT into Class (Description) VALUES (@NewClassName);
	--
	UPDATE class set SELECT * from schedule s
		join Class c on c.Id = s.ClassId
		where c.Description = @OldClassName

END
go
exec ReplaceScheduledClass @OldClassName='Math 103', @NewClassName='Math 106'
/*
declare @StudentID int;
select @StudentID = id from student where lastname='Zell'
print @StudentID
*/
/*
ALTER TABLE st*udent
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

select COUNT(*), max(gpa), min(sat) from student


declare @name nvarchar(10) = N'Hello';
print @name;
*/