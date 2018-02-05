declare @nbr int = 1;
while @nbr <= 10
BEGIN
	if @nbr % 2 = 0
	BEGIN
		PRINT @nbr;
	END
	SET @nbr+=1
END