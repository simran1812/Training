select * from emp
create procedure GetAnnualSalbyEmpno(@empno int)
as
begin
declare @salary varchar(10)
select @salary=sal from emp where empno=@empno
print @salary
end

exec GetAnnualSalbyEmpno 7521

select * from emp
create procedure GetJobbyEmpno(@empno int)
as
begin
declare @jobname varchar(10)
select @jobname=job from emp where empno=@empno
print @jobname
end

exec GetJobbyEmpno 7521


select * from emp
create procedure GetJobbyEmpno(@empno int)
as
begin
declare @jobname varchar(10)
select @jobname=job from emp where empno=@empno
print @jobname
end

exec GetJobbyEmpno 7521


create procedure EmpMgr(@no int)
as
begin
declare @name varchar(10)
select @name=ename from emp where mgr=@no
print @name
end

exec EmpMgr 7902


create procedure DeptEmp(@deptno int)
as
begin
declare @name varchar(10)
select @name=ename from emp where DEPTNO=@deptno
print @name
end

exec DeptEmp 10


create procedure GetEmpDetailsbyEmpno(@empno int)
as
begin
select empno,ENAME, job,deptno from emp where empno=@empno
end



exec GetEmpDetailsbyEmpno 7499

select * from dept


insert into dept values(12,'R&D','BNG')

create procedure AddNewDeptdetail(@deptno int, @dname varchar(14),@loc varchar(13))
as 
begin
insert into dept values (@deptno, @dname, @loc)
end

exec AddNewDeptdetail 15,'R&D', 'BNG'

select * from dept


create procedure DelDeptDetails(@deptno int)
as
begin
delete from dept where deptno=@deptno
end
exec DelDeptDetails 80


create procedure DeltheRowByDeptno(@deptno int)
as
begin
delete from Dept where DEPTNO=@deptno
end
exec DeltheRowByDeptno 80

create procedure UpdateSalary(@empno int,@salary int)
as
begin
update emp
set sal = @salary
where empno=@empno
end
exec UpdateSalary 7499,1000

select * from emp











