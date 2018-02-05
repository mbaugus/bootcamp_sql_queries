alter procedure IncrementNumber3
	@n int = null
AS
BEGIN
	DECLARE @counter int = @n;
	DECLARE @i int = 3

	WHILE(@i > 0)
	BEGIN
		PRINT CONCAT('Your number is ', @n);
		SET @n = @n + 1;
		--SET @i = @i - 1;
	END
	/*
	DECLARE @i int = @n;
	SET @i = @i + 1;
	PRINT CONCAT('Your number is ', @n, char(10), @n, ' + 1 = ', @i)
	SET @i = @i + 1;
	PRINT CONCAT(@i, ' + 1 = ', @i)
	SET @i = @i + 1;
	@i, ' + 1 = ', @i + 1, 
	char(10),
	 @n, ' + 1 = ', @i + 1)*/
END
go
exec IncrementNumber3 @n = 6