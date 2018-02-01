use master
go
drop database if exists Corporate
go
create database Corporate
go
use Corporate
go
drop table if exists Employee
drop table if exists Manager
drop table if exists Department
go
create table Department (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null,
	CostCenter int not null check(CostCenter >= 100000 and CostCenter <= 999999),
	Active bit not null default 1
)
go
create table Manager (
	Id int primary key identity(1,1),
	FirstName nvarchar(30) not null,
	LastName nvarchar(30) not null,
	DepartmentId int not null foreign key references Department(Id)
)
go
create table Employee (
	Id int primary key identity(1,1),
	FirstName nvarchar(30) not null,
	LastName nvarchar(30) not null,
	Birthday datetime not null,
	Job nvarchar(30),
	ManagerId int not null foreign key references Manager(Id)
)
go
insert into Department (Name, CostCenter) values ('IT', 100000)
insert into Department (Name, CostCenter) values ('HR', 200000)
insert into Department (Name, CostCenter) values ('AR', 300000)
go
insert into Manager (FirstName, LastName, DepartmentId) values ('G','Doud',1)
insert into Manager (FirstName, LastName, DepartmentId) values ('C','Doud',3)
insert into Manager (FirstName, LastName, DepartmentId) values ('M','Doud',2)
go
insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	values ('Graham', 'Kraker', '1990-01-31', 'Food Service', 2)
insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	values ('Noah', 'Phence', '1990-11-30', 'Grounds Maintenance', 3)
insert into Employee (FirstName, LastName, Birthday, Job, ManagerId)
	values ('Art', 'Dekko', '1990-01-31', 'Building Maintnance', 1)
go
Select CONCAT(e.FirstName, ' ', e.LastName) as 'Employee',
		e.Birthday,
		e.Job,
		CONCAT(m.FirstName, ' ', m.LastName) as 'Manager',
		d.Name as 'Department',
		d.CostCenter
	from Employee e
	join Manager m
		on m.id = e.ManagerId
	join Department d
		on d.Id = m.DepartmentId