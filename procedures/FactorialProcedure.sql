alter procedure Factorial
	@nbr int = 0
AS
BEGIN
	DECLARE @count int = 1, @result bigint = 1
	WHILE @count <= @nbr
	BEGIN
	    DECLARE @oldresult bigint = @result;
		set @result *= @count;
		PRINT CONCAT(@oldresult, ' * ', @count, ' is ', @result)
		set @count += 1;	
	END
END
go
exec Factorial @nbr = 15