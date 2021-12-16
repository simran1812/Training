

declare empcursor cursor for
select empno,ename,sal from emp order by sal desc
declare @name varchar(10),@sal int,@empno int
open empcursor
print @@fetch_status
fetch next from empcursor into @empno,@name,@sal
while @@FETCH_STATUS=0
begin
print @@Fetch_status
print @name +' is earning'+cast(@sal as varchar)
fetch next from empcursor into @empno,@name,@sal
end
print @@fetch_status
close empcursor
deallocate empcursor
go

