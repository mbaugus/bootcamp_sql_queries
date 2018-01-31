--select * from student

-- fix last name of Cory Xe to Xey
--UPDATE student set
--	LastName = 'Xey'
--	WHERE id = 3

-- change bills major to aarons
--UPDATE student set
--	MajorId = 3
--	WHERE id = 2

-- add .1 to each student gpa
--UPDATE student set
--	GPA = GPA + .1

-- set devin majorid to null ( undecided )
--update student set
--	MajorId = NULL
--	WHERE Id=4

-- set devin majorid to 7, but wont allow due to foreign key linked to class ids
--update student set
--	MajorId = 7
--	WHERE Id=4

--select * from student

select * from class

update class set
	Description += ' 301'
WHERE
	Id = 7 or Id = 8
	-- same thing shorter syntax ** id in (7,8)

select * from class	