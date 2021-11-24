
create procedure outparameter1
@id int,
@name nvarchar,
@salary int,
@Recount int out
as
begin
   insert into tbl1(_id,_name,salary)
       values(@id,@name,@salary)
	select @Recount = count(*) from tbl1
end


declare  @x int
execute outparameter1 1200 ,'khaled' ,5555,@x out
select @x

-------------------------------------

create procedure outparameter4
@id int,
@name nvarchar(50),
@salary int,
@RecCount varchar(50) out
as
begin
declare @count int
insert into tbl1(_id,_name,salary)
            values(@id,@name,@salary)
		select	@count = count(*)from tbl1
		select @RecCount ='the equal record  '+CONVERT(nvarchar(50), @count)

end
*/
declare @x varchar(50)
execute outparameter4 6667,'hallg',7501,@x out
select @x
----------------------------------
