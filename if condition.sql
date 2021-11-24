create procedure sumofsalary1
as
begin
   declare @salary float
   select @salary = sum(salary) from tbl1
   if @salary >=10000 ---condition
   begin
      Raiserror('Amount More than 10000',10,1)
	  Raiserror('great amount more than' 10000,10,1')
   end 
   else
      Raiserror('Amount less than 10000',10,1)

end

exec sumofsalary
