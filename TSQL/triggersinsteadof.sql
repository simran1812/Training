CREATE TRIGGER trgInsteadOfDelete  ON EMP
INSTEAD OF DELETE
AS
    DECLARE @empno int;
	DECLARE @job VARCHAR(100);

	SELECT @job=d.job FROM DELETED d;
	SELECT @empno=d.empno FROM DELETED d;

	BEGIN
		IF(@job='PRESIDENT')
		BEGIN
		RAISERROR('Cannot delete this person who is VVip',16,2);
		END
		ELSE
		BEGIN
			DELETE FROM EMP WHERE EMPNO=@empno;
			PRINT 'Record Deleted -- Instead of Delete Trigger'
		END
	END
GO

SELECT * FROM EMP;
DELETE FROM EMP WHERE EMPNO=7369;
DELETE FROM EMP WHERE EMPNO=7839;
