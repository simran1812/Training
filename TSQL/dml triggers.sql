CREATE TABLE Employee_Test
(
Emp_ID INT Identity,-- starts with one increments by 1
Emp_name Varchar(100),
Emp_Sal Decimal (10,2)
)

INSERT INTO Employee_Test VALUES ('Anees',1000);
INSERT INTO Employee_Test VALUES ('Rick',1200);
INSERT INTO Employee_Test VALUES ('John',1100);
INSERT INTO Employee_Test VALUES ('Stephen',1300);
INSERT INTO Employee_Test VALUES ('Maria',1400);

SELECT * FROM EMPLOYEE_TEST


CREATE TABLE Employee_Test_Audit
(
Emp_ID int,
Emp_name varchar(100),
Emp_Sal decimal (10,2),
Audit_Action varchar(100),
Audit_Timestamp datetime
)

SELECT * FROM EMPLOYEE_TEST_AUDIT

--TRIGGER CREATION INSERT
CREATE TRIGGER trgAfterInsert ON EMPLOYEE_TEST
FOR INSERT
AS
  DECLARE @empid INT;
  DECLARE @empname VARCHAR(100);
  DECLARE @empsal DECIMAL(10,2);
  DECLARE @audit_action VARCHAR(100);

  SELECT @empid=i.Emp_ID FROM INSERTED i;
  SELECT @empname=i.Emp_Name FROM INSERTED i;
  SELECT @empsal=i.Emp_Sal FROM INSERTED i;
  SET @audit_action='Inserted Record -- After Insert Trigger';

  INSERT INTO EMPLOYEE_TEST_AUDIT
VALUES(@empid,@empname,@empsal,@audit_action,getdate());
  PRINT 'AFTER INSERT TRIGGER FIRED'
GO

SELECT * FROM Employee_Test
SELECT * FROM Employee_Test_Audit

INSERT INTO EMPLOYEE_TEST VALUES('Bharath',1500)
INSERT INTO EMPLOYEE_TEST VALUES('Mike',1450)

DELETE FROM Employee_Test WHERE EMP_ID=7
DELETE FROM Employee_Test_Audit WHERE EMP_ID=NULL

--TRIGGER CREATION DELETE
CREATE TRIGGER trgAfterDelete ON EMPLOYEE_TEST
FOR DELETE
AS
  DECLARE @empid INT;
  DECLARE @empname VARCHAR(100);
  DECLARE @empsal DECIMAL(10,2);
  DECLARE @audit_action VARCHAR(100);

  SELECT @empid=d.Emp_ID FROM DELETED d;
  SELECT @empname=d.Emp_Name FROM DELETED d;
  SELECT @empsal=d.Emp_Sal FROM DELETED d;

  SET @audit_action='Deleted Record -- After Delete Trigger';

  INSERT INTO EMPLOYEE_TEST_AUDIT
VALUES(@empid,@empname,@empsal,@audit_action,getdate());
  PRINT 'AFTER DELETE TRIGGER FIRED'
GO