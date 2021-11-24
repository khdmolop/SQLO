SELECT ProductName
  FROM Product
 WHERE Id IN (SELECT ProductId
                FROM OrderItem
               WHERE Quantity > 100)


SELECT FirstName, LastName,
       OrderCount = (SELECT COUNT(O.id)
                       FROM [Order] O
                      WHERE O.CustomerId = C.Id)
  FROM Customer C


SELECT [Name]
FROM Production.Product
WHERE ListPrice =
    (SELECT ListPrice
     FROM Production.Product
     WHERE [Name] = 'Chainring Bolts' );
GO


SELECT [Name]
FROM Sales.Store
WHERE BusinessEntityID NOT IN
    (SELECT CustomerID
     FROM Sales.Customer
     WHERE TerritoryID = 5);


	 
	 
 select lastname,salary,
from employees 
where salary >(select salary from employees
               where ladtname ='abel');


	-----------------------------------------

	select lastname ,job_id,salary
	from employees 
	where jod_id = (select job_id 
	                from employees 
					where lastname = 'taylor')
and salary > (select salary
              from employees 
			  where lastname ='taylor');



  -----------------------------

update employees 
set salary	= salary * 0.35
where age in (select age from employees 
where age >=27);



-------------------------------------

select emp_name,dept,salary from employees
where salary < (select avg (salary) from employees);


-----------------------------------


delete from employees
where age in (select age from employees 
where age < = 32);


-----------------------------------------


select id,Name,[description]
from tblProducts
where id not in(select ProductID from tblProductsSales)

-------------------------------------------



select id,Name,[description]
from tblProducts
where id not in(select distinct ProductID 
from tblProductsSales)

