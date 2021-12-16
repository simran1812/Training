create function Sub(@num1 int,@num2 int)
returns int
as
begin
return @num1-@num2
end

--calling function
select [simran.jain].Sub(2,1)


create function GetAllEmpDetailsByDeptNum(@deptno int)
returns table
as
return
(
select * from emp where DEPTNO=@deptno
);

select * from GetAllEmpDetailsByDeptNum(30)

select [simran.jain].Addition(2,1)

[

create function GetAllEmpDetails()
returns table
as
return
(
select * from emp
);

select * from GetAllEmpDetails() 



