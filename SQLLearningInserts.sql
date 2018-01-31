select * from student

insert into student values ('Mike', 'Baugus', 2.0, 1000, 1)
insert into student values ('Nate', 'Dog', 2.0, 1100, 1)
insert into student values ('Chris', 'Brown', 2.0, 1200, 3)
insert into student values ('Steve', 'Guy', 2.0, 1300, 4)
insert into student values ('Bob', 'Guy', 2.0, 1500, 2)
insert into student values ('Christina', 'W', 2.0, 1250, 3)
insert into student values ('Michael', 'Guy', 2.0, 1500, 3)
insert into student values ('Jennifer', 'Person', 2.0, 1120, 2)
insert into student values ('Cong', 'Guy', 2.0, 1010, 2)


insert into class (description) values ('Biology 101')
insert into class (description) values ('Psychology 201')
insert into class (description) values ('Physical Education')

select * from student
select * from class
select * from schedule

-- 5 17

--- add a class schedule for student greg doud
insert into schedule (StudentID, ClassID, Grade) values (5, 17, 'C')

--- change grade to A+
update schedule set Grade = 'A+' WHERE classID = 17

--- find anyone with class 17
select FirstName, LastName, Grade from student s
	join schedule sc
		on s.Id = sc.StudentId
	WHERE classID = 17

