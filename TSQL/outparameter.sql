select * from emp

-- using out parameter 
create procedure GetMaxSalaryWithinDept
@deptno int,
@sal int out
as
begin
select @sal=MAX(sal) from emp where DEPTNO=@deptno
end 

select * from emp where deptno = 30

declare @salm int

exec GetMaxSalaryWithinDept 30, @salm out
select @salm