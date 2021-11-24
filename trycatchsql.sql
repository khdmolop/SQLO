USE [Khaled]
GO
/****** Object:  StoredProcedure [dbo].[calc]    Script Date: 09/11/2021 21:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[calc]
@num1 int,
@num2 int,
@result int out
as
begin
set @result  = @num1/@num2
end

declare @x int
execute calc 10,2, @x out
print @x

--------------------------------

Alter procedure calc1
@num1 int,
@num2 int,
@result int out
as
begin
begin try
   set @result =@num1/@num2
end try

begin catch
select'error'
end catch
end


declare @x int
execute calc1 10,0,@x out
print @x

-----------------------------------------------
create procedure calc3
@num1 int,
@num2 int,
@result int out
as
begin
begin try
  set @result =@num1/@num2
end try

begin catch
ERROR_LINE() as errorline,
ERROR_MESSAGE() as Errormessage,
ERROR_PROCEDURE() as ERRORPROCEDURE,
ERROR_SEVERITY() 


end catch
end