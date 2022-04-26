SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeFinance] (
		[EmployeeKey]      [int] IDENTITY(1, 1) NOT NULL,
		[FirstName]        [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[LastName]         [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[MiddleName]       [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BirthDate]        [date] NULL,
		[EmailAddress]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SSN]              [nvarchar](11) COLLATE SQL_Latin1_General_CP1_CI_AS MASKED WITH (FUNCTION = 'default()') NULL,
		[CreditScore]      [int] NULL,
		[c_credit_lim]     [int] NULL,
		CONSTRAINT [PK__Employee__8749E50A113055CB]
		PRIMARY KEY
		CLUSTERED
		([EmployeeKey])
	WITH FILLFACTOR=100
	ON [PRIMARY]
)
GO
GRANT SELECT
	ON [dbo].[EmployeeFinance]
	TO [peon]
GO
GRANT SELECT
	ON [dbo].[EmployeeFinance]
	TO [mathew]
GO
ALTER TABLE [dbo].[EmployeeFinance] SET (LOCK_ESCALATION = TABLE)
GO
