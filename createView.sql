-- view that tell us students taking a certian class (input class name) (output all students)
--select * from student
--select * from class
--select * from schedule

create view getStudentsWithClasses as
select CONCAT(s.firstname,' ', s.LastName) as 'Name',
		s.GPA, s.SAT, s.MajorId,
		 s.id,
		  c.id as 'Class ID',
		  c.Description as 'Class'
		   from student s
	join schedule sch
		on s.Id = sch.StudentId
	join class c
		on c.Id = sch.ClassId

select Name, Class from getStudentsWithClasses where Class = 'Math 103'