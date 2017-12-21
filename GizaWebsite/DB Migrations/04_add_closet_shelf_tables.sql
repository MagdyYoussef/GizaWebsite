﻿
USE [CMS]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [CLOSET](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME_EN] [nvarchar](150) NULL,
	[NAME_AR] [nvarchar](150) NULL,
 CONSTRAINT [PK_CLOSET] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [SHELF](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME_EN] [nvarchar](150) NULL,
	[NAME_AR] [nvarchar](150) NULL,
 CONSTRAINT [PK_SHELF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE CORRESPONDENCE_IN
ALTER COLUMN SHELF int

ALTER TABLE CORRESPONDENCE_IN
ALTER COLUMN CLOSET int

EXEC sp_RENAME 'CORRESPONDENCE_IN.SHELF', 'SHELF_ID', 'COLUMN'

EXEC sp_RENAME 'CORRESPONDENCE_IN.CLOSET', 'CLOSET_ID', 'COLUMN'


ALTER TABLE [CORRESPONDENCE_IN]  WITH CHECK ADD  CONSTRAINT [FK_CORRESPONDENCE_SHELF] FOREIGN KEY([SHELF_ID])
REFERENCES [SHELF] ([ID])
GO
ALTER TABLE [CORRESPONDENCE_IN] CHECK CONSTRAINT [FK_CORRESPONDENCE_SHELF]
GO

ALTER TABLE [CORRESPONDENCE_IN]  WITH CHECK ADD  CONSTRAINT [FK_CORRESPONDENCE_CLOSET] FOREIGN KEY([CLOSET_ID])
REFERENCES [CLOSET] ([ID])
GO
ALTER TABLE [CORRESPONDENCE_IN] CHECK CONSTRAINT [FK_CORRESPONDENCE_CLOSET]
GO