create function addtwo(@num1 int,@num2 int)
returns int
as
begin
return @num1+@num2
end


--creating function
create function addtwo(@num1 int,@num2 int)
returns int
begin
return @num1+@num2
end
--calling function
select dbo.addtwo(1,2)

