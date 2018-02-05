use master
go
drop database if exists Corporate
go
create database Corporate
go
use Corporate
go
drop table if exists Employee
drop table if exists Department
go
create table Department (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null,
	CostCenter int not null check(CostCenter >= 100000 and CostCenter <= 999999),
	Active bit not null default 1
)

go
create table Employee (
	Id int primary key identity(1,1),
	FirstName nvarchar(30) not null,
	LastName nvarchar(30) not null,
	Birthday datetime not null,
	Job nvarchar(30),
	ManagerId int foreign key references Employee(Id)
)
go
insert into Department (Name, CostCenter) values ('IT', 100000)
insert into Department (Name, CostCenter) values ('HR', 200000)
insert into Department (Name, CostCenter) values ('AR', 300000)
go
insert into Employee (FirstName, LastName, Birthday, Job)
	values ('Graham', 'Kraker', '1990-01-31', 'Food Service')
insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	values ('Noah', 'Phence', '1990-11-30', 'Grounds Maintenance', 1)
insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	values ('Art', 'Dekko', '1990-01-31', 'Building Maintnance', 1)
go

select * from Employee