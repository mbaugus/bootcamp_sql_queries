--CREATE DATABASE sproc;
alter procedure HelloWorldSproc
	@Name nvarchar(15) = 'everyone',
	@Nbr int = 0
AS
BEGIN
	PRINT 'Hello, world to ' + @Name +
	 ' whose favorite number is ' + CAST(@nbr as varchar);

	 PRINT 'Your fav number x 10 is ' + CAST(@nbr * 10 as varchar);
END
go
EXEC HelloWorldSproc @Name='Mike', @Nbr = 8