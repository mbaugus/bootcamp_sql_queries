alter procedure PrintSumNumber
	@Nbr1 int = 0, @Nbr2 int = 0, @Monies money = 0.00
AS
BEGIN
	DECLARE @output int;
	SELECT @output = @Nbr1 + @Nbr2
	PRINT CONCAT('Your first number is ',
		@Nbr1, char(10), 'Your second number is ', @Nbr2)

	PRINT CONCAT('Your two numbers added together equals ', @output)
	
	PRINT CONCAT('Divide by zero ', 0 / 1)
	PRINT CONCAT('Money is ', @Monies)
END
go
EXEC PrintSumNumber @Nbr1=10, @Nbr2=100, @Monies=5.21