select * from student
select * from major
select * from class
select * from schedule

-- #1 Create a list of all students and their majors.
select FirstName, LastName, SAT, GPA, [major].Description as 'Major Description'
	from student
	join [major]
		on student.MajorId = major.Id

-- #2 display FirstName, LastName from student taking class
select FirstName, LastName from class c
	join schedule sc on sc.ClassId = c.Id
	join student s on s.id = sc.StudentId
	where c.Description = 'Math 102'

--#3 display all classes for students with a major of Math
select CONCAT(FirstName, ' ', LastName) as 'Student', c.Description as 'Class', m.Description as 'Major'
 from student s
	join major m 
		on s.MajorId = m.Id
	join schedule sch
		on sch.StudentId = s.Id
	join class c
		on c.Id = sch.ClassId
	WHERE m.Description = 'Math'


	