SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Generator] (
		[$_Id]            [bigint] NOT NULL,
		[Description]     [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Message]         [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Generator] SET (LOCK_ESCALATION = TABLE)
GO
