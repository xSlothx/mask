SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeFinance_bak] (
		[EmployeeKey]      [int] IDENTITY(1, 1) NOT NULL,
		[FirstName]        [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[LastName]         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[MiddleName]       [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BirthDate]        [date] NULL,
		[EmailAddress]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SSN]              [nvarchar](11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CreditScore]      [int] NULL
)
GO
ALTER TABLE [dbo].[EmployeeFinance_bak] SET (LOCK_ESCALATION = TABLE)
GO
