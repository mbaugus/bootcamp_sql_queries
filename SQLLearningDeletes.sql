delete from schedule
	WHERE ClassId in (
		select id from class
		WHERE Description = 'English 101'
	)

select * from major

delete from major where id = 3



--select * from schedule

--select * from class