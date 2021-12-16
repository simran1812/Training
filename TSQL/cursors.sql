use etgtraining

declare empcursor cursor for
select empno, ename, sal from emp order by sal desc
declare @name varchar(10), @sal int, @empno int
open empcursor
print 'Soon after opening the cursor'
print @@fetch_status
fetch next from empcursor into @empno, @name, @sal
while @@fetch_status=0
begin
print 'Inside the While loop'
print @@fetch_status
print @name+' is earning '+ cast(@sal as varchar)
fetch next from empcursor into @empno,@name,@sal
end
print 'Soon after coming out of while loop'
print @@fetch_status
close empcursor
deallocate empcursor
go


