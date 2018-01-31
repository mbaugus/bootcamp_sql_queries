select * from student
select * from major
select * from class
select * from schedule

select CONCAT(s.FirstName,' ',s.LastName) as 'Name', c.Description as 'Class Name'
	from Student s
		join schedule sc
			on s.Id = sc.StudentId
		join class c
			on c.Id = sc.ClassId
		WHERE s.FirstName = 'Aaron' and s.LastName = 'Zell'