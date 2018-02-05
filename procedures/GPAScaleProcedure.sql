alter procedure GPAScale
	@GPA decimal(4,1) = 0.0
AS
BEGIN
	SELECT * from student
		WHERE GPA >= (@GPA - 0.4) AND GPA <= (@GPA + 0.3)
END
go
exec GPAScale @GPA = 2.0
--select * from student
/*
	insert into student (firstName, LastName, GPA) values ('Hank', 'Smith', 1.5)
	insert into student (firstName, LastName, GPA) values ('Bob', 'Smith', 1.6)
	insert into student (firstName, LastName, GPA) values ('Toby', 'Smith', 1.7)
	insert into student (firstName, LastName, GPA) values ('Robin', 'Smith', 1.8)
	insert into student (firstName, LastName, GPA) values ('Tony', 'Smith', 1.9)
	insert into student (firstName, LastName, GPA) values ('Patrick', 'Smith', 2.0)
	insert into student (firstName, LastName, GPA) values ('Neal', 'Smith', 2.1)
	insert into student (firstName, LastName, GPA) values ('Harry', 'Smith', 2.2)
	insert into student (firstName, LastName, GPA) values ('Trump', 'Smith', 2.3)
	insert into student (firstName, LastName, GPA) values ('Franky', 'Smith', 1.4)
	insert into student (firstName, LastName, GPA) values ('George', 'Smith', 2.4)
	*.