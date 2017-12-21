USE [CMS]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [EMPLOYEE] (
[ID] INT IDENTITY(1,1) NOT NULL,
[FILE_NUMBER] INT NOT NULL,
[NAME] NVARCHAR(50),
[NATIONAL_ID] NVARCHAR(14),
[DATE_HIRED] DATE,
[DEPARTMENT] NVARCHAR (50),
[INSURANCE_NUMBER] INT,
CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED(
[ID] ASC
)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
)ON [PRIMARY]

