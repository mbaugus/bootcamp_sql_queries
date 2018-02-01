alter table Department
	add NbrOfPeople int check(NbrOfPeople>=0)

update Department set NbrOfPeople = 0

alter table Department
	alter column NbrOfPeople int not null 

alter table department
	drop constraint CK__Departmen__CostC__239E4DCF

alter table department
	drop column CostCenter

select * from department