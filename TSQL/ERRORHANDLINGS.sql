use etgtraining


begin try
	insert into emp(empno) values (2222)
end try
begin catch
	--print @@error
	print error_number()
	print error_message()
end catch


begin try
	insert into emp(empno) values (2222)
end try
begin catch
	--print @@error
	print error_number();
	print error_message();

end catch


begin try
	insert into emp(empno) values (2222)
end try
begin catch
	--print @@error
	--print error_number();
	--print error_message();
	throw

end catch

begin try
	insert into emp(empno) values (2222)
end try
begin catch
	--print @@error
	--print error_number();
	--print error_message();
	throw 51000,'Sorry could not add record since few data were missing	',1	
end catch

declare @result int;
begin try 
set @result=1/0;
print @result;
end try
begin catch
print error_message() + ' ' + cast(error_number() as varchar)
end catch

select* from master.dbo.sysmessages where error=2627 and msglangid=1033

begin try
	print 'a'
	Begin try 
		print 'b'
	end try
	begin catch
		print 'c'
	end catch
end try
begin catch
	print 'd'
end catch