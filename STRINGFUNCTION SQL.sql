/*
select * from HumanResources .employee
select * from HumanResources .EmployeeDepartmentHistory
select * from person.EmailAddress
*/
select SUBSTRING('khaled',5,3)
SELECT STUFF('khaleddarwich',4,7,'123')
SELECT STUFF('khaleddarwich',3,2,'           ')
SELECT STUFF('khaleddarwich',3,2,'-')
select CHARINDEX('a','khaled',2)
select PATINDEX('%l%','khaled')

select RIGHT('khaled',2) as[ Right], LEFT('khaled',2) as 'left'

select len('khaledDarwich') as len


select len('khaled   Darwich') as len

select RTRIM('  khaled     ') as [RTrim] , LTRIM('      khaled     ') as 'LTRIM'

select UPPER('khaled') as [upper], LOWER('KHALED') as [lower]

SELECT CAST(123 AS nvarchar(15)	) AS INT2STRING

SELECT CAST('AWAY' AS nvarchar(5))  as 'tom thanks'

SELECT GETDATE() AS RAWDATE

SELECT GETDATE() AS RAWDATE,
CONVERT(nvarchar(25),GETDATE(),100) AS DATE100,
 CONVERT(nvarchar(25),GETDATE(),1) AS DATE1

 ----------------------------------



 create procedure khaled
As
BEGIN
select * from Person.person
END
GO

