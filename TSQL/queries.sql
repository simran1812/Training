create function GetAllEmpDetailsByDeptno(@deptno int)
RETURNS TABLE
AS
RETURN
(
	select * from emp where DEPTNO=@deptno
);

select * from GetAllEmpDetailsByDeptno(30)