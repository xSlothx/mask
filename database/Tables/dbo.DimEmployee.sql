SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimEmployee] (
		[EmployeeKey]               [int] IDENTITY(1, 1) NOT NULL,
		[ParentEmployeeKey]         [int] NULL,
		[FirstName]                 [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[LastName]                  [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[MiddleName]                [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Title]                     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[HireDate]                  [date] NULL,
		[BirthDate]                 [date] NULL,
		[EmailAddress]              [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Phone]                     [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[MaritalStatus]             [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[EmergencyContactName]      [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[EmergencyContactPhone]     [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SalariedFlag]              [bit] NULL,
		[Gender]                    [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[PayFrequency]              [tinyint] NULL,
		[BaseRate]                  [money] NULL,
		[VacationHours]             [smallint] NULL,
		[CurrentFlag]               [bit] NOT NULL,
		[SalesPersonFlag]           [bit] NOT NULL,
		[DepartmentName]            [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[StartDate]                 [date] NULL,
		[EndDate]                   [date] NULL,
		[Status]                    [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ETLLoadID]                 [int] NULL,
		[LoadDate]                  [datetime] NULL,
		[UpdateDate]                [datetime] NULL
)
GO
ALTER TABLE [dbo].[DimEmployee] SET (LOCK_ESCALATION = TABLE)
GO
