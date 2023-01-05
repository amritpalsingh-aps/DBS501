--Name- AMRIT PAL SINGH 
--Student ID- 110355211
--DBS501_Assignment-1
----------------------------------------------------------------------------------------------
--Table [dbo].[employee]
----------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[EMPNO] [int] NOT NULL,
	[FIRSTNAME] [nvarchar](50) NOT NULL,
	[MIDINIT] [nvarchar](50) NULL,
	[LASTNAME] [nvarchar](50) NOT NULL,
	[WORKDEPT] [nvarchar](50) NOT NULL,
	[PHONENO] [smallint] NOT NULL,
	[HIREDATE] [date] NOT NULL,
	[JOB] [nvarchar](50) NOT NULL,
	[EDLEVEL] [tinyint] NOT NULL,
	[SEX] [nvarchar](50) NOT NULL,
	[BIRTHDATE] [date] NOT NULL,
	[SALARY] [int] NOT NULL,
	[BONUS] [smallint] NOT NULL,
	[COMM] [smallint] NOT NULL,
	[RATING] [tinyint] NOT NULL
) ON [PRIMARY]
GO
----------------------------------------------------------------------------------------------
--Insert data into employee
----------------------------------------------------------------------------------------------
GO
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (10, N'CHRISTINE', N'I', N'HAAS', N'A00', 3978, CAST(N'1995-01-01' AS Date), N'PRES    ', 18, N'F', CAST(N'1963-08-24' AS Date), 152750, 1000, 4220, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (20, N'MICHAEL', N'L', N'THOMPSON', N'B01', 3476, CAST(N'2003-10-10' AS Date), N'MANAGER ', 18, N'M', CAST(N'1978-02-02' AS Date), 94250, 800, 3300, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (30, N'SALLY', N'A', N'KWAN', N'C01', 4738, CAST(N'2005-04-05' AS Date), N'MANAGER ', 20, N'F', CAST(N'1971-05-11' AS Date), 98250, 800, 3060, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (50, N'JOHN', N'B', N'GEYER', N'E01', 6789, CAST(N'1979-08-17' AS Date), N'MANAGER ', 16, N'M', CAST(N'1955-09-15' AS Date), 80175, 800, 3214, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (60, N'IRVING', N'F', N'STERN', N'D11', 6423, CAST(N'2003-09-14' AS Date), N'MANAGER ', 16, N'M', CAST(N'1975-07-07' AS Date), 72250, 500, 2580, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (70, N'EVA', N'D', N'PULASKI', N'D21', 7831, CAST(N'2005-09-30' AS Date), N'MANAGER ', 16, N'F', CAST(N'2003-05-26' AS Date), 96170, 700, 2893, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (90, N'EILEEN', N'W', N'HENDERSON', N'E11', 5498, CAST(N'2000-08-15' AS Date), N'MANAGER ', 16, N'F', CAST(N'1971-05-15' AS Date), 89750, 600, 2380, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (100, N'THEODORE', N'Q', N'SPENSER', N'E21', 972, CAST(N'2000-06-19' AS Date), N'MANAGER ', 14, N'M', CAST(N'1980-12-18' AS Date), 86150, 500, 2092, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (110, N'VINCENZO', N'G', N'LUCCHESSI', N'A00', 3490, CAST(N'1988-05-16' AS Date), N'SALESREP', 19, N'M', CAST(N'1959-11-05' AS Date), 66500, 900, 3720, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (120, N'SEAN', NULL, N'O''CONNELL', N'A00', 2167, CAST(N'1993-12-05' AS Date), N'CLERK   ', 14, N'M', CAST(N'1972-10-18' AS Date), 49250, 600, 2340, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (130, N'DELORES', N'M', N'QUINTANA', N'C01', 4578, CAST(N'2001-07-28' AS Date), N'ANALYST ', 16, N'F', CAST(N'1955-09-15' AS Date), 73800, 500, 1904, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (140, N'HEATHER', N'A', N'NICHOLLS', N'C01', 1793, CAST(N'2006-12-15' AS Date), N'ANALYST ', 18, N'F', CAST(N'1976-01-19' AS Date), 68420, 600, 2274, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (150, N'BRUCE', NULL, N'ADAMSON', N'D11', 4510, CAST(N'2002-02-12' AS Date), N'DESIGNER', 16, N'M', CAST(N'1977-05-17' AS Date), 55280, 500, 2022, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (160, N'ELIZABETH', N'R', N'PIANKA', N'D11', 3782, CAST(N'2006-10-11' AS Date), N'DESIGNER', 17, N'F', CAST(N'1980-04-12' AS Date), 62250, 400, 1780, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (170, N'MASATOSHI', N'J', N'YOSHIMURA', N'D11', 2890, CAST(N'1999-09-15' AS Date), N'DESIGNER', 16, N'M', CAST(N'1981-01-05' AS Date), 44680, 500, 1974, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (180, N'MARILYN', N'S', N'SCOUTTEN', N'D11', 1682, CAST(N'2003-07-07' AS Date), N'DESIGNER', 17, N'F', CAST(N'1979-02-21' AS Date), 51340, 500, 1707, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (190, N'JAMES', N'H', N'WALKER', N'D11', 2986, CAST(N'2004-07-26' AS Date), N'DESIGNER', 16, N'M', CAST(N'1982-06-25' AS Date), 50450, 400, 1636, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200, N'DAVID', NULL, N'BROWN', N'D11', 4501, CAST(N'2002-03-03' AS Date), N'DESIGNER', 16, N'M', CAST(N'1971-05-29' AS Date), 57740, 600, 2217, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (210, N'WILLIAM', N'T', N'JONES', N'D11', 942, CAST(N'1998-04-11' AS Date), N'DESIGNER', 17, N'M', CAST(N'2003-02-23' AS Date), 68270, 400, 1462, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (220, N'JENNIFER', N'K', N'LUTZ', N'D11', 672, CAST(N'1998-08-29' AS Date), N'DESIGNER', 18, N'F', CAST(N'1978-03-19' AS Date), 49840, 600, 2387, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (230, N'JAMES', N'J', N'JEFFERSON', N'D21', 2094, CAST(N'1996-11-21' AS Date), N'CLERK   ', 14, N'M', CAST(N'1980-05-30' AS Date), 42180, 400, 1774, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (240, N'SALVATORE', N'M', N'MARINO', N'D21', 3780, CAST(N'2004-12-05' AS Date), N'CLERK   ', 17, N'M', CAST(N'2002-03-31' AS Date), 48760, 600, 2301, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (250, N'DANIEL', N'S', N'SMITH', N'D21', 961, CAST(N'1999-10-30' AS Date), N'CLERK   ', 15, N'M', CAST(N'1969-11-12' AS Date), 49180, 400, 1534, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (260, N'SYBIL', N'P', N'JOHNSON', N'D21', 8953, CAST(N'2005-09-11' AS Date), N'CLERK   ', 16, N'F', CAST(N'1976-10-05' AS Date), 47250, 300, 1380, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (270, N'MARIA', N'L', N'PEREZ', N'D21', 9001, CAST(N'2006-09-30' AS Date), N'CLERK   ', 15, N'F', CAST(N'2003-05-26' AS Date), 37380, 500, 2190, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (280, N'ETHEL', N'R', N'SCHNEIDER', N'E11', 8997, CAST(N'1997-03-24' AS Date), N'OPERATOR', 17, N'F', CAST(N'1976-03-28' AS Date), 36250, 500, 2100, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (290, N'JOHN', N'R', N'PARKER', N'E11', 4502, CAST(N'2006-05-30' AS Date), N'OPERATOR', 12, N'M', CAST(N'1985-07-09' AS Date), 35340, 300, 1227, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (300, N'PHILIP', N'X', N'SMITH', N'E11', 2095, CAST(N'2002-06-19' AS Date), N'OPERATOR', 14, N'M', CAST(N'1976-10-27' AS Date), 37750, 400, 1420, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (310, N'MAUDE', N'F', N'SETRIGHT', N'E11', 3332, CAST(N'1994-09-12' AS Date), N'OPERATOR', 12, N'F', CAST(N'1961-04-21' AS Date), 35900, 300, 1272, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (320, N'RAMLAL', N'V', N'MEHTA', N'E21', 9990, CAST(N'1995-07-07' AS Date), N'FIELDREP', 16, N'M', CAST(N'1962-08-11' AS Date), 39950, 400, 1596, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (330, N'WING', NULL, N'LEE', N'E21', 2103, CAST(N'2006-02-23' AS Date), N'FIELDREP', 14, N'M', CAST(N'1971-07-18' AS Date), 45370, 500, 2030, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (340, N'JASON', N'R', N'GOUNOT', N'E21', 5698, CAST(N'1977-05-05' AS Date), N'FIELDREP', 16, N'M', CAST(N'1956-05-17' AS Date), 43840, 500, 1907, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200010, N'DIAN', N'J', N'HEMMINGER', N'A00', 3978, CAST(N'1995-01-01' AS Date), N'SALESREP', 18, N'F', CAST(N'1973-08-14' AS Date), 46500, 1000, 4220, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200120, N'GREG', NULL, N'ORLANDO', N'A00', 2167, CAST(N'2002-05-05' AS Date), N'CLERK   ', 14, N'M', CAST(N'1972-10-18' AS Date), 39250, 600, 2340, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200140, N'KIM', N'N', N'NATZ', N'C01', 1793, CAST(N'2006-12-15' AS Date), N'ANALYST ', 18, N'F', CAST(N'1976-01-19' AS Date), 68420, 600, 2274, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200170, N'KIYOSHI', NULL, N'YAMAMOTO', N'D11', 2890, CAST(N'2005-09-15' AS Date), N'DESIGNER', 16, N'M', CAST(N'1981-01-05' AS Date), 64680, 500, 1974, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200220, N'REBA', N'K', N'JOHN', N'D11', 672, CAST(N'2005-08-29' AS Date), N'DESIGNER', 18, N'F', CAST(N'1978-03-19' AS Date), 69840, 600, 2387, 3)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200240, N'ROBERT', N'M', N'MONTEVERDE', N'D21', 3780, CAST(N'2004-12-05' AS Date), N'CLERK   ', 17, N'M', CAST(N'1984-03-31' AS Date), 37760, 600, 2301, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200280, N'EILEEN', N'R', N'SCHWARTZ', N'E11', 8997, CAST(N'1997-03-24' AS Date), N'OPERATOR', 17, N'F', CAST(N'1966-03-28' AS Date), 46250, 500, 2100, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200310, N'MICHELLE', N'F', N'SPRINGER', N'E11', 3332, CAST(N'1994-09-12' AS Date), N'OPERATOR', 12, N'F', CAST(N'1961-04-21' AS Date), 35900, 300, 1272, 1)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200330, N'HELENA', NULL, N'WONG', N'E21', 2103, CAST(N'2006-02-23' AS Date), N'FIELDREP', 14, N'F', CAST(N'1971-07-18' AS Date), 35370, 500, 2030, 2)
INSERT [dbo].[employee] ([EMPNO], [FIRSTNAME], [MIDINIT], [LASTNAME], [WORKDEPT], [PHONENO], [HIREDATE], [JOB], [EDLEVEL], [SEX], [BIRTHDATE], [SALARY], [BONUS], [COMM], [RATING]) VALUES (200340, N'ROY', N'R', N'ALONZO', N'E21', 5698, CAST(N'1997-07-05' AS Date), N'FIELDREP', 16, N'M', CAST(N'1956-05-17' AS Date), 31840, 500, 1907, 3)
GO

----------------------------------------------------------------------------------------------
--Table [dbo].[staff]
----------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[ID] [smallint] NOT NULL,
	[NAME] [nvarchar](50) NOT NULL,
	[DEPT] [smallint] NOT NULL,
	[JOB] [nvarchar](50) NOT NULL,
	[YEARS] [smallint] NULL,
	[SALARY] [decimal](18, 10) NOT NULL,
	[COMM] [decimal](18, 10) NULL
) ON [PRIMARY]
GO
----------------------------------------------------------------------------------------------
--Insert data into staff
----------------------------------------------------------------------------------------------
GO
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (10, N'Sanders', 20, N'Mgr  ', 7, CAST(98357.5000000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (20, N'Pernal', 20, N'Sales', 8, CAST(78171.2500000000 AS Decimal(18, 10)), CAST(612.4500000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (30, N'Marenghi', 38, N'Mgr  ', 5, CAST(77506.7500000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (40, N'O''Brien', 38, N'Sales', 6, CAST(78006.0000000000 AS Decimal(18, 10)), CAST(846.5500000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (50, N'Hanes', 15, N'Mgr  ', 10, CAST(80659.8000000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (60, N'Quigley', 38, N'Sales', NULL, CAST(66808.3000000000 AS Decimal(18, 10)), CAST(650.2500000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (70, N'Rothman', 15, N'Sales', 7, CAST(76502.8300000000 AS Decimal(18, 10)), CAST(1152.0000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (80, N'James', 20, N'Clerk', NULL, CAST(43504.6000000000 AS Decimal(18, 10)), CAST(128.2000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (90, N'Koonitz', 42, N'Sales', 6, CAST(38001.7500000000 AS Decimal(18, 10)), CAST(1386.7000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (100, N'Plotz', 42, N'Mgr  ', 7, CAST(78352.8000000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (110, N'Ngan', 15, N'Clerk', 5, CAST(42508.2000000000 AS Decimal(18, 10)), CAST(206.6000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (120, N'Naughton', 38, N'Clerk', NULL, CAST(42954.7500000000 AS Decimal(18, 10)), CAST(180.0000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (130, N'Yamaguchi', 42, N'Clerk', 6, CAST(40505.9000000000 AS Decimal(18, 10)), CAST(75.6000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (140, N'Fraye', 51, N'Mgr  ', 6, CAST(91150.0000000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (150, N'Williams', 51, N'Sales', 6, CAST(79456.5000000000 AS Decimal(18, 10)), CAST(637.6500000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (160, N'Molinare', 10, N'Mgr  ', 7, CAST(82959.2000000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (170, N'Kermisch', 15, N'Clerk', 4, CAST(42258.5000000000 AS Decimal(18, 10)), CAST(110.1000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (180, N'Abrahams', 38, N'Clerk', 3, CAST(37009.7500000000 AS Decimal(18, 10)), CAST(236.5000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (190, N'Sneider', 20, N'Clerk', 8, CAST(34252.7500000000 AS Decimal(18, 10)), CAST(126.5000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (200, N'Scoutten', 42, N'Clerk', NULL, CAST(41508.6000000000 AS Decimal(18, 10)), CAST(84.2000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (210, N'Lu', 10, N'Mgr  ', 10, CAST(90010.0000000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (220, N'Smith', 51, N'Sales', 7, CAST(87654.5000000000 AS Decimal(18, 10)), CAST(992.8000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (230, N'Lundquist', 51, N'Clerk', 3, CAST(83369.8000000000 AS Decimal(18, 10)), CAST(189.6500000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (240, N'Daniels', 10, N'Mgr  ', 5, CAST(79260.2500000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (250, N'Wheeler', 51, N'Clerk', 6, CAST(74460.0000000000 AS Decimal(18, 10)), CAST(513.3000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (260, N'Jones', 10, N'Mgr  ', 12, CAST(81234.0000000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (270, N'Lea', 66, N'Mgr  ', 9, CAST(88555.5000000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (280, N'Wilson', 66, N'Sales', 9, CAST(78674.5000000000 AS Decimal(18, 10)), CAST(811.5000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (290, N'Quill', 84, N'Mgr  ', 10, CAST(89818.0000000000 AS Decimal(18, 10)), NULL)
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (300, N'Davis', 84, N'Sales', 5, CAST(65454.5000000000 AS Decimal(18, 10)), CAST(806.1000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (310, N'Graham', 66, N'Sales', 13, CAST(71000.0000000000 AS Decimal(18, 10)), CAST(200.3000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (320, N'Gonzales', 66, N'Sales', 4, CAST(76858.2000000000 AS Decimal(18, 10)), CAST(844.0000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (330, N'Burke', 66, N'Clerk', 1, CAST(49988.0000000000 AS Decimal(18, 10)), CAST(55.5000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (340, N'Edwards', 84, N'Sales', 7, CAST(67844.0000000000 AS Decimal(18, 10)), CAST(1285.0000000000 AS Decimal(18, 10)))
INSERT [dbo].[staff] ([ID], [NAME], [DEPT], [JOB], [YEARS], [SALARY], [COMM]) VALUES (350, N'Gafney', 84, N'Clerk', 5, CAST(43030.5000000000 AS Decimal(18, 10)), CAST(188.0000000000 AS Decimal(18, 10)))
GO

----------------------------------------------------------------------------------------------
--StoredProcedure [dbo].[find_customer]
----------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[find_customer] 
(@customer_id int, @found int OUT )
As
Begin
select @found=1 from customers c where c.customer_id=@customer_id 
if @found =1 
print 'found'
else 
print 'Not found'
End
GO

----------------------------------------------------------------------------------------------
--StoredProcedure [dbo].[find_product]
----------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[find_product] (@product_id int, @price int OUT )
As
Begin
declare @count  smallint ;
   Select @count = count(*) from products p where p.product_id = @product_id ;
 if @count =0 
    PRINT 'Product Id  not exist';
 ELSE 
 select price = p.list_price from products p where p.product_id = @product_id 
End
GO



----------------------------------------------------------------------------------------------
--StoredProcedure [dbo].[add_order]
----------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[add_order] (@customer_id int, @new_order_id int OUT )
As
declare @count  smallint ;
  Select @count = count(*) from customers where customer_id=@customer_id;
 if @count = 0 
 PRINT 'Customer Id  not exist';
 ELSE 
   Begin
   declare @max_order_id int
   select @max_order_id=max(o.order_id) from orders o;
   set @new_order_id = @max_order_id+1;
    INSERT INTO orders(order_id,customer_id,[status],salesman_id,order_date)
     VALUES(@new_order_id,@customer_id,'Shipped',56,getdate());
    Select * from [orders] where order_id=@new_order_id;
    End
GO


----------------------------------------------------------------------------------------------
--StoredProcedure [dbo].[add_order_item]
----------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[add_order_item] (@orderId  int,
 @itemId  int, 
 @productId int, 
 @quantity decimal(8,2),
 @price decimal(8,2))
As
Begin
declare @count  smallint ;
  Select @count = count(*) from orders where order_id=@orderId;
 if @count = 0 
 PRINT 'Order Id  not exist';
 ELSE 
   Begin
  INSERT INTO [dbo].[order_items]([order_id],[item_id],[product_id],[quantity],[unit_price])
     VALUES(@orderId,@itemId,@productId,@quantity,@price)
	 Print 'Order inserted successfully'
	 End
End
GO

----------------------------------------------------------------------------------------------
--StoredProcedure [dbo].[display_order]
----------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[display_order](@orderId int)
As
Begin
 declare @count  smallint ;
   Select @count = count(*) from orders where order_id=@orderId;
 if @count =0 
    PRINT 'Order Id  not exist';
 ELSE 
     Begin
     select order_id as [Order ID],customer_id as [Customer ID] from orders where order_id=@orderId;
     select  item_id as [Item ID],product_id as [Product ID],quantity as [Quantity],unit_price as [Price] from order_items where order_id=@orderId;
     select sum(unit_price) as [Total Price] from order_items where order_id=@orderId;
     End 
End
GO

----------------------------------------------------------------------------------------------
--StoredProcedure [dbo].[master_proc]
----------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[master_proc] (@task  int, @parm1  int)
As
Begin
declare @found int ;
DECLARE	@return_value int
Set @found=0;
If @task = 1
  EXEC find_customer @parm1 ,@found 
else If @task = 2
  EXEC  find_product @parm1, @found
else If @task = 3
Begin 
  Exec @return_value= add_order @parm1 ,0 --New Order ID set to 0 ,it will automatically inserted
  return @return_value
  End
else If @task = 4
Begin
    EXEC @return_value= display_order @parm1
	 return @return_value
	End
else 
print 'Invalid task number'
End
GO

----------------------------------------------------------------------------------------------
--CALL COMMANDS USING MASTER
----------------------------------------------------------------------------------------------
--CUSTOMER PROCEDURE
---------------------------------------------------------------------------------------------- 
--VALID CUSTOMER
----------------------------------------------------------------------------------------------
    DECLARE	@return_value int

    EXEC	@return_value = [dbo].[master_proc]
		@task = 1,
		@parm1 = 177

    --SELECT	'Return Value' = @return_value
     GO
----------------------------------------------------------------------------------------------
--INVALID CUSTOMER
----------------------------------------------------------------------------------------------
   DECLARE	@return_value int

    EXEC	@return_value = [dbo].[master_proc]
		@task = 1,
		@parm1 = 1776

   --SELECT	'Return Value' = @return_value

    GO


----------------------------------------------------------------------------------------------
--PRODUCT PROCEDURE
----------------------------------------------------------------------------------------------
--VALID PRODUCT ID
----------------------------------------------------------------------------------------------

    DECLARE	@return_value int

    EXEC	@return_value = [dbo].[master_proc]
		@task = 2,
		@parm1 = 1

    --SELECT	'Return Value' = @return_value
     GO
----------------------------------------------------------------------------------------------   
--INVALID PRODUCT ID
----------------------------------------------------------------------------------------------

   DECLARE	@return_value int

    EXEC	@return_value = [dbo].[master_proc]
		@task = 2,
		@parm1 = 1455

   --SELECT	'Return Value' = @return_value

    GO

----------------------------------------------------------------------------------------------
--ADD ORDER PROCEDURE
----------------------------------------------------------------------------------------------
--VALID CUSTOMER ID
----------------------------------------------------------------------------------------------
    DECLARE	@return_value int

    EXEC	@return_value = [dbo].[master_proc]
		@task = 3,
		@parm1 = 1

    --SELECT	'Return Value' = @return_value
     GO
----------------------------------------------------------------------------------------------   
--INVALID CUSTOMER ID
----------------------------------------------------------------------------------------------

   DECLARE	@return_value int

    EXEC	@return_value = [dbo].[master_proc]
		@task = 3,
		@parm1 = 789

   --SELECT	'Return Value' = @return_value

    GO


----------------------------------------------------------------------------------------------
--DISPLAY ORDER PROCEDURE
----------------------------------------------------------------------------------------------
--DISPLAY ORDER WITH INVALID ORDER ID
----------------------------------------------------------------------------------------------

    DECLARE	@return_value int

    EXEC	@return_value = [dbo].[master_proc]
		@task = 4,
		@parm1 = 789

   --SELECT	'Return Value' = @return_value

    GO




----------------------------------------------------------------------------------------------
--ADD ORDER ITEM
----------------------------------------------------------------------------------------------
--SUCCESSFULL INSERT
----------------------------------------------------------------------------------------------

DECLARE @RC int
DECLARE @orderId int
DECLARE @itemId int
DECLARE @productId int
DECLARE @quantity decimal(8,2)
DECLARE @price decimal(8,2)

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[add_order_item] 
   @orderId=1
  ,@itemId=1
  ,@productId=1
  ,@quantity=12
  ,@price=23
GO


DECLARE @RC int
DECLARE @orderId int
DECLARE @itemId int
DECLARE @productId int
DECLARE @quantity decimal(8,2)
DECLARE @price decimal(8,2)

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[add_order_item] 
   @orderId=5
  ,@itemId=1
  ,@productId=1
  ,@quantity=20
  ,@price=29
GO
----------------------------------------------------------------------------------------------
USE [Test2]
GO

DECLARE @RC int
DECLARE @orderId int
DECLARE @itemId int
DECLARE @productId int
DECLARE @quantity decimal(8,2)
DECLARE @price decimal(8,2)

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[add_order_item] 
   @orderId=5
  ,@itemId=2
  ,@productId=1
  ,@quantity=6.67
  ,@price=45.9
GO
----------------------------------------------------------------------------------------------
USE [Test2]
GO

DECLARE @RC int
DECLARE @orderId int
DECLARE @itemId int
DECLARE @productId int
DECLARE @quantity decimal(8,2)
DECLARE @price decimal(8,2)

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[add_order_item] 
   @orderId=5
  ,@itemId=2
  ,@productId=1
  ,@quantity=56
  ,@price=89.9
GO

----------------------------------------------------------------------------------------------
USE [Test2]
GO

DECLARE @RC int
DECLARE @orderId int
DECLARE @itemId int
DECLARE @productId int
DECLARE @quantity decimal(8,2)
DECLARE @price decimal(8,2)

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[add_order_item] 
   @orderId=5
  ,@itemId=2
  ,@productId=9
  ,@quantity=78.90
  ,@price=89.9
GO

----------------------------------------------------------------------------------------------
--ADD ORDER ITEM WITH INVALID ORDER ID
----------------------------------------------------------------------------------------------
USE [Test2]
GO

DECLARE @RC int
DECLARE @orderId int
DECLARE @itemId int
DECLARE @productId int
DECLARE @quantity decimal(8,2)
DECLARE @price decimal(8,2)

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[add_order_item] 
   @orderId=3
  ,@itemId=2
  ,@productId=1
  ,@quantity=689
  ,@price=34.9
GO
----------------------------------------------------------------------------------------------

















