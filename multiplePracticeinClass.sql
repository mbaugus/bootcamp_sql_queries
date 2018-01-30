select * from [Customer]

select * from [Customer]
	WHERE CreditLimit >= 200000 and CreditLimit <= 500000

select * from [Customer]
	WHERE isCorpAcct = 1
		order by [Customer].City

select * from [Customer]
	join [order]
		on [customer].Id = [order].CustomerId
	WHERE [customer].State = 'OH'


select c.state, sum(o.amount) as 'State totals'	
	from [Customer] c
		join [order] o
			on c.Id = o.CustomerId
	group by c.state
	order by sum(o.amount) DESC