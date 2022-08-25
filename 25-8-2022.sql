create table EmpCheck(
id int identity,
EmpAction text
);
select * from EmpCheck
go
create trigger tr_emp on EmpInfo for insert as
begin
--declare @id int
--select @EmpId=id from inserted
insert into EmpCheck values('new id inserted')
end


select * from EmpInfo
insert into EmpInfo values(90,'tina','2000-2-23','pune',9876984567,'Manager','2022-8-1');

create trigger tr_emp1 on EmpInfo for delete as
begin
insert into EmpCheck values('id deleted'+CAST(getdate() as varchar))
end

delete EmpInfo where EmpId=90
