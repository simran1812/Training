CREATE TRIGGER trgInsteadOfUpdate  ON EMP
INSTEAD OF UPDATE
AS
    DECLARE @empno INT;
	DECLARE @sal INT;
	DECLARE @psal INT;

	SELECT @sal=d.sal FROM DELETED d;
	SELECT @psal=i.sal FROM INSERTED i;
	SELECT @empno=d.empno FROM INSERTED d;

	BEGIN
		IF(@psal >= @sal)
		BEGIN
		UPDATE EMP SET SAL=@psal WHERE EMPNO=@empno;
		PRINT 'Record Updated -- Instead of Update Trigger'
		END
		ELSE
		BEGIN
			RAISERROR('Cannot Update because Proposed salary is less than Current salary',16,2)
		END
	END
GO

SELECT * FROM EMP;

UPDATE EMP SET SAL=2700 WHERE EMPNO=7521


--ASSIGNMENT: write a trigger not to allow transaction (update) emp on wednesday

CREATE TRIGGER trgInstedOfUpdateNotWed ON EMP
INSTEAD OF UPDATE
AS
declare @empno int;
declare @job varchar(100);
declare @sal int;
declare @comm int;
declare @psal int;
declare @cday varchar(10);


select @empno=d.empno from deleted d;
select @job=d.job from deleted d;
select @sal=d.sal from deleted d;
select @comm=d.comm from deleted d;


select @empno=i.empno from inserted i;
select @job=i.job from inserted i;
select @psal=i.sal from inserted i;
select @comm=i.comm from inserted i;
set @cday= DATENAME(WEEKDAY,GETDATE());




begin
if(@cday='Wednesday')
begin
raiserror ('Update cannot be done today!!',16,1);
end
else
begin
update emp set sal = @psal where empno=@empno
update emp set job = @job where empno=@empno
update emp set comm = @comm where empno=@empno
print 'record updated --instead of update trigger'
end
end
go