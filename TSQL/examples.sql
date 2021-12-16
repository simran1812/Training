Create procedure SayHello
as
begin
print 'Hello World'
end

exec SayHello

Create procedure SayHellobyName(@name varchar(50))
as
begin
print 'Hello World' + @name
end

exec  SayHellobyName 'Sonata'


alter procedure SayHellobyName(@No int)
as
begin
print 'Hello World ' + cast(@No as varchar)
end

exec SayHellobyName 1245

