select * from emp

create procedure GetEmpNamebyEmpno(@empno int)
as
begin
declare @name varchar(10)
select @name=ename from emp where empno=@empno
print @name
end

exec GetEmpNamebyEmpno 7521