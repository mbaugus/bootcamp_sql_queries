create view ClassesForStudent as
select CONCAT(s.FirstName, ' ' , s.LastName) as 'Name',
	s.GPA, s.SAT,
	m.Description as 'Major',
	c.Description as 'Class'
from student s
join major m
	on m.id = s.MajorId
join schedule sc
	on sc.StudentId = s.Id
join class c 
	on c.Id = sc.ClassId
--order by s.LastName, c.Description

select * from ClassesForStudent where Name = 'Aaron Zell' order by class desc