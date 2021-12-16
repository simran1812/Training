declare @name varchar(50)
declare @sal varchar(10)
select @sal=sal from emp where EMPNO=7521
select @name=ename from emp where EMPNO=7521
print @name
print @sal


declare @sal int
select @sal=sal*12 from emp where empno=7499
print @sal

