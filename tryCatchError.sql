
create procedure calc2
@num1 int,
@num2 int,
@result int out
as
begin
begin try
  set @result = @num1/@num2
end try

begin catch
select
  ERROR_LINE() as errorline,
  error_message() as errormessage,
  error_procedure() as errorprocedure,
  error_severity() as errorseverity
end catch
end

declare @x int 
execute calc2 10,0,@x out
print @x