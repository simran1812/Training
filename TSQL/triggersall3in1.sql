SELECT * FROM EMPLOYEE_TEST

CREATE TRIGGER trgAfter ON EMPLOYEE_TEST
FOR INSERT, UPDATE , DELETE
AS
  DECLARE @empid INT;
  DECLARE @empname VARCHAR(100);
  DECLARE @empsal DECIMAL(10,2);
  DECLARE @audit_action VARCHAR(100);
  
  SELECT @empid=d.Emp_ID FROM DELETED d;
  SELECT @empname=d.Emp_Name FROM DELETED d;
  SELECT @empsal=d.Emp_Sal FROM DELETED d;

  SELECT @empid=i.Emp_ID FROM INSERTED i;
  SELECT @empname=i.Emp_Name FROM INSERTED i;
  SELECT @empsal=i.Emp_Sal FROM INSERTED i;

  

  --Condition check and display for operation triggered 
  IF EXISTS( SELECT 0 FROM INSERTED)
  BEGIN
     IF EXISTS(SELECT 0 FROM DELETED)
	 BEGIN
	   SET @audit_action='Updated Record -- After Insert Trigger';
	 END ELSE
	 BEGIN
	   SET @audit_action='Inserted Record -- After Insert Trigger';
	 END
  END ELSE
  BEGIN
    SET @audit_action='Deleted Record -- After Insert Trigger';
  END

  INSERT INTO EMPLOYEE_TEST_AUDIT
VALUES(@empid,@empname,@empsal,@audit_action,getdate());
  PRINT 'AFTER INSERT TRIGGER FIRED'
GO

INSERT INTO EMPLOYEE_TEST VALUES('Mike',1450)
DELETE FROM EMPLOYEE_TEST WHERE EMP_ID=8
UPDATE EMPLOYEE_TEST SET EMP_SAL=3000 WHERE EMP_ID=6

SELECT * FROM EMPLOYEE_TEST
SELECT * FROM EMPLOYEE_TEST_AUDIT

INSERT INTO EMPLOYEE_TEST VALUES('Bruce',1120)
UPDATE EMPLOYEE_TEST SET EMP_SAL=1220 WHERE EMP_NAME='Bruce'
UPDATE EMPLOYEE_TEST SET EMP_ID=7 WHERE EMP_NAME='Bruce'