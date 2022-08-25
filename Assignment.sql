create or alter  function highamt()
returns @BankDetails table  
(AccNo int,Cname varchar(10), Aadhar bigint ,OpenedDate date, LastTransactionDate date) as
begin  
    insert into @BankDetails
	select a.AccNo,a.Cname,a.Aadhar,b.OpenDate,b.LastTransactionDate from AccInfo a inner join BankDetails b 
	on a.AccNo=B.AccNo where a.Amt>200000;
return  
end; 

select * from highamt()


create or alter  function show(@cat varchar(10))
returns @MovieInfo table  
(MovieName varchar(19),Category varchar(20)) as
begin  
    insert into @MovieInfo
	select MovieName,Category from MovieInfo where Category=@cat;
	return;
end;

select * from show('horror')
