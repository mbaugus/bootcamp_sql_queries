select c.id, Name as 'Customer Name', Date, Amount
from [customer] c
left join [order] o
	on o.CustomerId = c.id
order by c.Name ASC, o.Amount DESC