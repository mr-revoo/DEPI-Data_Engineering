-- Concat function : 

--SELECT CONCAT(CustomerID  ,'  :  ', CompanyName) as col from SalesLT.Customer; 

--select CONCAT(SalesOrderNumber , '  ( ' , RevisionNumber , ' )') from SalesLT.SalesOrderHeader ;


-- using str functon to convert into varchar

select SalesOrderNumber +' ('+str(RevisionNumber,1)+')' , cast(OrderDate as date) from SalesLT.SalesOrderHeader ;


UPDATE SalesLT.Customer set EmailAddress = NULL WHERE CustomerID % 7  = 1;


select CustomerID as ID ,isnull(EmailAddress,Phone) as contact from SalesLT.Customer ;
select CustomerID as ID ,COALESCE(EmailAddress,Phone) as contact from SalesLT.Customer ;


select  DISTINCT City,StateProvince from SalesLT.Address order by City , StateProvince  ASC ;
select * from SalesLT group by City;
