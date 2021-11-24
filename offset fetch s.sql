/*
SELECT *
  FROM person.person
 ORDER BY lastName DESC
OFFSET 10 ROWS
 */
 SELECT BusinessEntityID,personType,firstname
  FROM Person.person

 ORDER BY personType DESC
OFFSET 20 ROWS
 FETCH NEXT 5 ROWS ONLY