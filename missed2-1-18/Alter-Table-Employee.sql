alter table Employee
	add Cellphone nvarchar(12)
go
update employee set
	cellphone = '513-555-1212'
go
alter table Employee
	alter column Cellphone nvarchar(12) not null
go
alter table Employee
	drop column Cellphone
go
select * from employee