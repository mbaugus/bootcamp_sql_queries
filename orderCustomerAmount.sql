select name, date, [order].amount
from [customer]
	join [order]
		on [customer].Id = [order].CustomerId
			order by [order].Amount DESC