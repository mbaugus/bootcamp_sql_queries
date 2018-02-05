alter procedure PrintDoubleNumber
	@Nbr int = 0
AS
BEGIN
	DECLARE @doubled int;
	SELECT @doubled = @Nbr * 2;
	PRINT 'Your number is ' + CAST(@Nbr as varchar);
	PRINT 'Doubled, your number is now ' +
	 CAST(@doubled as varchar);
END
go
EXEC PrintDoubleNumber @Nbr=10