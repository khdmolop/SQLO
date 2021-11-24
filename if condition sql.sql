
create procedure greatamount1
as
begin
--> >= < <= <>
--and or
declare @salary float
select @salary = sum(salary) from tbl2
if @salary  > 10000
  print'great amount'
else 
  print'bad amount'

end

greatamount1


---------------=--[[[]]]]]]]]]-----


---][[][-----]------

create procedure greatamount2
as
begin
declare @salary float
select @salary = sum(salary) from tbl2
if @salary  > 10000
  print'great amount'
else 
  print'bad amount'

end

greatamount2

------[[[[[[[[[[[[[[]][[[[[[[
---]-]]------]]]-]]]]]]]]]]]


alter procedure greatamount3
as
begin
declare @salary float
declare @count int
select @salary = sum(salary) from tbl2
select @count = count(*) from tbl2
if @salary  > 10000 or @count >= 10
  print'great amount'
else 
  print'bad amount'

end

greatamount3

-------------------------------------




