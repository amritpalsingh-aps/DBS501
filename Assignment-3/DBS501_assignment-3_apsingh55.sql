--Name- AMRIT PAL SINGH 
--Student ID- 110355211
--DBS501_Assignment-3
------------------------------------------------------------------------------------------------------------------------------------------------------
-- TABLE -EMPUDIT
------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[EMPAUDIT](
	[EMPID] [varchar](max) NULL,
	[ERRORCODE] [nchar](10) NULL,
	[OPERATION] [nchar](10) NULL,
	[WORKDEPT] [varchar](100) NULL,
	[SALARY] [decimal](18, 2) NULL,
	[COMM] [decimal](18, 2) NULL,
	[BONUS] [decimal](18, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

------------------------------------------------------------------------------------------------------------------------------------------------------
-- TABLE -VACATION
------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[VACATION](
	[EMPID] [char](6) NULL,
	[VACATIONDAYS] [int] NULL,
	[HIREDATE] [datetime] NULL
) ON [PRIMARY]

------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
-- TRIGGERS
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
-- varpaychk
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TRIGGER varpaychk ON Employee  
AFTER INSERT ,UPDATE
AS  
IF (ROWCOUNT_BIG() = 0)
RETURN;
   Declare @EMPID as Int;
   Declare @ERRORCODE as varchar(10);
   Declare @OPERATION as varchar(10);
   Declare @WORKDEPT as varchar(10);
   Declare @SALARY  as decimal(18,2);
   declare @COMM as decimal(18,2);
   Declare @BONUS as decimal(18,2);
   DECLARE @counter INT
   SET @counter = 1;

  
IF EXISTS (SELECT 0 FROM inserted)
BEGIN
   IF EXISTS (SELECT 0 FROM deleted)
   BEGIN 
      SELECT @Operation = 'U'
   END ELSE
   BEGIN
      SELECT @Operation = 'I'
   END
END 
------------------------------------------------------------------------------------------------------------------------------------------------------
-- BONUS CHECK
------------------------------------------------------------------------------------------------------------------------------------------------------
     DECLARE yucky_Cursor CURSOR FOR
        SELECT EMPNO,SALARY, BONUS, COMM, WORKDEPT FROM Inserted; 
     OPEN yucky_Cursor; --Open cursor for reading
     FETCH NEXT  FROM  yucky_Cursor INTO @EMPID,@SALARY,@BONUS,@COMM,@WORKDEPT;
     WHILE @@FETCH_STATUS = 0 
     BEGIN
          IF @Bonus>= @Salary*0.2
           Begin  --“B” = Bonus rule broken         
		   insert into EMPAUDIT(EMPID,ERRORCODE,OPERATION,WORKDEPT,SALARY,COMM,BONUS) 
		                 values(@EMPID,'B',@Operation,'N/A',@SALARY,@COMM,@BONUS);
           END;
         FETCH NEXT FROM yucky_Cursor INTO @EMPID,@SALARY,@BONUS,@COMM,@WORKDEPT;
     END;

    CLOSE yucky_Cursor;
    DEALLOCATE yucky_Cursor;
------------------------------------------------------------------------------------------------------------------------------------------------------
-- COMMISSION CHECK
------------------------------------------------------------------------------------------------------------------------------------------------------
 DECLARE yucky_Cursor CURSOR FOR
        SELECT EMPNO,SALARY, BONUS, COMM, WORKDEPT FROM Inserted; 
     OPEN yucky_Cursor; --Open cursor for reading
     FETCH NEXT FROM yucky_Cursor INTO @EMPID,@SALARY,@BONUS,@COMM,@WORKDEPT;
     WHILE @@FETCH_STATUS = 0 
     BEGIN
          IF @comm>=@Salary*0.25
           Begin  --“C” = Commision rule broken          
		   insert into EMPAUDIT(EMPID,ERRORCODE,OPERATION,WORKDEPT,SALARY,COMM,BONUS) 
		                 values(@EMPID,'C',@Operation,'N/A',@SALARY,@COMM,@BONUS);
           END;
         FETCH NEXT FROM yucky_Cursor INTO @EMPID,@SALARY,@BONUS,@COMM,@WORKDEPT;
     END;

    CLOSE yucky_Cursor;
    DEALLOCATE yucky_Cursor;
------------------------------------------------------------------------------------------------------------------------------------------------------
-- SUM CHECK
------------------------------------------------------------------------------------------------------------------------------------------------------
 DECLARE yucky_Cursor CURSOR FOR
        SELECT EMPNO,SALARY, BONUS, COMM, WORKDEPT FROM Inserted; 
     OPEN yucky_Cursor; --Open cursor for reading
     FETCH NEXT FROM yucky_Cursor INTO @EMPID,@SALARY,@BONUS,@COMM,@WORKDEPT;
     WHILE @@FETCH_STATUS = 0 
     BEGIN
          IF @Bonus+@comm>=@Salary*0.4 
           Begin  --“C” = Commision rule broken        
		   insert into EMPAUDIT(EMPID,ERRORCODE,OPERATION,WORKDEPT,SALARY,COMM,BONUS) 
		                 values(@EMPID,'S',@Operation,'N/A',@SALARY,@COMM,@BONUS);
           END;
         FETCH NEXT FROM yucky_Cursor INTO @EMPID,@SALARY,@BONUS,@COMM,@WORKDEPT;
     END;

    CLOSE yucky_Cursor;
    DEALLOCATE yucky_Cursor;


------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
-- nomgr
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
USE [AssignmetTest]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create TRIGGER [dbo].[nomgr]
ON [dbo].[employee]
AFTER INSERT,UPDATE,DELETE
AS 
BEGIN
 Declare @EMPID as Int;
   Declare @ERRORCODE as varchar(10);
   Declare @OPERATION as varchar(10);
   Declare @WORKDEPT as varchar(10);
   Declare @SALARY  as decimal(18,2);
   declare @COMM as decimal(18,2);
   Declare @BONUS as decimal(18,2);
   DECLARE @counter INT
   SET @counter = 1;
   SET @Operation='U';
IF EXISTS (SELECT 1 FROM inserted)
   BEGIN
      SET @Operation = 'I'
   END 
ELSE IF EXISTS (SELECT 1 FROM deleted)
     BEGIN 
      SET @Operation = 'D'
     END  
   Print @Operation;
if @OPERATION in('I','U')
     BEGIN
	    Print 'I OR U';
        DECLARE yucky_Cursor1 CURSOR FOR
        SELECT EMPNO, WORKDEPT,SALARY,COMM,BONUS FROM Inserted; 
        OPEN yucky_Cursor1; --Open cursor for reading
        FETCH NEXT FROM yucky_Cursor1 INTO @EMPID, @WORKDEPT,@SALARY,@COMM,@BONUS;
        WHILE @@FETCH_STATUS = 0 
         BEGIN
           if not Exists(SELECT 1 FROM Employee as e where e.WorkDept = @WORKDEPT and e.JOB='MANAGER')
           Begin
           Update Employee Set WORKDEPT='000' where EMPNO=@EMPID;;
		   insert into EMPAUDIT(EMPID,ERRORCODE,OPERATION,WORKDEPT,SALARY,COMM,BONUS) 
		                 values(@EMPID,'M',@Operation,'Rejected department number',@SALARY,@COMM,@BONUS);
           END;
           FETCH NEXT FROM yucky_Cursor1 INTO @EMPID, @WORKDEPT,@SALARY,@COMM,@BONUS;
          END;

         CLOSE yucky_Cursor1;
         DEALLOCATE yucky_Cursor1;
       END;
ELSE  
  BEGIN --DELETE
     Declare @JOB as varchar(10);
	 Print 'DELETE';
     DECLARE yucky_Cursor2 CURSOR FOR
        SELECT EMPNO, WORKDEPT,SALARY,COMM,BONUS,JOB FROM deleted; 
     OPEN yucky_Cursor2; --Open cursor for reading
     FETCH NEXT FROM yucky_Cursor2 INTO @EMPID, @WORKDEPT,@SALARY,@COMM,@BONUS,@JOB;
     WHILE @@FETCH_STATUS = 0 
     BEGIN  Print @JOB; 
	       if @JOB='MANAGER '
	        Begin
              if  Exists(SELECT 1 FROM Employee as e where e.WorkDept = @WORKDEPT)
              Begin
              insert into EMPAUDIT(EMPID,ERRORCODE,OPERATION,WORKDEPT,SALARY,COMM,BONUS) 
		                 values(@EMPID,'M',@Operation,'Rejected department number',@SALARY,@COMM,@BONUS);
               Update Employee set WORKDEPT='000' where WORKDEPT=@WORKDEPT; --Update employee for deleted  department
              END;
             FETCH NEXT FROM yucky_Cursor2 INTO @EMPID, @WORKDEPT,@SALARY,@COMM,@BONUS,@JOB;
            End
	 END;

    CLOSE yucky_Cursor2;
    DEALLOCATE yucky_Cursor2;
   END;
END;
GO

ALTER TABLE [dbo].[employee] ENABLE TRIGGER [nomgr]
GO


------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
-- empvac
------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[empvac] ON [dbo].[employee]  
AFTER INSERT, UPDATE,DELETE  
AS  
IF (ROWCOUNT_BIG() = 0)
RETURN;
BEGIN
-- EMP HIRED 10 YRS AGO
insert into dbo.Vacation(EMPID,VACATIONDAYS,HIREDATE)
SELECT i.EMPNO,15,i.HIREDATE  FROM inserted AS i where  DATEDIFF(YEAR,i.HIREDATE,GETDATE())<10 ;
-- EMP HIRED 10-19 YRS AGO
insert into dbo.Vacation(EMPID,VACATIONDAYS,HIREDATE)
SELECT i.EMPNO,20,i.HIREDATE  FROM inserted AS i where DATEDIFF(YEAR,i.HIREDATE,GETDATE())>=10 and DATEDIFF(YEAR,i.HIREDATE,GETDATE())<=19  ;
-- EMP HIRED 20-29 YRS AGO
insert into dbo.Vacation(EMPID,VACATIONDAYS,HIREDATE)
SELECT i.EMPNO,25,i.HIREDATE FROM inserted AS i where  DATEDIFF(YEAR,i.HIREDATE,GETDATE())>=20 and DATEDIFF(YEAR,i.HIREDATE,GETDATE())<=29 ;
-- EMP HIRED 30+ YRS AGO
insert into dbo.Vacation(EMPID,VACATIONDAYS,HIREDATE)
SELECT i.EMPNO,30,i.HIREDATE  FROM inserted AS i where  DATEDIFF(YEAR,i.HIREDATE,GETDATE())>=30 ;
if Exists(SELECt 1 from deleted)
Begin
Delete from VACATION where EMPID in (Select EMPNO from deleted);
End

ALTER TABLE [dbo].[employee] ENABLE TRIGGER [empvac]
GO


------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
-- TESTNG
------------------------------------------------------------------------------------------------------------------------------------------------------
-- trigger - varpaychk
------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO [dbo].[employee]([EMPNO],   [FIRSTNAME],
 [MIDINIT],  [LASTNAME],[WORKDEPT],[PHONENO] ,   [HIREDATE],
 [JOB],     [EDLEVEL],[SEX],  [BIRTHDATE],      
 [SALARY],    [BONUS],[COMM])
    VALUES('200350','CHRISTINE',   'I',        'HAAS',   
	'A00',    '3978',   CONVERT(datetime, convert(char(8),19950101)),'PRES',
	18,     'F',CONVERT(datetime, convert(char(8),19630824)),
	152750.00,100000.00,100000.00 ); --Salary,Bonus,Comiison Check
	--Select
 Select * from EMPAUDIT;


INSERT INTO [dbo].[employee]([EMPNO],   [FIRSTNAME],
 [MIDINIT],  [LASTNAME],[WORKDEPT],[PHONENO] ,   [HIREDATE],
 [JOB],     [EDLEVEL],[SEX],  [BIRTHDATE],      
 [SALARY],    [BONUS],[COMM])
    VALUES('200360','CHRISTINE2',   'I',        'HAAS',   
	'A00',    '3978',   CONVERT(datetime, convert(char(8),19950101)),'PRES',
	18,     'F',CONVERT(datetime, convert(char(8),19630824)),
	152750.00,108000.00,01000.00 ) --Salary,Bonus,Comiison Check
	 ,('200370','CHRISTINE3',   'I',        'HAAS',   
	'A00',    '3978',   CONVERT(datetime, convert(char(8),19950101)),'PRES',
	18,     'F',CONVERT(datetime, convert(char(8),19630824)),
	152750.00,59000.00,10.00 ); --Salary,Bonus,Comiison Check
	--Select
 Select * from EMPAUDIT;


Select * from EMPAUDIT where EMPID=000240;
Update Employee set BONUS=30000 where EMPNO=000240; --Break Bonus Rule and Sum
Select * from EMPAUDIT where EMPID=000240;

------------------------------------------------------------------------------------------------------------------------------------------------------
-- trigger - empvac
------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO [dbo].[employee]([EMPNO],   [FIRSTNAME],
 [MIDINIT],  [LASTNAME],[WORKDEPT],[PHONENO] ,   [HIREDATE],
 [JOB],     [EDLEVEL],[SEX],  [BIRTHDATE],      
 [SALARY],    [BONUS],[COMM])
    VALUES VALUES('200390','AKANS',   'I',        'HAAS',   
	'A00',    '3978',   CONVERT(datetime, convert(char(8),20150121)),'PRES', --Vacation 15
	18,     'F',CONVERT(datetime, convert(char(8),19630824)),
	152750.00,108000.00,01000.00 );
	--Select
 Select * from VACATION;


INSERT INTO [dbo].[employee]([EMPNO],   [FIRSTNAME],
 [MIDINIT],  [LASTNAME],[WORKDEPT],[PHONENO] ,   [HIREDATE],
 [JOB],     [EDLEVEL],[SEX],  [BIRTHDATE],      
 [SALARY],    [BONUS],[COMM])
    VALUES('200390','VIVEK',   'I',        'HAAS',   
	'A00',    '3978',   CONVERT(datetime, convert(char(8),20110126)),'PRES', --Vacation 20
	18,     'F',CONVERT(datetime, convert(char(8),19630824)),
	152750.00,108000.00,01000.00 ),
	('200400','KASNJ',   'I',        'HAAS1',   
	'A00',    '3978',   CONVERT(datetime, convert(char(8),19150128)),'PRES', --Vacation 30
	18,     'F',CONVERT(datetime, convert(char(8),19630824)),
	152750.00,108000.00,01000.00 )
	--Select
 Select * from VACATION;

------------------------------------------------------------------------------------------------------------------------------------------------------
-- trigger - nomgr
------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO [dbo].[employee]([EMPNO],   [FIRSTNAME],
 [MIDINIT],  [LASTNAME],[WORKDEPT],[PHONENO] ,   [HIREDATE],
 [JOB],     [EDLEVEL],[SEX],  [BIRTHDATE],      
 [SALARY],    [BONUS],[COMM])
    VALUES('200430','K.AMG',   'H',        'HAAS',   
	'002',    '3978',  GETDATE(),'PRESS.', --WRONG DEPT
	18,     'F',CONVERT(datetime, convert(char(8),19630824)),
	152750.00,10000.00,01000.00 ),
	 ('200440','G.HENRY',   'H',        'HAAS',   
	'009',    '3978',  GETDATE(),'PRESS.', --wrong DEPT
	18,     'F',CONVERT(datetime, convert(char(8),19630824)),
	152750.00,10000.00,01000.00 );
	--Select
 Select * from EMPAUDIT where [EMPID]='200430' or EMPID='200440';
 Select * from Employee where [EMPNO]='200430' or EMPNO='200440'

------------------------------------------------------------------------------------------------------------------------------------------------------
-- DELETE MANAGER
------------------------------------------------------------------------------------------------------------------------------------------------------
Select * from employee where  WORKDEPT='E11' ;
Delete from employee where EMPNO='000090';
Select * from EMPAUDIT;
Select * from employee where  WORKDEPT='E11' ;

------------------------------------------------------------------------------------------------------------------------------------------------------